import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    print("this is initstate");
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("this is didChangeDependencies");
    // TODO: implement initState
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(oldWidget) {
    print("this is didUpdateWidget");

    super.didUpdateWidget(oldWidget);
  }
 @override
  void deactivate() {
    print("this is deactivate");
    // TODO: implement deactivate
    super.deactivate();
  }
 @override
  void dispose() {
    print("this is dispose");
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Build Called");
    return Scaffold(appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            print("this is setState");
          });
        },
      ),
    );
  }
}






// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print("Build Called");
//     return const Scaffold();
//   }
// }