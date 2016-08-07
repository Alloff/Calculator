//
//  NSObject+Calculation.m
//  Calculator-new
//
//  Created by Anton on 8/7/16.
//  Copyright © 2016 Anton. All rights reserved.
//

#import "Calculation.h"

@implementation Calculation
@synthesize operand;

- (void)performWaitingOperation {
    if ([@"+" isEqual:waitingOperation])
    {
        operand = waitingOperand + operand;
    }
    else if ([@"×" isEqual:waitingOperation])
    {
        operand = waitingOperand * operand;
    }
    else if ([@"−" isEqual:waitingOperation])
    {
        operand = waitingOperand - operand;
    }
    else if ([@"÷" isEqual:waitingOperation])
    {
        if (operand) {
            operand = waitingOperand / operand;
        }
    }
}

- (double)performOperation:(NSString *)operation {
    if ([operation isEqual:@"√"])
    {
        operand = sqrt(operand);
    } else
    {
        [self performWaitingOperation];
        waitingOperation = operation; 	
        waitingOperand = operand;
    }
    
    return operand; 
}

@end