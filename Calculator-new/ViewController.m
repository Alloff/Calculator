//
//  ViewController.m
//  Calculator-new
//
//  Created by Anton on 8/7/16.
//  Copyright © 2016 Anton. All rights reserved.
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

- (Calculation *)brain {
    if (!brain) brain = [[Calculation alloc] init];
    return brain;
}

- (IBAction)operationPressed:(UIButton *)sender {
    if (userIsInTheMiddleOfTyping) {
        self.brain.operand = [display.text doubleValue];
        userIsInTheMiddleOfTyping = NO;
    }
    NSString *operation = sender.titleLabel.text;
    double result = [self.brain performOperation:operation];
    display.text = [NSString stringWithFormat:@"%g", result];
}

- (IBAction)digitPressed:(UIButton *)sender {
    NSString *digit = sender.titleLabel.text;
    if (userIsInTheMiddleOfTyping) {
        display.text = [display.text stringByAppendingString:digit];
    }
    else
    {
        display.text = digit;
        userIsInTheMiddleOfTyping = YES;
    }
}


@end
