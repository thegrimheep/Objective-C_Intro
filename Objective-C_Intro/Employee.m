//
//  Employee.m
//  Objective-C_Intro
//
//  Created by David Porter on 4/18/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(instancetype)initWithFirstName: (NSString *) firstName
                        lastname: (NSString *) lastName
                          andAge: (NSNumber *) age
                   yearsEmployed: (NSNumber *) yearsEmployed
                      andManager: (NSString *) managerName {
    self = [super initWithFirstName: firstName lastName: lastName andAGE: age];
    
    if(self) {
        _yearsEmployed = yearsEmployed;
        _ManagerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
    }
    return self;
}

-(id)copyWithZone: (NSZone *) zolne {
    Employee *employee = [super copyWithZone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}

@end
