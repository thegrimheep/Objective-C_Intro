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
                        lastName: (NSString *) lastName
                             age: (NSNumber *) age
                           email: (NSString *) email
                   yearsEmployed: (NSNumber *) yearsEmployed
                      andManager: (NSString *) managerName {
    self = [super initWithFirstName:firstName lastname:lastName andAge:age];
    
    if(self) {
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
    }
    return self;
}

-(id)copyWithZone: (NSZone *) zone {
    Employee *employee = [[Employee alloc] init];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}

@end

