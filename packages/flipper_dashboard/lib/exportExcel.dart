import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:io';
import 'package:flipper_models/view_models/mixins/riverpod_states.dart';
import 'package:flipper_services/proxy.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' as excel;
import 'package:path/path.dart' as p;
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_datagrid_export/export.dart';

import 'package:permission_handler/permission_handler.dart' as permission;

mixin BaseCoreWidgetMixin<T extends ConsumerStatefulWidget>
    on ConsumerState<T> {
  final GlobalKey<SfDataGridState> workBookKey = GlobalKey<SfDataGridState>();

  Future<void> exportDataGridToExcel({
    DateTime? startDate,
    DateTime? endDate,
    double? grossProfit,
    double? netProfit,
  }) async {
    try {
      ref.read(isProcessingProvider.notifier).startProcessing();

      final business = await ProxyService.local.getBusiness();
      final tinNumber = business.tinNumber ?? 0;
      final bhfId = ProxyService.box.bhfId() ?? "00";
      final drawer = await ProxyService.realm
          .getDrawer(cashierId: ProxyService.box.getBusinessId()!);

      final excel.Workbook workbook =
          workBookKey.currentState!.exportToExcelWorkbook();
      final excel.Worksheet sheet = workbook.worksheets[0];

      // Get the number of columns in the data
      final int columnCount = sheet.getLastColumn();

      // Define styles
      final excel.Style headerStyle = _createStyle(workbook,
          fontColor: '#FFFFFF', backColor: '#4472C4', fontSize: 14);
      final excel.Style infoStyle = _createStyle(workbook,
          fontColor: '#000000', backColor: '#E7E6E6', fontSize: 12);
      final excel.Style balanceStyle = _createStyle(workbook,
          fontColor: '#FFFFFF', backColor: '#70AD47', fontSize: 12);

      // Add header and information rows at the top
      _addHeaderAndInfoRows(
          sheet,
          headerStyle,
          infoStyle,
          tinNumber,
          bhfId,
          startDate,
          endDate,
          drawer?.openingBalance,
          grossProfit,
          netProfit,
          columnCount);

      // Add closing balance row at the bottom
      _addClosingBalanceRow(sheet, balanceStyle, columnCount);

      // Auto-fit columns
      for (int i = 1; i <= columnCount; i++) {
        sheet.autoFitColumn(i);
      }

      // Save and share the file
      final String filePath = await _saveExcelFile(workbook);
      workbook.dispose();

      ref.read(isProcessingProvider.notifier).stopProcessing();
      shareFileAsAttachment(filePath);
    } catch (e, s) {
      ref.read(isProcessingProvider.notifier).stopProcessing();
      talker.error(e);
      talker.error(s);
    }
  }

  int _styleCounter = 0;

  excel.Style _createStyle(excel.Workbook workbook,
      {required String fontColor,
      required String backColor,
      required double fontSize}) {
    final styleName = 'customStyle${_styleCounter++}';
    final style = workbook.styles.add(styleName);
    style.fontName = 'Calibri';
    style.bold = true;
    style.fontSize = fontSize;
    style.fontColor = fontColor;
    style.backColor = backColor;
    style.hAlign = excel.HAlignType.center;
    style.vAlign = excel.VAlignType.center;
    return style;
  }

  void _addHeaderAndInfoRows(
      excel.Worksheet sheet,
      excel.Style headerStyle,
      excel.Style infoStyle,
      int tinNumber,
      String bhfId,
      DateTime? startDate,
      DateTime? endDate,
      double? openingBalance,
      double? grossProfit,
      double? netProfit,
      int columnCount) {
    // Add title
    sheet.insertRow(1);
    final titleRange =
        sheet.getRangeByName('A1:${String.fromCharCode(64 + columnCount)}1');
    titleRange.merge();
    titleRange.setText('Sales Report');
    titleRange.cellStyle = headerStyle;

    // Add information rows
    final infoData = [
      ['TIN Number', tinNumber],
      ['BHF ID', bhfId],
      ['Start Date', startDate?.toIso8601String() ?? "-"],
      ['End Date', endDate?.toIso8601String() ?? "-"],
      ['Opening Balance', openingBalance ?? 0],
      ['Gross Profit', grossProfit ?? 0],
      ['Net Profit', netProfit ?? 0],
    ];

    for (var i = 0; i < infoData.length; i++) {
      final rowIndex = i + 2;
      sheet.insertRow(rowIndex);
      sheet.getRangeByName('A$rowIndex').setText(infoData[i][0].toString());
      sheet.getRangeByName('B$rowIndex').setValue(infoData[i][1]);
      final infoRange = sheet.getRangeByName(
          'A$rowIndex:${String.fromCharCode(64 + columnCount)}$rowIndex');
      infoRange.cellStyle = infoStyle;
    }

    // Add an empty row for spacing
    sheet.insertRow(infoData.length + 2);
  }

  void _addClosingBalanceRow(
      excel.Worksheet sheet, excel.Style style, int columnCount) {
    final firstDataRow = _getFirstDataRow(sheet);
    final lastDataRow = sheet.getLastRow();
    final closingBalanceRow = lastDataRow + 1;

    sheet.insertRow(closingBalanceRow);

    // Set "Closing Balance" text in the first column
    sheet.getRangeByName('A$closingBalanceRow').setText('Closing Balance');
    sheet.getRangeByName('A$closingBalanceRow').cellStyle = style;

    // Set the formula for the closing balance in the last column
    final lastColumnLetter = String.fromCharCode(64 + columnCount);
    final closingBalanceCell =
        sheet.getRangeByName('$lastColumnLetter$closingBalanceRow');
    closingBalanceCell.setFormula(
        '=SUM($lastColumnLetter$firstDataRow:$lastColumnLetter$lastDataRow)');
    closingBalanceCell.cellStyle = style;

    // Apply style to the entire row
    sheet
        .getRangeByName(
            'A$closingBalanceRow:$lastColumnLetter$closingBalanceRow')
        .cellStyle = style;
  }

  int _getFirstDataRow(excel.Worksheet sheet) {
    // Assuming there's always at least one row of data after the header and info rows
    // Adjust this logic if your sheet structure is different
    for (int i = 1; i <= sheet.getLastRow(); i++) {
      if (sheet.getRangeByName('A$i').getText() == '') {
        return i + 1; // Return the row after the empty row
      }
    }
    return 2; // Fallback if structure is different
  }

  Future<String> _saveExcelFile(excel.Workbook workbook) async {
    final List<int> bytes = workbook.saveAsStream();
    final formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    final Directory tempDir = await getApplicationDocumentsDirectory();
    final String filePath = '${tempDir.path}/${formattedDate}-Report.xlsx';
    final File file = File(filePath);
    await file.writeAsBytes(bytes);
    return filePath;
  }

  Future<void> shareFileAsAttachment(String filePath) async {
    final now = DateTime.now();
    final formattedDate = DateFormat('yyyy-MM-dd').format(now);
    final file = File(filePath);
    final fileName = p.basename(file.path);

    if (Platform.isWindows || Platform.isLinux) {
      final bytes = await file.readAsBytes();
      final mimeType = _lookupMimeType(filePath);
      await Share.shareXFiles(
        [XFile.fromData(bytes, mimeType: mimeType, name: fileName)],
        subject: 'Report Download - $formattedDate',
      );
    } else {
      await Share.shareXFiles(
        [XFile(filePath)],
        subject: 'Report Download - $formattedDate',
      );
    }
  }

  String _lookupMimeType(String filePath) {
    final mimeType = _mimeTypes[filePath.split('.').last];
    return mimeType ?? 'application/octet-stream';
  }

  Future<void> requestPermissions() async {
    await [
      permission.Permission.storage,
      permission.Permission.manageExternalStorage,
    ].request();

    if (await permission.Permission.notification.isDenied) {
      await permission.Permission.notification.request();
    }
  }

  final _mimeTypes = {
    'xls': 'application/vnd.ms-excel',
    'xlsx': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
  };
}
