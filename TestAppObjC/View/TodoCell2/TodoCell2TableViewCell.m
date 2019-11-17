//
//  TodoCell2TableViewCell.m
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import "TodoCell2TableViewCell.h"
#import "TodoCell2TableViewCellEntity.h"

@interface TodoCell2TableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentsLabel;

@end

@implementation TodoCell2TableViewCell

+ (NSString *)reuseId {
    static NSString *reuseId = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        reuseId = NSStringFromClass(self);
        NSLog(@"aaa initinitinit");
    });
    return reuseId;
}

- (void)setUpWithEntity:(TodoCell2TableViewCellEntity *)entity {
    self.titleLabel.text = entity.title;
    self.contentsLabel.text = entity.text;
    
    [self updateConstraintsIfNeeded];
}

@end
