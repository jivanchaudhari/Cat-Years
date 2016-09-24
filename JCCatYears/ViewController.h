//
//  ViewController.h
//  JCCatYears
//
//  Created by Student P_02 on 09/09/16.
//  Copyright © 2016 Jivan Chaudhari. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kHorizontalPadding 30.0
#define kAllUIElementHeight 50.0
#define kVerticalPadding 20.0


@interface ViewController : UIViewController
{
    UILabel *displayLabel;
    UIButton *calculateButton;
    CGFloat displayLabelWidth;
    CGFloat textFieldWidth;
    CGFloat screenHeight;
    CGFloat screenWidth;
    UITextField *myTextField;
    CGFloat calculateButtonYCoordinate;
    CGFloat displayLabelYCoordinate;
    UIButton *clearButton;
  //  CGFloat clearButton;
    CGFloat clearButtonXCoordinate;
    
}

@end

