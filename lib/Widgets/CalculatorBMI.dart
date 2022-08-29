import 'dart:math';

class CalculatorBMI {
  CalculatorBMI({required this.height, required this.weight});

  final int height;
  final int weight;
  double?BMI;

  String CalculateBMI(){
    BMI= weight /pow(height/100,2);
    return BMI!.toStringAsFixed(1);
  }
  String getResult(){
    if(BMI!>18.5&&BMI!<=24.9){
      return"وزن ایده آل";
    }else if(BMI!>=25&&BMI!<=29.9){
      return"اضافه وزن";
    }else if(BMI!>=30&&BMI!<=34.9){
      return"چاق";
    }else if(BMI!>=35){
      return"خیلی چاق";
      }else {
      return "کمبود وزن";
    }}
    String getInterPretation(){
      if(BMI!>18.5&&BMI!<=24.9){
        return"1";
      }else if(BMI!>=25&&BMI!<=29.9){
        return"2";
      }else if(BMI!>=30&&BMI!<=34.9){
        return"3";
      }else if(BMI!>=35){
        return"4";
      }else{
        return "0";
      }
    }
}
