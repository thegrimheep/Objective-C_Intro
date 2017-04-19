//
//  EmployeeDatabase.m
//  Objective-C_Intro
//
//  Created by David Porter on 4/18/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()
@property(strong, nonatomic) NSMutableArray *employees;

@end

@implementation EmployeeDatabase

+(instancetype)shared {  //Code snippet dispatch once.
    
    static EmployeeDatabase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc]init];
    });
    return shared;
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.employees = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSInteger)count {
    return self.employees.count;
}

-(NSMutableArray *)allEmployees {
    return self.employees;
}

-(Employee *)employeeAtIndex:(int)index {
    return [self.employees objectAtIndex:index];
}

-(void)add:(Employee *)employee {
    [self.employees addObject:employee];
}

-(void)remove:(Employee *)employee {
    [self.employees removeObject:employee];
}

-(void)removeEmployeeAtIndex:(int)index {
    [self.employees removeObjectAtIndex:index];
}

-(void)removeAllEmployees {
    [self.employees removeAllObjects];
}

//MARK: Helper methods
-(NSURL *) documentsDirectory {
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    return documentsDirectoryURL;
}

-(NSURL *) archiveURL {
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
}

@end
