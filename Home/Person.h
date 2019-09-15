//
//  Person.h
//  Home
//
//  Created by Dubbasi, Amith (NonEmp) on 1/29/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSDate *birthday;

-(instancetype)initWithName:(NSString*)name birthday:(NSDate*)birthday;

@end

NS_ASSUME_NONNULL_END
