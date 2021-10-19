import 'package:flutter/material.dart';
import 'package:responsivapp/widgets/impressum_screen.dart';
import 'package:responsivapp/widgets/responsiv_widget.dart';

class SlideUpWidget extends StatefulWidget {
  SlideUpWidget({Key? key, required this.Bool}) : super(key: key);
  bool Bool;
  @override
  _SlideUpWidgetState createState() => _SlideUpWidgetState();
}

class _SlideUpWidgetState extends State<SlideUpWidget> {
  bool Bool = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  ' Datenschutzverordnung',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  width: 1,
                  color: Colors.black,
                ))),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(
                    data300,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'agree',
                    style: TextStyle(color: Colors.black),
                  ),
                  Checkbox(
                    value: SlideUpWidget(
                      Bool: Bool,
                    ).Bool,
                    onChanged: (_) {
                      if (Bool == false) {
                        setState(() {
                          Bool = true;
                        });
                      } else {
                        setState(() {
                          Bool = false;
                        });
                      }
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
