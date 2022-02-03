import 'package:flutter/material.dart';

class SetStateExample extends StatefulWidget {
  const SetStateExample({Key? key}) : super(key: key);

  @override
  _SetStateExampleState createState() => _SetStateExampleState();
}

class _SetStateExampleState extends State<SetStateExample> {
  String p = "TEZT";
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SET STATE TUTORIAL"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Text(
            p,
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 50,
          ),
          TextField(
            controller: _textEditingController,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  p = _textEditingController.text;
                });
              },
              child: const Text("CHANGE")),
          NextStateText(text: p)
        ],
      ),
    );
  }
}

class NextStateText extends StatelessWidget {
  final String text;

  const NextStateText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const  Text(
          "I am the one",
          style:  TextStyle(fontSize: 24),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 34),
        ),
        NEXTTONEXT(text: text)
      ],
    );
  }
}

class NEXTTONEXT extends StatelessWidget {
  final String text;

  const NEXTTONEXT({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 34),
    );
  }
}
