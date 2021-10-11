import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text('annpinchuk'),
            actions: const [
              Padding(
                padding: EdgeInsets.all(7.0),
                child: Icon(Icons.add_box_outlined),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(7, 7, 20, 7),
                child: Icon(Icons.menu),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/foto1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Text('125',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20)),
                                Text('Posts')
                              ],
                            ),
                            Column(
                              children: const [
                                Text('235',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20)),
                                Text('Followers')
                              ],
                            ),
                            Column(
                              children: const [
                                Text('112',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20)),
                                Text('Following')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: ProfileDescription(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text('Edit profile'),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: const [
                      ProfileButton(name: 'Promotions'),
                      ProfileButton(name: 'Insights'),
                      ProfileButton(name: 'Email'),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    children: const [
                      StoryWidget(image: 'images/foto2.jpg', storyName: 'kyiv'),
                      StoryWidget(image: 'images/foto3.jpg', storyName: 'moments'),
                    ],
                  ),
                ),
                TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.grid_on),
                  ),
                  Tab(
                    icon: Icon(Icons.portrait_outlined),
                  )
                ]),
                // Expanded(child: TabBarView(
                //   children: [
                //     Center(child: Text('Tagged photos'),),
                //   ],
                // ))
                Column(children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/foto1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/foto1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/foto1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ])
              ],
            ),
          )),
    );
  }
}

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 4.0),
          child: Text(
            'Anya Pinchuk',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          'Personal blog',
          style: TextStyle(color: Colors.grey),
        ),
        const Text(
          'Student of NTUU KPI',
        ),
        Text(
          'annpinchuk.com',
          style: TextStyle(color: Colors.cyan[50]),
        ),
        const Text(
          'view translation',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class StoryWidget extends StatelessWidget {
  final String image;
  final String storyName;

  const StoryWidget({
    Key? key,
    required this.image,
    required this.storyName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 10),
          Text(storyName),
        ],
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  final String name;

  const ProfileButton({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: OutlinedButton(
          onPressed: () {},
          child: Text(name),
        ),
      ),
    );
  }
}
