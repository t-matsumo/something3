//
//  TodoTableDataCreater.m
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/16.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import "TodoTableDataCreater.h"

#import "TableViewDataSource.h"
#import "SectionData.h"
#import "RowData.h"
#import "TodoEntity.h"
#import "TodoCell2TableViewCellEntity.h"

@implementation TodoTableDataCreater

+ (TableViewDataSource *)create {
    NSMutableArray<SectionData *> *sectionDatas = [NSMutableArray new];
    for (NSInteger i = 0; i < 10; i++) {
        NSArray<RowData *> *rowDatas = [self createRowDatas1];
        SectionData *sectionData = [[SectionData alloc] initWithRowDatas:rowDatas];
        [sectionDatas addObject:sectionData];
        
        NSArray<RowData *> *rowDatas2 = [self createRowDatas2];
        SectionData *sectionData2 = [[SectionData alloc] initWithRowDatas:rowDatas2];
        [sectionDatas addObject:sectionData2];
    }
    return [[TableViewDataSource alloc] initWithDatas:sectionDatas];
}

+ (NSArray<RowData *> *)createRowDatas1 {
    NSMutableArray<RowData *> *rowDatas = [NSMutableArray new];
    for (NSInteger j = 0; j < 4; j++) {
        TodoEntity *entity = [TodoEntity new];
        if (j % 2 == 0) {
            entity.text = @"ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ";
        } else {
            entity.text = @"aaaaaaa";
        }
        
        RowData<TodoEntity *> *rowData = [[RowData alloc] initWithEntity:entity cellType:CellType1];
        [rowDatas addObject:rowData];
    }
    
    return rowDatas;
}

+ (NSArray<RowData *> *)createRowDatas2 {
    NSMutableArray<RowData *> *rowDatas = [NSMutableArray new];
    for (NSInteger j = 0; j < 4; j++) {
        TodoCell2TableViewCellEntity *entity = [TodoCell2TableViewCellEntity new];
        entity.title = @"タイトル";
        if (j % 2 == 0) {
            entity.text = @"ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ";
        } else {
            entity.text = @"aaaaaaa";
        }
        
        RowData<TodoCell2TableViewCellEntity *> *rowData = [[RowData alloc] initWithEntity:entity cellType:CellType2];
        [rowDatas addObject:rowData];
    }
    
    return rowDatas;
}


@end
