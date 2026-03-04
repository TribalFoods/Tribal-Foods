import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> _cartItems = [
    {'name': 'Product A', 'price': 10.0, 'quantity': 1},
    {'name': 'Product B', 'price': 15.0, 'quantity': 2},
  ];
  String? _couponCode;
  double _discount = 0;

  void _updateQuantity(int index, int quantity) {
    setState(() {
      _cartItems[index]['quantity'] = quantity;
    });
  }

  void _applyCoupon(String code) {
    setState(() {
      if (code == 'SAVE10') {
        _discount = 10;
      } else {
        _discount = 0;
      }
      _couponCode = code;
    });
  }

  double get _totalPrice {
    double total = _cartItems.fold(0, (sum, item) => sum + (item['price'] * item['quantity']));
    return total - _discount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart'), backgroundColor: Color(0xFF00843D)),
      body: _cartItems.isEmpty
          ? Center(child: Text('Your cart is empty', style: TextStyle(fontSize: 20)))
          : Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: _cartItems.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(_cartItems[index]['name']),
                          subtitle: Text('Price: \\$${_cartItems[index]['price']} x ${_cartItems[index]['quantity']}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () => _updateQuantity(index, _cartItems[index]['quantity'] > 1 ? _cartItems[index]['quantity'] - 1 : 1),
                              ),
                              Text('${_cartItems[index]['quantity']}'),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () => _updateQuantity(index, _cartItems[index]['quantity'] + 1),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter coupon code',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () => _applyCoupon(_couponCode ?? ''),
                      ),
                    ),
                    onChanged: (value) => _couponCode = value,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Total: \\$${_totalPrice.toStringAsFixed(2)}', style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add checkout logic here
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Proceeding to checkout')));
                  },
                  child: Text('Checkout'),
                  style: ElevatedButton.styleFrom(primary: Color(0xFF00843D)),
                ),
              ],
            ),
    );
  }
}