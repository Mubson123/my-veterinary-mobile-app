import 'package:flutter/material.dart';
import '/utils/form_builder_name.dart';


class AboButton extends StatefulWidget {
  const AboButton({Key? key, required this.color, required this.width}) : super(key: key);
  final Color color;
  final double width;

  @override
  State<AboButton> createState() => _AboButtonState();
}

class _AboButtonState extends State<AboButton> {
  var isAbo = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width / 4.5,
      child: MaterialButton(
        height: 40,
        minWidth: 20,
        textColor: Theme.of(context).primaryColor,
        color: isAbo ? Theme.of(context).backgroundColor : widget.color,
        disabledColor: Colors.grey,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {
          setState(() {
            isAbo = !isAbo;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(AppUtilsName.abo, textAlign: TextAlign.center,),
            isAbo ? const Icon(Icons.check_sharp) : const Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}
