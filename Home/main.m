//
//  main.m
//  Home
//
//  Created by Dubbasi, Amith (NonEmp) on 1/22/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Home.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //Home *home = [[Home alloc] init];
        //home.numberOfBedRooms = 5; // cannot change from outside the class, as it is a readonly property
        NSMutableString *addressString = [[NSMutableString alloc] initWithString: @"707 MLK Dr W"];
        
        
        Home *home1 = [[Home alloc] initWithAddress:addressString];
        NSLog(@"%@", home1.address);
        
        
    }
    return 0;
}
