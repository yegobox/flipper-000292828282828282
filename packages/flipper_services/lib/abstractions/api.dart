import 'package:flipper_models/models/business.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper_models/models/sync.dart';

abstract class Api {
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
  
  Future<Sync> authenticateWithOfflineDb({required String userId});
  Future<List<Business>>
      canStart(); //do we have business,branch sure then start
  // Future<List<Product>> products();
  // Future<List<Variation>> variations();
  // Future<List<Unit>> units();
}
