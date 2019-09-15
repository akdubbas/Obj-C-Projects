//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Dubbasi, Amith (NonEmp) on 3/13/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"
#import "RPSTurn.h"


NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(RPSTurn*) winner;
-(RPSTurn*) loser;

-(instancetype) initWithFirstTurn: (RPSTurn*) playerTurn secondTurn: (RPSTurn*) computerTurn;


@end

NS_ASSUME_NONNULL_END
