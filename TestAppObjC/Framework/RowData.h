//
//  RowData.h
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSInteger {
    CellType1 = 0,
    CellType2,
} CellType;

NS_ASSUME_NONNULL_BEGIN

@interface RowData<ObjectType> : NSObject

@property (readonly, nonatomic) ObjectType entity;
@property (readonly, nonatomic) CellType cellType;
// apiの値も持つ
- (instancetype)initWithEntity:(ObjectType)entity cellType:(CellType)cellType;

@end

NS_ASSUME_NONNULL_END
