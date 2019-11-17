//
//  RowData.m
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import "RowData.h"

@interface RowData<ObjectType> ()

@property (readwrite, nonatomic) ObjectType entity;
@property (readwrite, nonatomic) CellType cellType;

@end

@implementation RowData

- (instancetype)initWithEntity:(id)entity cellType:(CellType)cellType {
    self = [super init];
    if (self) {
        self.entity = entity;
        self.cellType = cellType;
    }
    return self;
}

@end
