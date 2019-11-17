//
//  TodoCell2TableViewCell.h
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TodoCell2TableViewCellEntity;

NS_ASSUME_NONNULL_BEGIN

@interface TodoCell2TableViewCell : UITableViewCell

@property (nonatomic, copy, readonly, class) NSString *reuseId;
- (void)setUpWithEntity:(TodoCell2TableViewCellEntity *)entity;　//indexPathも渡す

@end

NS_ASSUME_NONNULL_END
