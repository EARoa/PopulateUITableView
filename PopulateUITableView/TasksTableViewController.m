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
    
//    _someTasks = [NSMutableArray array];
//    Task *firstTask = [[Task alloc] init];
//    firstTask.title = @"Wash the car";
//    [_someTasks addObject:firstTask];
//    _someTasks = [NSMutableArray arrayWithObjects:@"Get Coffee",@"Clean room",@"Wake Bryan up",@"Finish Homework", nil];
    
    
    
    _someTasks = [NSMutableArray array];
    Task *firstTask = [[Task alloc]initWithTitle:@"Get Coffee"];
    Task *secondTask = [[Task alloc]initWithTitle:@"Bother Bryan"];
    Task *thirdTask = [[Task alloc]initWithTitle:@"Finish Homework"];
    Task *fourthTask = [[Task alloc]initWithTitle:@"Go To Work"];
    Task *fifthTask = [[Task alloc]initWithTitle:@"Go To Sleep"];
    _someTasks = [[NSMutableArray alloc]initWithArray:@[firstTask.title, secondTask.title, thirdTask.title, fourthTask.title, fifthTask.title]];
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
    
    
    NSString *name =  _someTasks[indexPath.row];
    cell.textLabel.text = name;
    
    
    return cell;
}

@end
