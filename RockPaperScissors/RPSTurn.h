//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Dubbasi, Amith (NonEmp) on 3/13/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//


#import "RPSTurn.h"


typedef NS_ENUM (NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid
};

NS_ASSUME_NONNULL_BEGIN

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move) move;
-(Move)generateMove;
-(BOOL)defeats: (RPSTurn*) opponentTurn;
-(NSString*) description;


@end

NS_ASSUME_NONNULL_END



