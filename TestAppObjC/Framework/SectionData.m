//
//  Section.m
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import "SectionData.h"
#import "RowData.h"

@interface SectionData ()

@property (nonatomic, copy) NSArray<RowData *> *rowDatas;

@end

@implementation SectionData

- (instancetype)initWithRowDatas:(NSArray<RowData *> *)rowDatas
{
    self = [super init];
    if (self) {
        self.rowDatas = rowDatas;
    }
    return self;
}

- (RowData *)rowDataAtRow:(NSInteger)row {
    return self.rowDatas[row];
}

- (NSInteger)rowCount {
    return self.rowDatas.count;
}

@end
