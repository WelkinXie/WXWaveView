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

    // Initialization
    self.waveView = [WXWaveView addToView:headerView withFrame:CGRectMake(0, CGRectGetHeight(headerView.frame) - 9, CGRectGetWidth(headerView.frame), 10)];
        
    // Optional Setting
//    self.waveView.waveTime = 0.f;     // When 0, the wave will never stop;
//    self.waveView.waveColor = [UIColor groupTableViewBackgroundColor];
//    self.waveView.waveSpeed = 6.f;
//    self.waveView.waveAmplitude = 6.f;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    [self.waveView wave];
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
    cell.textLabel.text = [NSString stringWithFormat:@"%li", (long)indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
