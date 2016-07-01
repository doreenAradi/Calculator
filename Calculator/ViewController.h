//
//  ViewController.h
//  Calculator
//
//  Created by ilabafrica on 6/29/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum{ Plus,Minus,Multiply,Divide} CalcOperation;

@interface ViewController : UIViewController{
    
    IBOutlet UILabel *lblDisplay;
    NSString *storage;
    CalcOperation operation;
    
}
- (IBAction)btnClear:(UIButton *)sender;
- (IBAction)button0:(UIButton *)sender;
- (IBAction)button1:(UIButton *)sender;
- (IBAction)button2:(UIButton *)sender;
- (IBAction)button3:(UIButton *)sender;
- (IBAction)btnPlus:(UIButton *)sender;
- (IBAction)btnEquals:(UIButton *)sender;
- (IBAction)btnMinus:(UIButton *)sender;
- (IBAction)btnMultiply:(UIButton *)sender;
- (IBAction)button4:(UIButton *)sender;
- (IBAction)button5:(UIButton *)sender;
- (IBAction)button6:(UIButton *)sender;
- (IBAction)button7:(UIButton *)sender;
- (IBAction)button8:(UIButton *)sender;
- (IBAction)button9:(UIButton *)sender;
- (IBAction)buttonDivide:(UIButton *)sender;
- (IBAction)btnDecimalPoint:(UIButton *)sender;

@end

