//
//  SectionDataList.m
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewDataSource.h"
#import "SectionData.h"


@interface TableViewDataSource ()
@end

@implementation TableViewDataSource

- (instancetype)init
{
    return [self initWithDatas:@[]];
}

- (NSInteger)count {
    return self.sectionDatas.count;
}

- (instancetype)initWithDatas:(NSArray<SectionData *> *)sectionDatas
{
    self = [super init];
    if (self) {
        self.sectionDatas = sectionDatas;
    }
    return self;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return self.sectionDatas[section].rowCount;
}

- (RowData *)rowDataAtIndexPath:(NSIndexPath *)indexPath {
    SectionData *sectionData = self.sectionDatas[indexPath.section];
    return [sectionData rowDataAtRow:indexPath.row];
}

@end
