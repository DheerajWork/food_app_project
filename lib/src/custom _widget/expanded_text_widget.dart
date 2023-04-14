import 'package:flutter/material.dart';
import 'package:food_app_project/src/custom%20_widget/small_text.dart';
import 'package:food_app_project/src/utils/dimensions.dart';
import 'package:food_app_project/src/utils/my_colors.dart';

class ExpendedTextWidget extends StatefulWidget {
  final String text;
  const ExpendedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpendedTextWidget> createState() => _ExpendedTextWidgetState();
}

class _ExpendedTextWidgetState extends State<ExpendedTextWidget> {
  bool hiddenText= true;
  var textLength = Dimensions.screenHeight/4.2;
  late String firstHalf ;
  late String secondHalf;

  @override
  void initState(){
    super.initState();
    if(widget.text.length<textLength.toInt()){
      firstHalf=widget.text;
      secondHalf="";
    }else{
      firstHalf=widget.text.substring(0,textLength.toInt());
      secondHalf=widget.text.substring(textLength.toInt()+1,widget.text.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty? SmallText(text:firstHalf):Column(
        children: [
          SmallText(color:MyColors.paraColor,height: 1.4,size:Dimensions.font14,text: hiddenText?(firstHalf+'...'):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(size:Dimensions.font14,text: hiddenText? 'Show more':'Show Less',color: MyColors.mainColor,),
                SizedBox(height: Dimensions.height10,),
                Icon(hiddenText? Icons.arrow_drop_down_outlined : Icons.arrow_drop_up_outlined,color: MyColors.mainColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
