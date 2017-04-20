//
//  Employee.m
//  Objective-C_Intro
//
//  Created by David Porter on 4/18/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(void)setEmail:(NSString *)email {
    if(_email != email) {
        [email retain];
        [_email release];
        
        _email = email;
    }
}

-(void)setYearsEmployed:(NSNumber *)yearsEmployed {
    if(_yearsEmployed != yearsEmployed) {
        [yearsEmployed retain];
        [_yearsEmployed release];
        
        _yearsEmployed = yearsEmployed;
    }
}

-(void)setManagerName:(NSString *)managerName {
    if(_managerName != managerName) {
        [managerName retain];
        [_managerName release];
        
        _managerName = managerName;
    }
}

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
        _email = email;
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    if (self) {
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
}

-(id)copyWithZone: (NSZone *) zone {
    Employee *employee = [[Employee alloc] init];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}

@end

