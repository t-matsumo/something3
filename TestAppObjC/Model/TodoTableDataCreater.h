//
//  TodoTableDataCreater.h
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TableViewDataSource;
@class SectionData;

NS_ASSUME_NONNULL_BEGIN

@interface TodoTableDataCreater : NSObject

+ (TableViewDataSource *)create;

@end

NS_ASSUME_NONNULL_END
