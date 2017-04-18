//
//  Employee.h
//  Objective-C_Intro
//
//  Created by David Porter on 4/18/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

-(instancetype)initWithFirstName: (NSString *) firstName
                        lastname: (NSString *) lastName
                          andAge: (NSNumber *) age
                   yearsEmployed: (NSNumber *) yearsEmployed
                      andManager: (NSString *) managerName;

@end

@end
