//
//  SectionDataList.h
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SectionData;
@class RowData;

NS_ASSUME_NONNULL_BEGIN

@interface TableViewDataSource : NSObject

@property (nonatomic, readonly) NSInteger count;
@property (nonatomic, copy) NSArray<SectionData *> *sectionDatas;

- (instancetype)initWithDatas:(NSArray<SectionData *> *)sectionDatas;
- (NSInteger)numberOfRowsInSection:(NSInteger)section;
- (RowData *)rowDataAtIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
