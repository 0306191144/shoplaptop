/*
import 'package:flutter/material.dart';

class productSilder extends StatelessWidget {
  const productSilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 250,
              child: PageView.builder(
                onPageChanged: (index) {
                  
                },
                itemBuilder: (BuildContext context, index) => Image.network(
                  widget.images[index],
                  fit: BoxFit.cover,
                ),
                itemCount: widget.images.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}

*/