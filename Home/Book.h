//
//  Book.h
//  Home
//
//  Created by Dubbasi, Amith (NonEmp) on 1/29/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) Person *author;
@property (nonatomic) int yearOfPublication;

-(instancetype)initWithTitle:(NSString*)title
                      author:(Person*)author
                        year:(int)year;

@end

NS_ASSUME_NONNULL_END
