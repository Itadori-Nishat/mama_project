// import 'package:flutter/material.dart';
//
// class HistoryScreen extends StatelessWidget {
//   const HistoryScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text(
//               "History",
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
//             ),
//             backgroundColor: Color(0xFF4DB556),
//             centerTitle: true,
//             bottom: TabBar(
//               indicatorColor: Colors.blueAccent,
//               indicatorWeight: 4,
//               labelColor: Colors.white,
//               tabs: [
//                 Tab(
//                   icon: Icon(Icons.calendar_month, color: Colors.white),
//                   text: "month",
//                 ),
//                 Tab(
//                   icon: Icon(Icons.history, color: Colors.white),
//                   text: "year",
//                 ),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(5.0),
//                   child: Column(
//                     children: [
//                       Card(
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(
//                                 'month_name',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: Container(
//                                     child: Column(
//                                       children: [
//                                         Text(
//                                           'due',
//                                           style: TextStyle(
//                                               fontSize: 24,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.red),
//                                         ),
//                                         SizedBox(
//                                           height: 10,
//                                         ),
//                                         Text(
//                                           'tk',
//                                           style: TextStyle(
//                                               fontSize: 20,
//                                               fontWeight: FontWeight.bold),
//                                         )
//                                       ],
//                                     ),
//                                     height: 80,
//                                     decoration: BoxDecoration(
//                                       // border: Border.all(),
//                                         color: Colors.red.shade50),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Container(
//                                     child: Column(
//                                       children: [
//                                         Text(
//                                           'received',
//                                           style: TextStyle(
//                                               fontSize: 24,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.green),
//                                         ),
//                                         SizedBox(
//                                           height: 10,
//                                         ),
//                                         Text(
//                                           'tk',
//                                           style: TextStyle(
//                                               fontSize: 20,
//                                               fontWeight: FontWeight.bold),
//                                         )
//                                       ],
//                                     ),
//                                     height: 80,
//                                     decoration: BoxDecoration(
//                                       // border: Border.all(),
//                                         color: Colors.green.shade50),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Container(
//                                     child: Column(
//                                       children: [
//                                         Text(
//                                           'unit_pay',
//                                           style: TextStyle(
//                                               fontSize: 20,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.orange),
//                                         ),
//                                         SizedBox(
//                                           height: 10,
//                                         ),
//                                         Row(
//                                           children: [
//                                             Text(
//                                               'gas',
//                                               style: TextStyle(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                               'tk',
//                                               style: TextStyle(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                           ],
//                                         ),
//                                         Row(
//                                           children: [
//                                             Text(
//                                               'electricity_bill',
//                                               style: TextStyle(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                               'tk',
//                                               style: TextStyle(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                     height: 80,
//                                     decoration: BoxDecoration(
//                                       // border: Border.all(),
//                                         color: Colors.orange.shade50),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Table(
//                                 columnWidths: {
//                                   0: FlexColumnWidth(4),
//                                   1: FlexColumnWidth(1),
//                                   2: FlexColumnWidth(2),
//                                   3: FlexColumnWidth(3),
//                                 },
//                                 border: TableBorder.all(),
//                                 children: [
//                                   TableRow(
//                                     children: [
//                                       Center(
//                                         child: Text(
//                                           'description',
//                                           style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                       Center(
//                                         child: Text(
//                                           'unit',
//                                           style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                       Center(
//                                         child: Text(
//                                           'amount',
//                                           style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding:
//                                         const EdgeInsets.only(left: 28),
//                                         child: Center(
//                                           child: Text(
//                                             'total_amount',
//                                             style: TextStyle(
//                                               fontSize: 20,
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   TableRow(children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Text(
//                                         'rent',
//                                         style: TextStyle(fontSize: 16),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('20')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk')),
//                                     ),
//                                   ]),
//                                   TableRow(children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Text(
//                                         'electricity_bill',
//                                         style: TextStyle(fontSize: 16),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('20')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk')),
//                                     ),
//                                   ]),
//                                   TableRow(children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Text(
//                                         'gas_bill',
//                                         style: TextStyle(fontSize: 16),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('20')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk')),
//                                     ),
//                                   ]),
//                                   TableRow(children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Text(
//                                         'service_bill',
//                                         style: TextStyle(fontSize: 16),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('20')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk')),
//                                     ),
//                                   ]),
//                                   TableRow(children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Text(
//                                         'water_bill',
//                                         style: TextStyle(fontSize: 16),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('20')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk')),
//                                     ),
//                                   ]),
//                                   TableRow(children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Text(
//                                         'lift_bill',
//                                         style: TextStyle(fontSize: 16),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('12')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk')),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(5.0),
//                                       child: Center(child: Text('tk' => null)),
//                                     ),
//                                   ]),
//                                 ]),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
