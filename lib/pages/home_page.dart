import 'package:e_commerce/model/product_model.dart';
import 'package:e_commerce/pages/product_page.dart';
import 'package:e_commerce/widget/footer.dart';
import 'package:e_commerce/widget/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
        id: '1',
        name: 'Vertical Striped Shirt',
        imageUrl: 'https://via.placeholder.com/150',
        price: 212,
        oldPrice: 235,
        rating: 4.5,
        reviewsCount: 99,
      ),
      Product(
        id: '2',
        name: 'Courage Graphic T-shirt',
        imageUrl: 'https://via.placeholder.com/150',
        price: 145,
        oldPrice: 0,
        rating: 4.6,
        reviewsCount: 120,
      ),
      Product(
        id: '3',
        name: 'Vertical Striped Shirt',
        imageUrl: 'https://via.placeholder.com/150',
        price: 212,
        oldPrice: 235,
        rating: 4.5,
        reviewsCount: 99,
      ),
      Product(
        id: '4',
        name: 'Courage Graphic T-shirt',
        imageUrl: 'https://via.placeholder.com/150',
        price: 145,
        oldPrice: 0,
        rating: 4.6,
        reviewsCount: 120,
      ),
      Product(
        id: '5',
        name: 'Vertical Striped Shirt',
        imageUrl: 'https://via.placeholder.com/150',
        price: 212,
        oldPrice: 235,
        rating: 4.5,
        reviewsCount: 99,
      ),
      Product(
        id: '6',
        name: 'Courage Graphic T-shirt',
        imageUrl: 'https://via.placeholder.com/150',
        price: 145,
        oldPrice: 0,
        rating: 4.6,
        reviewsCount: 120,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {  },
            icon: const Icon(Icons.search)
            ),
          const SizedBox(width: 8,),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined), 
            onPressed: () {  },),
          const SizedBox(width: 8,),
          IconButton(
            icon: const Icon(Icons.supervised_user_circle), 
            onPressed: () {  },),
          const SizedBox(width: 8,),],
        leading: IconButton(
          icon: const Icon(Icons.menu), 
          onPressed: () {  },
          ),
        
        title: const Text('SHOP.CO', 
          style: TextStyle(fontWeight: FontWeight.bold), ),
        centerTitle: true,
        elevation: 0,
        surfaceTintColor: null,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const Text(
                  'FIND CLOTHES THAT MATCH YOUR STYLE',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text("Browse through our diverse range of meticulously crafted garments, designed to bring out your individuality and cater to your sense of style."),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {},
                  child: const Text('Shop Now', style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 20),
                Column(children: [
                  Row(children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('200+',style: Theme.of(context).textTheme.displayLarge),
                          const Text('International Brands'),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('2,000+',style: Theme.of(context).textTheme.displayLarge),
                          const Text('Happy Products'),
                        ],
                      ),
                    ),
                    ],),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Text('30,000+',style: Theme.of(context).textTheme.displayLarge),
                        const Text('Happy Customers'),
                      ],
                    ),],),
              ],
            ),
          ),
          const SizedBox(height: 20),
        

          Text(
            'Top Selling',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(product: products[index]),
                    ),
                  );
                },
                child: ProductCard(product: products[index]),
              );
            },
            ),
          ),
          const SizedBox(height: 20),

          Text(
            'Products',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,    
              crossAxisSpacing: 10,  
              mainAxisSpacing: 10,   
              childAspectRatio: 0.7, 
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(product: products[index]),
                    ),
                  );
                },
                child: ProductCard(product: products[index]),
              );
            },
          ),
          const Footer()
        ],
      ),
    );
  }
}
