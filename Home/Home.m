//
//  Home.m
//  Home
//
//  Created by Dubbasi, Amith (NonEmp) on 1/22/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import "Home.h"

@interface Home()

@property (nonatomic, readwrite) int numberOfBedRooms; //from inside the class one can read and write to this variable

@end

@implementation Home

-(instancetype) initWithAddress: (NSString*) address { //include * to show that parameter is pointer to an object
    self = [super init];
    if(self) {
        _address = [address copy]; //this line protects the variable from unintentional changes
        _numberOfBedRooms = 2;
        _hasHotTub = false;
    }
    return self;
}

/*-(returnType) methodName: (parameterType*) parameterName {
 body;
}*/



@end
