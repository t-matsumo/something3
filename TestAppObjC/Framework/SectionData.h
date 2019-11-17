//
//  Section.h
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RowData;

NS_ASSUME_NONNULL_BEGIN

@interface SectionData : NSObject

@property (nonatomic, readonly) NSInteger rowCount;

- (instancetype)initWithRowDatas:(NSArray<RowData *> *)rowDatas;
- (RowData *)rowDataAtRow:(NSInteger)row;

@end

NS_ASSUME_NONNULL_END
