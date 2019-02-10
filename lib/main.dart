import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title:'导航演示1',
    home:FatherScreen(
      products: List.generate(100,(i)=> Product('$i','商品 $i','$i的商品详情'))
    )
  ));
}

class Product {
  final String title; //商品标题
  final String description; //商品描述
  final String id; //商品唯一id
  Product(this.id ,this.title, this.description);
}

class FatherScreen extends StatelessWidget{
  final List<Product> products;
  FatherScreen({
    Key key,
    @required this.products
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品列表')),
      body:ListView.builder(
        itemCount: products.length,
        itemBuilder:(context, index){
          return ListTile(
            title: Text(products[index].title),
            onTap:(){
              _navigateToChild(context,products[index]);
            }
          );
        }
      )
    );
  }
  _navigateToChild(BuildContext context,@required dynamic products) async{
    final result = await Navigator.push(context, MaterialPageRoute(
      builder: (context) => ChildScreen(product:products)
    ));
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$result')
    ));
  }
}

class  ChildScreen extends StatelessWidget {
  final Product product;
  ChildScreen({
    Key key,
    @required this.product
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:AppBar(
        title:Text('${product.title}'),
        ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Text('${product.description}'),
         Center(
           child:RaisedButton(
              child:Text(
                '点击跳转到首页'
              ),
              onPressed:(){
                Navigator.pop(context,'当前返回的页面id是:${product.id}');
              }
            )
         ),
        ],
      )
    );
  }
}