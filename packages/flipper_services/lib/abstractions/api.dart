import 'package:flipper_models/models/business.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper_models/models/product.dart';
import 'package:flipper_models/models/branch.dart';
import 'package:flipper_models/models/stock.dart';
import 'package:flipper_models/models/sync.dart';

abstract class Api<T> {
  Future payroll();
  // List<Order> currentOrders();
  // List<Ticket> currentTickets();
  // List<Customer> customers();
  // List<PColor> colors();
  // Customer create({Map customer, String id});
  void listenOrder();
  void listenColor();
  void listenCategory();
  void cleanKeyPad();
  Future<Login> login({required String phone});
  Future<List<Product>> products();
  Future<int> signup({required Map business});
  Future<Sync> authenticateWithOfflineDb({required String userId});
  //do we have business,branch sure then start
  Future<List<Business>> businesses();
  Future<List<Branch>> branches({required String businessId});

  Future<List<Stock>> stocks({required String productId});
  // Future<List<Variation>> variations();
  // Future<List<Unit>> units();
  Future<int> create<T>({T data, required String endPoint});
  Future<bool> logOut();
  // Future<T> delete(T data);
  // Future<T> update(T data);
}
