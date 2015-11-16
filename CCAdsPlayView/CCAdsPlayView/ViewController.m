//
//  ViewController.m
//  CCAdsPlayView
//
//  Created by Cole on 15/11/11.
//  Copyright © 2015年 Cole. All rights reserved.
//

#import "ViewController.h"
#import "CCAdsPlayView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    NSArray *imgArray = @[@"http://upload.520apk.com/news/20141103/14149961483023.jpg",
                          @"http://f.hiphotos.baidu.com/zhidao/pic/item/622762d0f703918f7d3c58a3503d269758eec4ee.jpg",
                          @"http://bbsimg.meizu.net/month_1206/20120623_19be5f8ea153270bfc82d9MxVxr2gcKG.jpg"];
    
    /*使用API */
    CCAdsPlayView *apView = [CCAdsPlayView adsPlayViewWithFrame:CGRectMake(0, 0,screenWidth, screenHeight) imageGroup:imgArray];
    //设置小圆点位置
    apView.pageContolAliment = CCPageContolAlimentRight;
    //设置动画时间
    apView.animationDuration = 1.;
    //设置缺省图
    apView.placeHoldImage = [UIImage imageNamed:@"Default-568h"];
    [self.view addSubview:apView];
    //这句可以在任何地方使用，异步下载并展示
    [apView startWithTapActionBlock:^(NSInteger index) {
        NSLog(@"点击了第%@张",@(index));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
