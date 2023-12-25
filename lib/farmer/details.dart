import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Products(),));
// }
List<Map<String,dynamic>> product = [
  {
    "id":1,
    "name":"Ladies Finger",
    "image": "https://farmersfz.com/assets/public/vegimg/ladisfing1.jpg",
    "gm" :"",
    "price":30.6,
    "sprice":38,
    "off" : "19% OFF",
    "weight":"0.30 Kg",
  },
  {
    "id":2,
    "name":"Pineapple-Semi Ripe",
    "image":"https://farmersfz.com/assets/public/vegimg/PNP51.jpg",
    "gm":"800 gm - 1.5 kg",
    "price":109,
    "sprice":119,
    "off" : "",
    "weight":"1.00\n\nNOS",
  },
  {
    "id":3,
    "name":"Salad Cucumber",
    "image":"https://farmersfz.com/assets/public/vegimg/saladcucu1.jpg",
    "gm":"",
    "price":32,
    "sprice":41,
    "off" : "23% OFF",
    "weight":"0.50Kg",
  },
  {
    "id":4,
    "name":"Kiwi(3 Nos)",
    "image":"https://farmersfz.com/assets/public/vegimg/KIWI4.jpg",
    "gm":"",
    "price":162,
    "sprice":488,
    "off" : "",
    "weight":"1.00 Box",
  },
  {
    "id":5,
    "name":"Cauliflower - 1 NOs",
    "image":"https://farmersfz.com/assets/public/vegimg/CULFW1.jpg",
    "gm":"(600g - 900g)",
    "price":55,
    "sprice":75,
    "off" : "27 % OFF",
    "weight":"1.00 NOS",
  },
  {
    "id":6,
    "name":"Carrot Stick Cut - 250",
    "image":"https://farmersfz.com/assets/public/vegimg/CCT1.jpg",
    "gm":"gm",
    "price":49,
    "sprice":68,
    "off" : "28 % OFF",
    "weight":"1.00 BOX",
  },
  {
    "id":7,
    "name":"Citrus - imported",
    "image":"https://farmersfz.com/assets/public/vegimg/citrus31.jpg",
    "gm":"(450gm-550gm)",
    "price":119,
    "sprice":175,
    "off" : "",
    "weight":"1.00 NOS",
  },
  {
    "id":8,
    "name":"Avocado Semi Ripe",
    "image":"https://farmersfz.com/assets/public/vegimg/AVCD_(1).jpg",
     "gm":"(550gm-650gm)",
    "price":289,
    "sprice":305,
    "off" : "",
    "weight":"1.00 NOS",
  },
  {
    "id":9,
    "name":"Green Apple - Granny Smith",
    "image":"https://farmersfz.com/assets/public/vegimg/GRNAP3_(2).jpg",
    "gm":"(450gm-550gm)",
    "price":179,
    "sprice":199,
    "off" : "",
    "weight":"1.00 NOS",
  },
  {
    "id":10,
    "name":"Sambar Cut Mini Pack",
    "image":"https://farmersfz.com/assets/public/vegimg/s3qzeznko93sutlzisb02.jpg",
    "gm":"250gm",
    "price":59,
    "sprice":69,
    "off" : "14% OFF",
    "weight":"1.00 BOX",
  },
  {
    "id":11,
    "name":"Avial Cut Family Pack",
    "image":"https://farmersfz.com/assets/public/vegimg/dl3bzfqb2epx1yzgut05_(1).jpg",
    "gm":"500gm",
    "price":89,
    "sprice":110,
    "off" : "19% OFF",
    "weight":"1.00 BOX",
  },
  {
    "id":12,
    "name":"Beans Haricot",
    "image":"https://farmersfz.com/assets/public/vegimg/beansshri.jpg",
    "gm":"275g-325g",
    "price":35,
    "sprice":58,
    "off" : "",
    "weight":"1.00 NOS",
  },
  {
    "id":13,
    "name":"Big onion",
    "image":"https://farmersfz.com/assets/public/vegimg/BGON81.jpg",
    "gm":"950gm-1050gm",
    "price":66,
    "sprice":76,
    "off" : "",
    "weight":"1.00 NOS",
  },
  {
    "id":14,
    "name":"Cabbage",
    "image": "https://farmersfz.com/assets/public/vegimg/cabb2.jpg",
    "gm":"600gm-800gm",
    "price":30,
    "sprice":37,
    "off" : "",
    "weight":"1.00 NOS",
  },
];

class Products extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: product.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: .6,
        crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,),
        itemBuilder:

            (context,index)=>
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Container(

                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1
                    )
                  ],
                  color: Colors.white


                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(product[index]["image"],),
                          fit: BoxFit.fill
                      ),

                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 8),
                      child: Text(product[index]["name"],style: const TextStyle(fontSize: 15,color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(product[index]["gm"],style: const TextStyle(fontSize: 15,color: Colors.black)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("₹${product[index]["price"]}",style: const TextStyle(color: Colors.black,fontSize: 17),),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("₹${product[index]["sprice"]}",style: const TextStyle(decoration:  TextDecoration.lineThrough,color: Colors.grey,fontSize: 17)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,),
                          child: Text(product[index]["off"],style: const TextStyle(color: Colors.red,fontSize: 15),),
                        )


                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       // crossAxisAlignment: CrossAxisAlignment.,
                        children: [
                          Text(product[index]["weight"],style: const TextStyle(fontSize: 20,color: Colors.black),),
                          MaterialButton(onPressed: (){},
                              textColor: Colors.white,
                              color: Colors.green,
                          child: const Text("ADD")
                            )
                        ],
                      ),
                    )
                  ],
                ),

              ),
            )

    );
  }
}
