//
//  ChildViewCtl.m
//  test
//
//  Created by songerxi on 2020/9/8.
//  Copyright © 2020 宋二喜. All rights reserved.
//

#import "ChildViewCtl.h"

@interface ChildViewCtl ()

@end

@implementation ChildViewCtl

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:arc4random() % 255/255.0
    green:arc4random() % 255/255.0
     blue:arc4random() % 255/255.0
                                                alpha:1];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
