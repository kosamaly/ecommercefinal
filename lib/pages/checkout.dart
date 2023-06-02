import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../provider/cart.dart';
import '../shared/appbar.dart';
import '../shared/colors.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("checkout screen"),
        actions: const [ProductsAndPrice()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 500,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: Carttt.selectedProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          title: Text(Carttt.selectedProducts[index].name),
                          subtitle: Text(
                              "${Carttt.selectedProducts[index].price} - ${Carttt.selectedProducts[index].location}"),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                Carttt.selectedProducts[index].imgPath),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                Carttt.delete(Carttt.selectedProducts[index]);
                              },
                              icon: Icon(Icons.remove)),
                        ),
                      );
                    }),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Pay \$${Carttt.price}",
                style: TextStyle(fontSize: 10),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(BTNpink),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
