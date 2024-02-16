//
//  ViewController.swift
//  calculator akash
//
//  Created by Shruti Makwana on 15/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNum : String = "";
    var secondNum : String = "";
    var oper : String = "";
    
    @IBOutlet weak var numOnScreen: UILabel!
    
    @IBAction func btnPressed(_ sender: UIButton) {
        var tag : String = String(sender.tag);
        if(tag=="0"||tag=="1"||tag=="2"||tag=="3"||tag=="4"||tag=="5"||tag=="6"||tag=="7"||tag=="8"||tag=="9"){
            
            if(oper==""){
                if(firstNum=="0"){
                    firstNum = "";
                }
                firstNum += tag;
                numOnScreen.text = firstNum;
            }else{
                secondNum += tag;
                numOnScreen.text = firstNum + oper + secondNum;
            }
            
        }else if(tag=="10"){
            if(oper == ""){
                if(firstNum == ""){
                    firstNum += "0"+".";
                    numOnScreen.text = firstNum;
                } else{
                    if(!firstNum.contains(".")){
                        firstNum += ".";
                        numOnScreen.text = firstNum;
                    }
                }
            }else{
                if(secondNum == ""){
                    secondNum += "0"+".";
                    numOnScreen.text = firstNum + oper + secondNum;
                }else{
                    if(!secondNum.contains(".")){
                        secondNum += ".";
                        numOnScreen.text = firstNum + oper + secondNum
                    }
                }
            }
            
        // handling equals " = " button
        }else if(tag=="11"){
            if(secondNum != ""){
                let operand1 : Double = Double(firstNum)!;
                let operand2 : Double = Double(secondNum)!;
                var result : Double = 0.0;
                if(oper == "+"){
                    result = operand1 + operand2;
                }else if(oper == "-"){
                    result = operand1 - operand2;
                }else if(oper == "X"){
                    result = operand1 * operand2;
                }else if(oper == "/"){
                    result = operand1 / operand2;
                }else if(oper == "%"){
                    result = operand1.truncatingRemainder(dividingBy: operand2);
                }
                if(result.truncatingRemainder(dividingBy: 1) == 0){
                    firstNum = String(Int(result));
                }else{
                    firstNum = String(format: "%.2f", result);
                }
                numOnScreen.text = firstNum;
                secondNum = "";
                oper = "";
            }
        }else if(tag=="12"){
            if(secondNum == "" && firstNum != ""){
                oper = "+";
                numOnScreen.text = firstNum + oper;
            }else{
                let operand1 : Double = Double(firstNum)!;
                let operand2 : Double = Double(secondNum)!;
                var result : Double = 0.0;
                if(oper == "+"){
                    result = operand1 + operand2;
                } else if(oper == "-"){
                    result = operand1 - operand2;
                }else if(oper == "X"){
                    result = operand1 * operand2;
                }else if(oper == "/"){
                    result = operand1 / operand2;
                }else if(oper == "%"){
                    result = operand1.truncatingRemainder(dividingBy: operand2);
                }
                if(result.truncatingRemainder(dividingBy: 1) == 0){
                    firstNum = String(Int(result));
                }else{
                    firstNum = String(format: "%.2f", result);
                }
                oper = "+";
                secondNum = "";
                numOnScreen.text = firstNum + oper;
            }
        }else if(tag=="13"){
            if(secondNum == "" && firstNum != ""){
                oper = "-";
                numOnScreen.text = firstNum + oper;
            }else{
                let operand1 : Double = Double(firstNum)!;
                let operand2 : Double = Double(secondNum)!;
                var result : Double = 0.0;
                if(oper == "+"){
                    result = operand1 + operand2;
                } else if(oper == "-"){
                    result = operand1 - operand2;
                }else if(oper == "X"){
                    result = operand1 * operand2;
                }else if(oper == "/"){
                    result = operand1 / operand2;
                }else if(oper == "%"){
                    result = operand1.truncatingRemainder(dividingBy: operand2);
                }
                if(result.truncatingRemainder(dividingBy: 1) == 0){
                    firstNum = String(Int(result));
                }else{
                    firstNum = String(format: "%.2f", result);
                }
                oper = "-";
                secondNum = "";
                numOnScreen.text = firstNum + oper;
            }
        }else if(tag=="14"){
            if(secondNum == "" && firstNum != ""){
                oper = "X";
                numOnScreen.text = firstNum + oper;
            }else{
                let operand1 : Double = Double(firstNum)!;
                let operand2 : Double = Double(secondNum)!;
                var result : Double = 0.0;
                if(oper == "+"){
                    result = operand1 + operand2;
                } else if(oper == "-"){
                    result = operand1 - operand2;
                }else if(oper == "X"){
                    result = operand1 * operand2;
                }else if(oper == "/"){
                    result = operand1 / operand2;
                }else if(oper == "%"){
                    result = operand1.truncatingRemainder(dividingBy: operand2);
                }
                if(result.truncatingRemainder(dividingBy: 1) == 0){
                    firstNum = String(Int(result));
                }else{
                    firstNum = String(format: "%.2f", result);
                }
                oper = "X";
                secondNum = "";
                numOnScreen.text = firstNum + oper;
            }
        }else if(tag=="15"){
            if(secondNum == "" && firstNum != ""){
                oper = "/";
                numOnScreen.text = firstNum + oper;
            }else{
                let operand1 : Double = Double(firstNum)!;
                let operand2 : Double = Double(secondNum)!;
                var result : Double = 0.0;
                if(oper == "+"){
                    result = operand1 + operand2;
                } else if(oper == "-"){
                    result = operand1 - operand2;
                }else if(oper == "X"){
                    result = operand1 * operand2;
                }else if(oper == "/"){
                    result = operand1 / operand2;
                }else if(oper == "%"){
                    result = operand1.truncatingRemainder(dividingBy: operand2);
                }
                if(result.truncatingRemainder(dividingBy: 1) == 0){
                    firstNum = String(Int(result));
                }else{
                    firstNum = String(format: "%.2f", result);
                }
                oper = "/";
                secondNum = "";
                numOnScreen.text = firstNum + oper;
            }
        }else if(tag=="16"){
            if(secondNum == "" && firstNum != ""){
                oper = "%";
                numOnScreen.text = firstNum + oper;
            }else{
                let operand1 : Double = Double(firstNum)!;
                let operand2 : Double = Double(secondNum)!;
                var result : Double = 0.0;
                if(oper == "+"){
                    result = operand1 + operand2;
                } else if(oper == "-"){
                    result = operand1 - operand2;
                }else if(oper == "X"){
                    result = operand1 * operand2;
                }else if(oper == "/"){
                    result = operand1 / operand2;
                }else if(oper == "%"){
                    result = operand1.truncatingRemainder(dividingBy: operand2);
                }
                if(result.truncatingRemainder(dividingBy: 1) == 0){
                    firstNum = String(Int(result));
                }else{
                    firstNum = String(format: "%.2f", result);
                }
                oper = "%";
                secondNum = "";
                numOnScreen.text = firstNum + oper;
            }
            
        // handling change in sign
        // toggle between + and - signs
        }else if(tag=="17"){
            if(firstNum != ""){
                if(firstNum.contains("-")){
                    firstNum = firstNum.substring(from: firstNum.index(after: firstNum.startIndex));
                } else {
                    firstNum = "-" + firstNum;
                }
                numOnScreen.text = firstNum + oper;
            }
            
        // handling clear button
        }else if(tag=="18"){
            firstNum = "";
            secondNum = "";
            oper = "";
            numOnScreen.text = "0";
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

