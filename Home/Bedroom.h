//
//  Bedroom.h
//  Home
//
//  Created by Dubbasi, Amith (NonEmp) on 1/29/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bedroom.h" 

typedef NS_ENUM(NSInteger, Direction) {
    North,
    South,
    East,
    West
};

NS_ASSUME_NONNULL_BEGIN

@interface Bedroom : NSObject

@property (nonatomic) BOOL privateBath;
@property (nonatomic) Direction directionWindowFaces;

@end

NS_ASSUME_NONNULL_END
