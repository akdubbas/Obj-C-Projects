//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Dubbasi, Amith (NonEmp) on 3/13/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void)throwDown:(Move) move {
    
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove:move];
    RPSTurn *computerTurn = [[RPSTurn alloc] init];
    
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn secondTurn:computerTurn];
    
}

@end
