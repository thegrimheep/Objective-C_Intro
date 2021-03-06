//
//  EmployeeViewController.m
//  Objective-C_Intro
//
//  Created by David Porter on 4/18/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import "EmployeeViewController.h"
#import "EmployeeDatabase.h"
#import "ViewController.h"

@interface EmployeeViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation EmployeeViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmployeeCell" forIndexPath:indexPath];
    
    NSArray *employees = [[EmployeeDatabase shared] allEmployees];
    Employee *employee = employees[indexPath.row];
    //stringWithFormat allowed me to have mupltie values go into the cell
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@",employee.firstName, employee.lastName];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[EmployeeDatabase shared] count];
}


-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[EmployeeDatabase shared] removeEmployeeAtIndex:(int)indexPath.row];
        [self.tableView reloadData];
    }
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return true;
}



@end
