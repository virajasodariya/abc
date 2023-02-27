import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  List age = [
    "under 15",
    "16-25",
    "26-35",
    "36-45",
    "46-55",
    "56-65",
    "above 66"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                  left: 20,
                ),
                child: Icon(
                  Icons.arrow_back_sharp,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 20,
                ),
                child: Text(
                  "Let us know about your self",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "upload your image",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 100,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.50,
                            ),
                          ),
                          child: Icon(
                            Icons.person_outline,
                            size: 60,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                            top: 70,
                          ),
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.50,
                              ),
                            ),
                            child: Icon(
                              Icons.photo_camera_back,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "Gender",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.50,
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/male profile pic.png",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.50,
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/female profile pic.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Age",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                child: Row(
                  children: List.generate(
                    7,
                    (index) => MaterialButton(
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 80,
                        child: Center(
                          child: Text(
                            age[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 1,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 18,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(360, 45),
                    side: BorderSide(
                      color: Colors.indigo,
                      width: 1.50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
