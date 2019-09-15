//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Dubbasi, Amith (NonEmp) on 3/13/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"
#import "RPSGame.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

-(void)throwDown: (Move) move;
@property (nonatomic) RPSGame* game;


@end
NS_ASSUME_NONNULL_END
