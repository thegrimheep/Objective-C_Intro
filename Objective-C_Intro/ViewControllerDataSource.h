//
//  ViewControllerDataSource.h
//  Objective-C_Intro
//
//  Created by David Porter on 4/17/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewControllerDataSource <NSObject>

@optional
-(void)optionalNumberOfItems: (int)number;

@required
-(void)requiredNumberForEachItem: (int)number;

@end
