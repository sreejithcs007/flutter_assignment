import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: CusR(),));
}
List<Map<String, dynamic>> reviews = [
{
"image":
"https://farmersfz.com/assets/public/testimonials/ceoinfopark.jpg",
"name": "Hrishikesh Nair",
"job": "CEO, Infopark",
"review":
"I am a regular customer of Farmers Fresh Zone & needless to say, I am extremely satisfied with their service & service quality! The deliveries are quick, products are fresh & I save time and effort by ordering online. The best part is, I get all of this at a really reasonable price!"
},
{
"image":
"https://farmersfz.com/assets/public/testimonials/rinishrapidvalue.jpg",
"name": "Rinish K N",
"job": "CTO, RapidValue",
"review":
"I was extremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing that sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm, it was a great experience to take a look at the beautiful farms!"
},
{
"image": "https://farmersfz.com/assets/public/testimonials/test2.jpeg",
"name": "Shalini Warrier",
"job": "Executive Director, Federal Bank",
"review":
"A friend of mine recommended Farmers Fresh Zone to me, during the first lockdown in March 2020 & I have been a regular customer ever since! You get reliable service, convenient doorstep delivery, reasonable prices & super fresh products at your fingertips with their really easy-to-use app have been recommending my friends & family to switch to a healthier lifestyle with Farmers Fresh Zone."
},
  {
    "image": "https://farmersfz.com/assets/public/testimonials/Alosious.jpg",
    "name": "Alosious C M",
    "job": "Sales manager, Techser power solution",
    "review":
    "I have been ordering fruits & vegetables from Farmers Fresh Zone for almost a year now. After ordering from FFZ 1 realized their products are very fresh & taste better too! They not only deliver fresh harvest but also provide information about the farmers, source pesticide-free products & deliver within 16 hours of harvest. Their reliable service & transparency has earned my trust! Mv family & I have been eating"
  }
];



class CusR extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        scrollDirection: Axis.horizontal,
        //shrinkWrap: true,
        slivers: [
          SliverList.builder(
            itemCount: reviews.length,
            itemBuilder: (context,index)=>
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0,left: 1,right: 1,bottom: 5),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.grey,
                          //       spreadRadius: 1,
                          //       blurRadius: 5
                          //   )
                          // ],


                        ),
                        height: 250,
                        width: 200,
                        //color: Colors.blue,
                        child:Column(
                          children: [
                            Row(
                             // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 8),
                                child: CircleAvatar(
                                  //radius: 20,
                                  backgroundImage: NetworkImage(reviews[index]["image"]),
                                ),
                              ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                    Text(reviews[index]["name"],style: const TextStyle(fontSize: 21,color: Colors.green),),
                                    Text(reviews[index]["job"],style: const TextStyle(fontSize: 15,color: Colors.grey),),
                                                        ]
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(reviews[index]["review"],style: const TextStyle(fontSize: 15,color: Colors.black),),
                            ),

                              ],

                            )

                        )

                    ),
                  ),
                ),



        ]
    );
  }

}