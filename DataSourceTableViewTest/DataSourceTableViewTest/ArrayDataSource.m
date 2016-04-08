//
//  ArrayDataSource.m
//  DataSourceTableViewTest
//
//  Created by 劉光軍 on 16/4/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource ()

@property(nonatomic, strong) NSArray* items;/**< array */
@property(nonatomic, copy) NSString* cellIdentifier;/**< cellIdentifier */
@property(nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;/**< block */


@end

@implementation ArrayDataSource


- (instancetype)init {
    return  nil;
}

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock {
    
    self = [super init];
    if (self) {
        self.items = anItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureCellBlock = aConfigureCellBlock;
    }
    return  self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[(NSUInteger) indexPath.row];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

@end
