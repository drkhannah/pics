import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.images.length,
        itemBuilder: (BuildContext context, int index) =>
            buildImage(this.images[index]));
  }

  Widget buildImage(ImageModel image) {
    return Container(
      padding: EdgeInsets.all(10.00),
      margin: EdgeInsets.all(10.00),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: <Widget>[
          Image.network(image.url),
          Padding(
            padding: EdgeInsets.only(top: 10.00),
            child: Text(image.title),
          )
        ],
      ),
    );
  }
}
