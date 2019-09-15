//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Dubbasi, Amith (NonEmp) on 3/13/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@implementation RPSTurn
    
-(instancetype) initWithMove: (Move) move {
    self = [super init];
    if(self) {
     _move = move;
    }
    return self;
}

-(instancetype) init{
    self = [super init];
    if(self) {
        _move = [self generateMove];
    }
    return self;
}

-(Move) generateMove {
    
    NSUInteger randomInteger = arc4random_uniform(3);
    switch (randomInteger) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
            break;
        case 2:
            return Scissors;
            break;
        default:
            return Invalid;
            break;
    }
}

- (BOOL) defeats:(RPSTurn *)opponentTurn {
    
    if ((self.move == Paper && opponentTurn == Rock) || (self.move == Rock && opponentTurn.move == Scissors) || (self.move == Scissors && opponentTurn.move == Paper)) {
        return true;
    } else {
        return false;
    }
}

-(NSString*) description {
    if(self.move == Rock) {
        return @"Rock";
    } else if(self.move == Paper){
        return @"Paper";
    } else {
        return @"Scissors";
    }
}
@end
