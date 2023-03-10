import 'package:flutter/material.dart';


class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final Image? icon;
  final Image? inActiveIcon;
  final Color? activeColor;
  final Color? inactiveColor ;
  final String? activeText;
  final String? inactiveText;
  final Color? activeTextColor ;
  final Color? inactiveTextColor;
  final Color? circleColor;
  final bool? chanegStatus;

  const CustomSwitch({
    Key? key,
    required this.value,
    this.icon,
    this.inActiveIcon,
    this.onChanged,
    this.activeColor,
    this.activeText,
    this.inactiveText,
    this.inactiveColor,
    this.circleColor,
    this.activeTextColor,
    this.inactiveTextColor,
    this.chanegStatus
})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  late Animation _circleAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
        begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
        end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
        parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
          // if(widget.chanegStatus!)
          //   {
               if (_animationController.isCompleted) {
                 _animationController.reverse();
               } else {
                 _animationController.forward();
               }
               widget.value == false
                   ? widget.onChanged!(true)
                   : widget.onChanged!(false);
             //}
          },
          child: Container(
            width: 180.0,
            height: 48.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color:  widget.activeColor),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 2.0, bottom: 2.0, right: 5.0, left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
           widget.value
                      ? Container(
             padding: EdgeInsets.all(8.0),
             decoration: BoxDecoration(
               color: Colors.yellow,
               borderRadius: BorderRadius.circular(25.0)
             ),
             child:widget.icon!=null?Row(
               children: [
                 widget.icon!,
                 SizedBox(width: 3.0,),
                 Text(
                   widget.activeText.toString(),
                   style: TextStyle(
                       color: widget.activeTextColor,
                       fontWeight: FontWeight.w700,
                       fontSize: 14.0),
                 ),
               ],
             ): Padding(
               padding: const EdgeInsets.only(left: 10.0, right: 10.0),
               child: Text(
                 widget.activeText.toString(),
                 style: TextStyle(
                     color: widget.activeTextColor,
                     fontWeight: FontWeight.w700,
                     fontSize: 14.0),
               ),
             ),
           )
                      :widget.icon!=null?Row(
             children: [
               widget.icon!,
               SizedBox(width: 3.0,),
               Text(
                 widget.activeText.toString(),
                 style: TextStyle(
                     color: widget.activeTextColor,
                     fontWeight: FontWeight.w700,
                     fontSize: 14.0),
               ),
             ],
           ):  Padding(
             padding: const EdgeInsets.only(left: 10.0, right: 10.0),
             child: Text(
               widget.activeText.toString(),
               style: TextStyle(
                   color: widget.inactiveColor,
                   fontWeight: FontWeight.w700,
                   fontSize: 15.0),
             ),
           ),
               
                  !widget.value
                      ? Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(25.0)
                    ),
                    child:widget.inActiveIcon!=null?Row(
                      children: [
                        widget.inActiveIcon!,
                        SizedBox(width: 3.0,),
                        Text(
                          widget.inactiveText.toString(),
                          style: TextStyle(
                              color: widget.inactiveTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                      ],
                    ):Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        widget.inactiveText.toString(),
                        style: TextStyle(
                            color: widget.inactiveTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0),
                      ),
                    )
                  )
                      :widget.inActiveIcon!=null?Row(
                    children: [
                      widget.inActiveIcon!,
                      SizedBox(width: 3.0,),
                      Text(
                        widget.inactiveText.toString(),
                        style: TextStyle(
                            color: widget.inactiveTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0),
                      ),
                    ],
                  ):Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Text(
                          widget.inactiveText.toString(),
                          style: TextStyle(
                              color: widget.inactiveColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                      ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}