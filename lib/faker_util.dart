import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DummyContainer extends StatelessWidget {
  final double width, height;
  const DummyContainer({Key key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey,
    );
  }
}

final Faker faker = Faker();

dummyText([int sentences = 10]) {
  var sentence = '';
  faker.lorem.sentences(sentences).forEach((element) {
    sentence += element;
  });
  return sentence;
}
