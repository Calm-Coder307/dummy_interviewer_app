import 'package:flutter/material.dart';
import 'package:pro1/presentation/screens/second_screen.dart';

import '../widgets/main_screen_widgets/interviewer_list.dart';
import '../widgets/main_screen_widgets/search_field.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key , /*this.person*/}) : super(key: key);

  // final Interviewer? person;

  @override
  Widget build(BuildContext context) {
    
  // TextEditingController searchController = TextEditingController();
  // List aiwehi = [];
    // List use = ['Hii', 'Bye', 'Tata'];
    // String me = 'Kaise ho';
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      // appBar: AppBar(
      //   title: const Text('Interview App'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Card(
            color: Colors.transparent,
            elevation: 0,
            child: Padding(padding: EdgeInsets.fromLTRB(15, 50, 0, 0),
              child: Text('Interviewers',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87,
              ),
            ),
          ),
          // const SizedBox(height: 15,),
          
          ),
          Card(
            color: Colors.transparent,
            elevation: 0,
            child: SearchField()//searchController, aiwehi),
          ),

          const SizedBox(
            width: double.infinity,
            // height: 20,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('ADDED'),
              ),
            ),
          ),
          
          const Expanded(
            child: Card(
              elevation: 0,
              color: Colors.transparent,
              child: 
              Interviewerlist()
              // Listview(),//searchController, aiwehi, person),
            ),
          ),
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ),
                  );
                },
                label: Row(
                  children: const [
                    Text('NEXT', style: TextStyle(fontSize: 15),),
                    SizedBox(width: 5),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          ),
        ]
      ),
      // floatingActionButton: 
      // FutureBuilder<List<Interviewer>> (
      //   future: DBHelper.readUsers(),
      //   builder: (context, AsyncSnapshot<List<Interviewer>>snapshot) {
      //     if(snapshot.hasData){
      //       return 
            // FloatingActionButton.extended(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SecondScreen(),
            //       ),
            //     );
            //   },
            //   // child: const Text('NEXT →'),
            //   elevation: 50,
            //   label: Row(
            //     children: const [
            //       Text('NEXT', style: TextStyle(fontSize: 15),),
            //       SizedBox(width: 5),
            //       Icon(Icons.keyboard_arrow_right)
            //     ],
            //   ),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10)
            //   ),
            // )


          // }
          // return FloatingActionButton.extended(
          //   onPressed: null,
          //   // child: const Text('NEXT →'),
          //   elevation: 50,
          //   focusColor: Colors.grey,
          //   label: Row(
          //     children: const [
          //       Text('NEXT', style: TextStyle(fontSize: 15),),
          //       SizedBox(width: 5),
          //       Icon(Icons.keyboard_arrow_right)
          //     ],
          //   ),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(10)
          //   ),
          // );
        // },
      // );
      // person == null
      // ? FloatingActionButton.extended(
      //   onPressed: null,
      //   // child: const Text('NEXT →'),
      //   elevation: 50,
      //   focusColor: Colors.grey,
      //   label: Row(
      //     children: const [
      //       Text('NEXT'),
      //       SizedBox(width: 5),
      //       Icon(Icons.keyboard_arrow_right)
      //     ],
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10)
      //   ),
      // )
      // : 
      
      
      // FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => const SecondScreen(),
      //       ),
      //     );
      //   },
      //   // child: const Text('NEXT →'),
      //   elevation: 50,
      //   label: Row(
      //     children: const [
      //       Text('NEXT', style: TextStyle(fontSize: 15),),
      //       SizedBox(width: 5),
      //       Icon(Icons.keyboard_arrow_right)
      //     ],
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10)
      //   ),
      // ),
    );
  }
}