//
//  TodoCell.m
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import "TodoCell.h"
#import "TodoEntity.h"

@interface TodoCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation TodoCell

+ (NSString *)reuseId {
    static NSString *reuseId = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        reuseId = NSStringFromClass(self);
        NSLog(@"aaa initinitinit");
    });
    return reuseId;
}

- (void)setUpWithEntity:(TodoEntity *)entity {
    self.titleLabel.text = entity.text;
    
    [self updateConstraintsIfNeeded];
}

@end
