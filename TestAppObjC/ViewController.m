//
//  ViewController.m
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/14.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import "ViewController.h"
#import "TableViewDataSource.h"
#import "SectionData.h"
#import "RowData.h"
#import "TodoEntity.h"
#import "TodoCell.h"
#import "TodoTableDataCreater.h"
#import "TodoCell2TableViewCell.h"


@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) TableViewDataSource *tableViewDataSource;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self registerNibs];
    
    self.tableViewDataSource = [TableViewDataSource new];
    
    __weak typeof(self) weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // APIから必要な情報のみを抽出してview関連のentityとAPIのエンティティを分離するにする
        weakSelf.tableViewDataSource = [TodoTableDataCreater create];
        [weakSelf.tableView reloadData];
    });
}

- (void)registerNibs {
    NSArray<NSString *> *nibNames = @[
        TodoCell.reuseId,
        TodoCell2TableViewCell.reuseId,
    ];
    
    for (NSString *cellName in nibNames) {
        UINib *nib = [UINib nibWithNibName:cellName bundle:nil];
        [self.tableView registerNib:nib forCellReuseIdentifier:cellName];
    }
}

#pragma mark - implement delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.tableViewDataSource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableViewDataSource numberOfRowsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RowData *data = [self.tableViewDataSource rowDataAtIndexPath:indexPath];
    
    switch (data.cellType) {
        case CellType1: {
            TodoCell *cell = [self.tableView dequeueReusableCellWithIdentifier:TodoCell.reuseId forIndexPath:indexPath];
            [cell setUpWithEntity:data.entity];
            return cell;
            break;
        }
        case CellType2: {
            TodoCell2TableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:TodoCell2TableViewCell.reuseId forIndexPath:indexPath];
            [cell setUpWithEntity:data.entity]; //indexPathも渡す
            return cell;
            break;
        }
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    RowData *data = [self.tableViewDataSource rowDataAtIndexPath:indexPath];
    
    switch (data.cellType) {
       case CellType1: {
           TodoCell *cell = [self.tableView dequeueReusableCellWithIdentifier:TodoCell.reuseId];
           [cell setUpWithEntity:data.entity];
           CGSize cellSize = [cell systemLayoutSizeFittingSize:CGSizeMake(self.tableView.frame.size.width, UIViewNoIntrinsicMetric)];
           return cellSize.height;
       }
       case CellType2: {
           TodoCell2TableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:TodoCell2TableViewCell.reuseId];
           [cell setUpWithEntity:data.entity];
           CGSize cellSize = [cell systemLayoutSizeFittingSize:CGSizeMake(self.tableView.frame.size.width, UIViewNoIntrinsicMetric)];
           return cellSize.height;
       }
   }
}

@end
