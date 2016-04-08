//
//  LGJTableViewCell.m
//  DataSourceTableViewTest
//
//  Created by 劉光軍 on 16/4/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "LGJTableViewCell.h"

@interface LGJTableViewCell()



@end

@implementation LGJTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _cellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, [UIScreen mainScreen].bounds.size.width, 60)];
        _cellLabel.backgroundColor = [UIColor grayColor];
        _cellLabel.textColor = [UIColor redColor];
        _cellLabel.textAlignment = NSTextAlignmentCenter;
        _cellLabel.font = [UIFont systemFontOfSize:25];
        [self.contentView addSubview:_cellLabel];
    }
    return self;
}

- (void)configData:(NSDictionary *)dic {
    _cellLabel.text = [dic objectForKey:@"name"];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
