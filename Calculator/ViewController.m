//
//  ViewController.m
//  Calculator
//
//  Created by ilabafrica on 6/29/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnClear:(UIButton *)sender {
    lblDisplay.text = @"";
    lblDisplay.text=@"";
}
- (IBAction)button1:(UIButton *)sender {
    lblDisplay.text=[NSString stringWithFormat:@"%@1",lblDisplay.text];
}

- (IBAction)button2:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@2",lblDisplay.text];
}

- (IBAction)button3:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@3",lblDisplay.text];
}

- (IBAction)button0:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@0",lblDisplay.text];
}
- (IBAction)btnPlus:(UIButton *)sender {
    operation = Plus;
    storage = lblDisplay.text;
    lblDisplay.text = @"";
}

- (IBAction)btnEquals:(UIButton *)sender {
    NSString *value =  lblDisplay.text;
    //NSString *computaion = @"";
    switch(operation){
        case Plus:
            //computaion = [value longLongValue]+[storage longLongValue];
            lblDisplay.text = [NSString stringWithFormat:@"%2.f",[value  floatValue ] + [storage floatValue]];
            break;
        case Minus:
            lblDisplay.text = [NSString stringWithFormat:@"%2.f",[storage floatValue] - [value floatValue]];
            break;
        case Divide:
            lblDisplay.text = [NSString stringWithFormat:@"%2.f",[storage floatValue] / [value floatValue]];
            break;
        case Multiply:
            lblDisplay.text = [NSString stringWithFormat:@"%2.f",[storage floatValue] * [value floatValue]];
            break;
    }
}

- (IBAction)btnMinus:(UIButton *)sender {
    operation = Minus;
    storage = lblDisplay.text;
    lblDisplay.text = @"";
}

- (IBAction)btnMultiply:(UIButton *)sender {
    operation = Multiply;
    storage = lblDisplay.text;
    lblDisplay.text = @"";
}

- (IBAction)button4:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@4", lblDisplay.text];
}

- (IBAction)button5:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@5", lblDisplay.text];
}

- (IBAction)button6:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@6", lblDisplay.text];
}

- (IBAction)button7:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@7", lblDisplay.text];
}

- (IBAction)button8:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@8", lblDisplay.text];
}

- (IBAction)button9:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@9", lblDisplay.text];
}

- (IBAction)buttonDivide:(UIButton *)sender {
    operation = Divide;
    storage = lblDisplay.text;
    lblDisplay.text = @"";
}

- (IBAction)btnDecimalPoint:(UIButton *)sender {
    lblDisplay.text = [NSString stringWithFormat:@"%@.", lblDisplay.text];
}
@end
