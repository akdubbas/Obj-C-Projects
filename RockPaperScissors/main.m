//
//  main.m
//  RockPaperScissors
//
//  Created by Dubbasi, Amith (NonEmp) on 3/13/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"
#import "RPSTurn.h"

/*
 The principal difference between a function call and a message is that a function and a particular method implementation are coupled at compile time,
 but a message and its receiver are not linked until runtime. At runtime a call to the NSObject method, objc_msgSend(), makes a connection between receiver and message.
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        RPSController* rps = [[RPSController alloc] init];
        [rps throwDown: Paper];
        
    }
    return 0;
}
