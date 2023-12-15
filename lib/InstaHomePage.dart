import 'package:flutter/material.dart';
import 'package:instafeed/pages/profile.dart';
import 'package:instafeed/pages/todo.dart';

class homepage3 extends StatelessWidget {
  const homepage3({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 255, 198, 168),
      body: Column(
        children: [
          SizedBox(height: 0.00 * screenWidth),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(248, 219, 176, 152),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.05 * screenWidth),
                bottomRight: Radius.circular(0.05 * screenWidth),
              ),
            ),
            height: 0.21 * screenWidth,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: false,
              child: Row(
                children: List.generate(
                  40,
                  (index) {
                    return Container(
                      padding: EdgeInsets.fromLTRB(
                          0.02 * screenWidth,
                          0.0 * screenWidth,
                          0.0 * screenWidth,
                          0.0 * screenWidth),
                      width: 0.14 * screenWidth,
                      height: 0.12 * screenWidth,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.14 * screenWidth),
                        child: Image.network(
                          'https://thumbs.dreamstime.com/b/unknown-male-avatar-profile-image-businessman-vector-unknown-male-avatar-profile-image-businessman-vector-profile-179373829.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                //    addAutomaticKeepAlives: false,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0.03 * screenWidth, 0, 0, 0),
                                          child: ClipOval(
                                            child: MouseRegion(
                                              cursor: SystemMouseCursors.click,
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/homepage2');
                                                },
                                                child: Image.network(
                                                  'https://thumbs.dreamstime.com/b/unknown-male-avatar-profile-image-businessman-vector-unknown-male-avatar-profile-image-businessman-vector-profile-179373829.jpg',
                                                  fit: BoxFit.cover,
                                                  // height: 0.1 * screenWidth,
                                                  // width: 0.012 * screenWidth,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0.02 * screenWidth, 0, 0, 0),
                                          child: Text(
                                            'Ronyboay',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 0.03 * screenWidth, 0),
                                          child: IconButton(
                                            icon: Icon(Icons.menu_sharp),
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, '/homepage4');
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 0.02 * screenWidth),
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        0.025 * screenWidth),
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCKsVPaJg0BYNy5SPvooMBC0Q51HuaHxcYicl4vtBe8OnUebS-ELbouiMkKNeuMh6NBDU&usqp=CAU',
                                      height: 1.2 * screenWidth,
                                      width: 0.95 * screenWidth,
                                      fit: BoxFit.cover,
                                      scale: 1.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.025 * screenWidth,
                                          0.02 * screenWidth,
                                          0,
                                          0),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.thumb_up_alt_outlined),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.0 * screenWidth,
                                          0.02 * screenWidth,
                                          0,
                                          0),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.comment_outlined),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.0 * screenWidth,
                                          0.02 * screenWidth,
                                          0,
                                          0),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.share_outlined),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.02 * screenWidth, 0, 0, 0),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.thumb_up,
                                          size: 0.03 * screenWidth,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text('256,433M likes'),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0, 0.02 * screenWidth, 0, 0),
                                  child: Divider(
                                    color: Colors
                                        .black, // Customize the color of the line
                                    thickness:
                                        0.12, // Customize the thickness of the line
                                    indent:
                                        30, // Adjust the start indent of the line
                                    endIndent:
                                        30, // Adjust the end indent of the line
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                0, 0.005 * screenWidth, 0, 0.005 * screenWidth),
            decoration: BoxDecoration(
              color: Color.fromARGB(248, 219, 176, 152),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.05 * screenWidth),
                topRight: Radius.circular(0.05 * screenWidth),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0.025 * screenWidth, 0.02 * screenWidth, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/TodoTask');
                      },
                      icon: Icon(Icons.task_alt_outlined,
                          size: 0.06 * screenWidth),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0.05 * screenWidth, 0.02 * screenWidth, 0, 0),
                    child: Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumbs_up_down_outlined,
                              size: 0.06 * screenWidth),
                        ),
                        Positioned(
                          right: 0.04 * screenWidth,
                          top: -0.011 * screenWidth,
                          child: Container(
                            padding: EdgeInsets.all(0.01 * screenWidth),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '9', // Change this to your desired number
                              style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0.0 * screenWidth, 0.02 * screenWidth, 0, 0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo_outlined,
                          size: 0.06 * screenWidth),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0.0 * screenWidth, 0.02 * screenWidth, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/MyProfile');
                      },
                      icon: Icon(Icons.person_2_outlined,
                          size: 0.06 * screenWidth),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0.035 * screenWidth, 0.02 * screenWidth, 0, 0),
                    child: Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings_outlined,
                            size: 0.06 * screenWidth,
                          ),
                        ),
                        Positioned(
                          right: 0.06 * screenWidth,
                          top: -0.011 * screenWidth,
                          child: Container(
                            padding: EdgeInsets.all(0.01 * screenWidth),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '5', // Change this to your desired number
                              style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
