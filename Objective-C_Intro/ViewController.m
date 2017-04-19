//
//  ViewController.m
//  Objective-C_Intro
//
//  Created by David Porter on 4/17/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ViewControllerDataSource.h"
#import "Employee.h"
#import "EmployeeDatabase.h"

static int gMoveNumber = 10;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Employee *orignal = [[Employee alloc] initWithFirstName:@"David" lastname:@"Porter" age:@40 email:@"davidporter@icloud.com" yearsEmployed:@2 andManager:@"Julie"];

    Employee *emp2 = [[Employee alloc] initWithFirstName:@"Steve" lastname:@"Jones" age:@42 email:@"stevejones@gmail.com" yearsEmployed:@4 andManager:@"David"];

    
    [[EmployeeDatabase shared] add:orignal];
    [[EmployeeDatabase shared] add:emp2];
}




@end

