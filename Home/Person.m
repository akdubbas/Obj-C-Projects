//
//  Person.m
//  Home
//
//  Created by Dubbasi, Amith (NonEmp) on 1/29/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString*)name birthday:(NSDate*)birthday {
    self = [super init];
    
    if(self) {
        _name = name;
        _birthday = birthday;
    }
    
    return self;
}

@end
