//
//  TodoCell.h
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TodoEntity;

NS_ASSUME_NONNULL_BEGIN

@interface TodoCell : UITableViewCell

@property (nonatomic, copy, readonly, class) NSString *reuseId;
- (void)setUpWithEntity:(TodoEntity *)entity;　　//indexPathも渡す

@end

NS_ASSUME_NONNULL_END
