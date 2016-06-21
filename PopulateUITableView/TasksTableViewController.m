//
//  TasksTableViewController.m
//  PopulateUITableView
//
//  Created by Efrain Ayllon on 6/21/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "TasksTableViewController.h"

@interface TasksTableViewController ()

@end

@implementation TasksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _someTasks = [NSMutableArray array];
    
    Task *firstTask = [[Task alloc] init];
    firstTask.title = @"Wash the car";
    
    [_someTasks addObject:firstTask];
    
    
    
    //_someTasks = [NSMutableArray arrayWithObjects:@"Get Coffee",@"Clean room",@"Wake Bryan up",@"Finish Homework", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _someTasks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskTableViewCell" forIndexPath:indexPath];
    
    
//    NSString *name =  _someTasks[indexPath.row];
//    cell.textLabel.text = name;
    
    NSMutableArray *myArray = _someTasks[indexPath.row];
    NSLog(@"My array: %@", myArray);
    
    
//    cell.textLabel.text = [NSMutableString stringWithFormat:@"%@", [myArray replacementObjectForKeyedArchiver:@"keyname"] ];
    
    return cell;
}

@end
