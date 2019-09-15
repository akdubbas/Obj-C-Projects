//
//  Home.h
//  Home
//
//  Created by Dubbasi, Amith (NonEmp) on 1/22/19.
//  Copyright © 2019 Dubbasi, Amith (NonEmp). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bedroom.h" // even though Bedroom is in the same project - we need to import it

NS_ASSUME_NONNULL_BEGIN

/*Notice how non atomic properties are directly setting the value of the property while atomic property are using locks to protect the set operation.*/

@interface Home : NSObject

@property (nonatomic, copy) NSString *address; //when we say 'copy' for a string, telling class that it has a independent copy for this address string, we don't want to make that vulnerable to unintentional changes
@property (nonatomic) BOOL hasHotTub;
@property (nonatomic, readonly) int numberOfBedRooms;//readonly property restricts the class to be modifies by outside the class
-(instancetype) initWithAddress: (NSString*) address;


//access other classes
@property (nonatomic, strong) Bedroom *frontBedRoom; //pointers are always strong by default
@property (nonatomic) Bedroom *backBedRoom;

//Strong references are used for properties that are primary responsibility of the class, in other words owned by the class.  In this case, Bed rooms are owned by the Home class.

/*Weak references are used for the properties that are the primary responsiblity of some other class.
 
 There are two times, you should use weak
 1) When the property is delegate
 2) When the property is the subview of the main view - this is to avoid memory cycles
 
*/



@end

NS_ASSUME_NONNULL_END

/*
 
 // Book.h
 
 @interface Book : NSObject
 
 @property (nonatomic) NSString *title;
 @property (nonatomic) Person *author;
 @property (nonatomic) int yearOfPublication;
 
 -(instancetype)initWithTitle:(NSString*)title
 author:(NSString*)author
 year:(int)year;
 
 @end
 
 // Book.m
 
 @implementation Book
 
 -(instancetype)initWithTitle:(NSString*)title
 author:(NSString*)author
 year:(int)year {
 self = [super init];
 if(self) {
 _title = title;
 _author = author;
 _yearOfPublication = year;
 }
 
 return self;
 }
 
 @end    
 
 */


