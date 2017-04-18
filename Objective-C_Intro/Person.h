//
//  Person.h
//  Objective-C_Intro
//
//  Created by David Porter on 4/17/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property(strong, nonatomic) NSString *firstName;  //declaration and declaration properties (stong nonatomic)
@property(strong, nonatomic) NSString *lastName;
@property(strong, nonatomic) NSNumber *age;

-(instancetype)initWithFirstName: (NSString *)firstName
                        lastname: (NSString *) lastName
                          andAge: (NSNumber *) age;



//Name accessor methods. 
//-(NSString *)name;
//-(void)setName:(NSString *)name;

//Instance Method
-(void)walk;

//Class Method
+(void)sayHello;

@end

// This is for Employee.h  Dont forget to add the NSCopying on the protocol.  Then copy this on the Employee.m file.
-(instancetype)initWithFirstName: (NSString *) firstName
                        lastname:(NSString *)lastName
                        andAge:(NSNumber *)age
                        yearsEmployed: (NSNumber *) yearsEmployed
                        andManager: (NSString *) managerName;

@end

//this is the Employee.m initializer.

-(instancetype)initWithFirstName: (NSString *) firstName
                        lastname:(NSString *)lastName
                        andAge:(NSNumber *)age
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



