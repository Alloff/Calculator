//
//  ViewController.h
//  Calculator-new
//
//  Created by Anton on 8/7/16.
//  Copyright © 2016 Anton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculation.h"

@interface ViewController : UIViewController{
    __weak IBOutlet UILabel *display;
    Calculation *brain;
    BOOL userIsInTheMiddleOfTyping;
}

-(IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;


@end

