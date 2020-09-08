//
//  ViewController.m
//  test
//
//  Created by songerxi on 2020/9/8.
//  Copyright © 2020 宋二喜. All rights reserved.
//

#import "ViewController.h"
#import "XLPageViewController.h"
#import "Masonry.h"
#import "ChildViewCtl.h"

@interface ViewController ()<XLPageViewControllerDelegate, XLPageViewControllerDataSrouce>

@property (nonatomic, strong) XLPageViewController *pageViewCtl;

@end

@implementation ViewController
#pragma mark - init & Life Cycle               - Method -

- (void)loadView {
    [super loadView];
    [self setupUI];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


#pragma mark - SetupUI                         - Method -
- (void)setupUI {
    
    XLPageViewControllerConfig *config = [XLPageViewControllerConfig defaultConfig];
    
    config.titleNormalColor = [UIColor systemGrayColor];
       config.titleSelectedColor = [UIColor systemBlueColor];
    config.titleNormalFont = [UIFont systemFontOfSize:17 weight:UIFontWeightRegular];
    config.titleSelectedFont = [UIFont systemFontOfSize:27 weight:UIFontWeightBold];
       config.separatorLineHidden = YES;
    config.shadowLineColor = UIColor.systemBlueColor;
       self.pageViewCtl = [[XLPageViewController alloc] initWithConfig:config];
       _pageViewCtl.delegate = self;
       _pageViewCtl.dataSource = self;
//    _pageViewCtl.selectedIndex = 0;
    [self addChildViewController:_pageViewCtl];
   [self.view addSubview:_pageViewCtl.view];
       [_pageViewCtl.view mas_makeConstraints:^(MASConstraintMaker *make) {
           make.width.mas_equalTo(self.view.bounds.size.width);
           make.left.equalTo(self.view.mas_left);
           make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
           make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
       }];
    [_pageViewCtl reloadData];

}

#pragma mark - Objective-C Delegate            - Method -
//根据index创建对应的视图控制器，每个试图控制器只会被创建一次。
- (UIViewController *)pageViewController:(XLPageViewController *)pageViewController viewControllerForIndex:(NSInteger)index
{
    ChildViewCtl *childVC = [[ChildViewCtl alloc] init];
    return childVC;
}
//根据index返回对应的标题
- (NSString *)pageViewController:(XLPageViewController *)pageViewController titleForIndex:(NSInteger)index
{
    NSArray *array = @[@"app",@"金融",@"打打",@"吃了吗您",@"测试3",@"够了"];
    return array[index];
}

//返回分页数
- (NSInteger)pageViewControllerNumberOfPage
{
    return 6;
}

//- (void)pageViewController:(XLPageViewController *)pageViewController didSelectedAtIndex:(NSInteger)index {
//    self.pageViewCtl.selectedIndex = index;
//}




@end
