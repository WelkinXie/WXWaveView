//
//  ViewController.m
//  WXWaveView-demo
//
//  Created by WelkinXie on 16/4/21.
//  Copyright © 2016年 Welkin. All rights reserved.
//
//  Github: https://github.com/WelkinXie/WXWaveView
//

#import "ViewController.h"
#import "WXWaveView.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) WXWaveView *waveView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 245)];
    headerView.backgroundColor = [UIColor colorWithRed:164/255.f green:174/255.f blue:246/255.f alpha:1];
    self.tableView.tableHeaderView = headerView;
    
}

- (void)viewDidLayoutSubviews {
    if (!self.waveView) {
        
        // Initialization
        self.waveView = [WXWaveView addToView:self.tableView.tableHeaderView withFrame:CGRectMake(0, CGRectGetHeight(self.tableView.tableHeaderView.frame) - 4.5, CGRectGetWidth(self.tableView.frame), 5)];
        
        // Optional Setting
//        self.waveView.waveTime = 0.f;     // When 0, the wave will never stop;
//        self.waveView.waveColor = [UIColor yellowColor];
//        self.waveView.waveSpeed = 25.f;
//        self.waveView.angularSpeed = 1.8f;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if ([self.waveView wave]) {
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            [self.waveView stop];
//            [self.tableView reloadData];
//        });
    }
}

#pragma mark - UITableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    cell.textLabel.text = [NSString stringWithFormat:@"%i", arc4random() % 100];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
