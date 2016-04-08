//
//  ArrayDataSource.h
//  DataSourceTableViewTest
//
//  Created by 劉光軍 on 16/4/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id items);

@interface ArrayDataSource : NSObject<UITableViewDataSource>

- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
