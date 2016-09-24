//
//  ViewController.m
//  JCCatYears
//
//  Created by Student P_02 on 09/09/16.
//  Copyright © 2016 Jivan Chaudhari. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor= [UIColor cyanColor];

    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
    
    calculateButtonYCoordinate = kVerticalPadding+kAllUIElementHeight+100;
    
    textFieldWidth = screenWidth-(2*kHorizontalPadding);
  

    
    myTextField = [[UITextField alloc]initWithFrame:CGRectMake(kHorizontalPadding, 100,textFieldWidth,kAllUIElementHeight)];
   [myTextField setPlaceholder:@"Enter Human Age"];
    myTextField.backgroundColor = [UIColor whiteColor];
    [myTextField setBorderStyle:UITextBorderStyleBezel];
    
    [self.view addSubview:myTextField];
    
    
    calculateButton = [[UIButton alloc]initWithFrame:CGRectMake((3*kHorizontalPadding),calculateButtonYCoordinate, 100,60)];
    myTextField.keyboardType=UIKeyboardTypeNumberPad;
    calculateButton.layer.cornerRadius=15;
    calculateButton.backgroundColor = [UIColor blackColor];
    
    [calculateButton addTarget:self action:@selector(handlecal) forControlEvents:UIControlEventTouchUpInside];
    [calculateButton setTitle:@"Calculate" forState:UIControlStateNormal ];
    [self.view addSubview:calculateButton];
    
    clearButton = [[UIButton alloc]initWithFrame:CGRectMake((7*kHorizontalPadding),calculateButtonYCoordinate, 100,60)];
    clearButton.layer.cornerRadius=15;
    clearButton.backgroundColor = [UIColor blackColor];
    
    [clearButton setTitle:@"Clear" forState:UIControlStateNormal ];

    [clearButton addTarget:self action:@selector(handleClear) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:clearButton];
    
    
    
   displayLabelWidth = screenWidth-(2*kHorizontalPadding);
    displayLabel = [[UILabel alloc]initWithFrame:CGRectMake(kHorizontalPadding, 400,displayLabelWidth, kAllUIElementHeight)];
    displayLabel.font=[UIFont systemFontOfSize:30];
    displayLabel.textAlignment=NSTextAlignmentCenter;
    displayLabel.textColor=[UIColor blackColor];
    
   
    [self.view addSubview:displayLabel];
}
-(void)handlecal {
    [self displayCate:myTextField.text];
}

-(void)displayCate:(NSString *)content {
    int intAge = content.intValue;

        if(intAge>0&&intAge<100) {
            NSString *currentValueString = myTextField.text;
            
                    float currentValueInt = currentValueString.floatValue;
            
                    currentValueInt = currentValueInt /7;
            
                    NSString *newValueString = [NSString stringWithFormat:@"  Catyear is:%0.02f ",currentValueInt];
                    
                    displayLabel.text = newValueString;
            
        }
        
    
    else {
        displayLabel.text=@"Please Enter the Age bellow 100";
        
    }

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self displayCate:textField.text];
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)handleClear {
    myTextField.text=@" ";
    displayLabel.text = @" ";
    
}
@end
