import 'package:flutter/material.dart';
// import 'package:interview_app/presentation/pages/comment_screen.dart';
// import 'package:interview_app/presentation/pages/final_screen.dart';

// import '../../pages/third_screen.dart';

class BottomActionBar extends StatelessWidget {
  
  final String leftActionButton;
  final String rightActionButton;
  final IconData icon;
  final List action;

  BottomActionBar(this.leftActionButton, this.rightActionButton, this.icon, this.action);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 10, 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                if(leftActionButton == 'GO BACK') {
                  Navigator.pop(context);
                }
                else if(leftActionButton == 'ADD COMMENT') {
                  // Navigator.push(
                  //   context, 
                  //   MaterialPageRoute(
                  //     builder: (context) => const CommentScreen(),
                  //   )
                  // );
                }
                else{
                  Navigator.pop(context);
                }
              },
              child: Text(
                leftActionButton,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            // const SizedBox(width: 200),
            action.isEmpty
            ? FloatingActionButton.extended(
              backgroundColor: const Color.fromARGB(255, 190, 190, 190),
              onPressed: null,
              label: Row(
                children: [
                  Text(rightActionButton, style: const TextStyle(fontSize: 15),),
                  const SizedBox(width: 5),
                  Icon(icon),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            )
            : FloatingActionButton.extended(
              onPressed: () {
                if(rightActionButton == 'NEXT') {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: ((context) => const ThirdScreen()),
                  //   ),
                  // );
                }
                else{
                  // Navigator.push(
                  //   context, 
                  //   MaterialPageRoute(
                  //     builder: (context) => const FinalScreen(),
                  //   )
                  // );
                }
              },
              label: Row(
                children: [
                  Text(rightActionButton, style: const TextStyle(fontSize: 15),),
                  const SizedBox(width: 5),
                  Icon(icon)
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}