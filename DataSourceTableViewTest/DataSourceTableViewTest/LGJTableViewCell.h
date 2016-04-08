//
//  LGJTableViewCell.h
//  DataSourceTableViewTest
//
//  Created by 劉光軍 on 16/4/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LGJTableViewCell : UITableViewCell

//@property(nonatomic, strong) NSArray* cellArray;/**< array */
@property(nonatomic, strong) UILabel* cellLabel;/**< label */

- (void)configData:(NSDictionary *)dic;

@end
