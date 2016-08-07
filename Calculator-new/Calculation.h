//
//  NSObject+Calculation.h
//  Calculator-new
//
//  Created by Anton on 8/7/16.
//  Copyright © 2016 Anton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculation: NSObject {
double operand;
NSString *waitingOperation;
double waitingOperand;
}
@property double operand;
-(double)performOperation:(NSString *)operation;
@end
