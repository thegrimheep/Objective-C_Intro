//
//  AddEmployeeViewController.m
//  Objective-C_Intro
//
//  Created by David Porter on 4/19/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "Employee.h"
#import "EmployeeDatabase.h"

@interface AddEmployeeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;

@property (weak, nonatomic) IBOutlet UIButton *saveNewEmployee;
@property (weak, nonatomic) IBOutlet UIButton *cancelNewEmployee;


@end

@implementation AddEmployeeViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    _saveNewEmployee.layer.cornerRadius = 10;
    _cancelNewEmployee.layer.cornerRadius = 10;
}

- (IBAction)saveNewEmployee:(id)sender {
    Employee *employee = [[Employee alloc] initWithFirstName:self.firstNameTextField.text lastName:self.lastNameTextField.text age:nil email:self.emailTextField.text yearsEmployed:nil andManager:nil];
    
    [[EmployeeDatabase shared] add:employee];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelNewEmployee:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
