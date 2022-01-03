import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  var address;
  var country;
  var img;

  ItemCard(var address, var country,var img){
    this.address = address;
    this.country = country;
    this.img = img;
  }

  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) =>
            Scaffold(
              appBar: AppBar(
                title: Text(
                  widget.country.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.white),
                ),
              ),
              body: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/"+widget.img.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.address.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),

                  ),
                ),
              ),
            )
          )
        );
      },
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.hardLight),
            image: AssetImage("assets/images/"+widget.img.toString()),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.address,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0, color: Colors.white),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 3,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              widget.country,
              style: const TextStyle( fontSize: 20.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
