# CCAdsPlayView
简单的，体验友好的广告轮播控件

##### 特色
- 异步下载使用SDWebImage
- 循环时间：默认5秒，可自定义,（设置0则不滚动）
- 滚动点：  默认居中，可设置居右或者直接隐藏
- 缺省图片：默认为nil，可自定义
- 注：暂只支持code方式创建


##### 使用API
        CCAdsPlayView *apView = [CCAdsPlayView adsPlayViewWithFrame:CGRectMake(0, 0,screenWidth, screenHeight) imageGroup:imgArray];
        //apView.pageContolAliment = CCPageContolAlimentRight;
        //apView.animationDuration = 1.;
        //apView.placeHoldImage = [UIImage imageNamed:@"Default-568h"];
        [self.view addSubview:apView];
    
        //这句可以在任何地方使用，异步下载并展示
        [apView startWithTapActionBlock:^(NSInteger index) {
            NSLog(@"点击了第%@张",@(index));
        }];
    
    
#### 觉得好用的话，客官请给星哦，感谢。
