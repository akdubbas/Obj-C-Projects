//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Dubbasi, Amith (NonEmp) on 3/13/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"
#import "RPSController.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn: (RPSTurn*)playerTurn secondTurn:(RPSTurn*)secondTurn {
    
    self = [super init];
    
    if(self) {
        _firstTurn = playerTurn;
        _secondTurn = secondTurn;
    }
    return self;
}

-(RPSTurn*) winner {
    
    RPSController* rpsC = [[RPSController alloc] init];
    [rpsC throwDown: Rock];
    BOOL win = [_firstTurn defeats:_secondTurn];
    return win ? _firstTurn : _secondTurn;
}

-(RPSTurn*) loser {
    
    RPSController* rpsC = [[RPSController alloc] init];
    [rpsC throwDown: Rock];
    BOOL win = [_firstTurn defeats:_secondTurn];
    return win ? _secondTurn : _firstTurn;
}
@end


