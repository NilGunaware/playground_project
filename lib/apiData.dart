import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<dynamic> products = [];

  Future<void> fetchUserData() async {
    final apiUrl = 'https://lomg.in/admin/api/endpoints/crud.php?table=products&limit=10';
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        print('Response Body: ${response.body}');
          final Map<String, dynamic> decodedData = json.decode(response.body);
         final List<dynamic> data = decodedData['data'] ?? [];
        if (data.isEmpty) {
          print('Data list is empty');
        } else {
          setState(() {
            products = data;
          });
          print(products);
         }
      }
      else {
        print('Failed to load data. Status code: ${response.statusCode}');
      }
    }
    catch (error) {
      print('Error: $error');
    }
  }


  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: products.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          final id = product["id"] ?? "";
          final model = product["model"] ?? "No Model";
          final price = product["price"] ?? "No Price";
          final rating = product["rating"] ?? "No Rating";
          final color = product["color"] ?? "No color";
          final type = product["type"] ?? "No type";
          final features = product["features"] ?? "No features";
          final created_at = product["created_at"] ?? "No created_at";
          final category_id = product["category_id"] ?? "No category_id";
          final pictureUrl = product["pictureUrl"] ?? "No pictureUrl";
          final brand_id = product["brand_id"] ?? "No brand_id";

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                Container(
                  padding: EdgeInsets.only(left: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red.shade100,

                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text('ID: $id'),
                        SizedBox(height: 5,),
                        Text('Model: $model'),
                        SizedBox(height: 5,),
                        Text('Price: $price'),
                        SizedBox(height: 5,),
                        Text('Rating: $rating'),
                        SizedBox(height: 5,),
                        Text('color: $color'),
                        SizedBox(height: 5,),
                        Text('type: $type'),
                        SizedBox(height: 5,),
                        Text('features: $features'),
                        SizedBox(height: 5,),
                        Text('created_at: $created_at'),
                        SizedBox(height: 5,),
                        Text('category_id: $category_id'),
                        SizedBox(height: 5,),
                        Text('pictureUrl: $pictureUrl'),
                        SizedBox(height: 5,),
                        Text('brand_id: $brand_id'),
                        SizedBox(height: 5,),
                  ]),
                ),
                SizedBox(height: 10,)
              ],
            ),
          );

        },
      ),
    );
  }
}
