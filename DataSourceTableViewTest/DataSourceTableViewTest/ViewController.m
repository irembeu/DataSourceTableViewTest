//
//  ViewController.m
//  DataSourceTableViewTest
//
//  Created by 劉光軍 on 16/4/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "ViewController.h"
#import "LGJTableViewCell.h"
#import "ArrayDataSource.h"


@interface ViewController ()

@property(nonatomic, strong) NSArray* arr;/**< array */
@property(nonatomic, strong) UITableView* tableView;/**< tableView */
@property(nonatomic, strong) ArrayDataSource* dateSource;/**< dataSource */

@end

@implementation ViewController

- (NSArray *)arr {
    
    if (!_arr) {
        _arr = @[@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"}];
    }
    return _arr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createTableView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)createTableView {
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.tableView registerClass:[LGJTableViewCell class] forCellReuseIdentifier:@"cell"];
    
    self.tableView.rowHeight = 70;
    [self.view addSubview:self.tableView];
    
    TableViewCellConfigureBlock configureCell =^(LGJTableViewCell *cell, NSDictionary *dic) {
        
        [cell configData:dic];
    };
    
    
    self.dateSource = [[ArrayDataSource alloc] initWithItems:self.arr cellIdentifier:@"cell" configureCellBlock:configureCell];
    self.tableView.dataSource = self.dateSource;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
