//
//  GBTabBarViewController.m
//  GlobalSpace
//
//  Created by 李林 on 16/8/19.
//  Copyright © 2016年 StarSpace. All rights reserved.
//

#import "GBTabBarViewController.h"
#import "GBTabBarView.h"
#import "GBNavigationViewController.h"
#import "GBHomeViewController.h"

@interface GBTabBarViewController ()

@end

@implementation GBTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadChildViewController];
}

- (void)loadCustomTabBar {
    GBTabBarView *costomTabBar = [[GBTabBarView alloc] init];
    [self setValue:costomTabBar forKey:@"tabbar"];
}

- (void)loadChildViewController {
    GBHomeViewController *homeViewController = [[GBHomeViewController alloc] init];
    [self addChildViewController:homeViewController title:@"home" normalImage:@"tabbar_homepage_normal" selectedImage:@"tabbar_homepage_selected"];
    
}

- (void)addChildViewController:(UIViewController *)childController title:(NSString *)title normalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage {
    childController.title = title;
    
    [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor darkGrayColor]} forState:UIControlStateNormal];
    UIImage *normalItem = [UIImage imageNamed:normalImage];
    [childController.tabBarItem setImage:normalItem];
    
    [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    UIImage *selectedItem = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [childController.tabBarItem setSelectedImage:selectedItem];
    GBNavigationViewController *navigationController = [[GBNavigationViewController alloc] initWithRootViewController:childController];
    [self addChildViewController:navigationController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
