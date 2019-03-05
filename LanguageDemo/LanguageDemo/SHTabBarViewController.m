//
//  SHTabBarViewController.m
//  LanguageDemo
//
//  Created by 孙浩 on 2019/3/5.
//  Copyright © 2019 HarrySun. All rights reserved.
//

#import "SHTabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface SHTabBarViewController ()

@end

@implementation SHTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:firstVC];
    firstNav.tabBarItem.title = NSLocalizedString(@"firstVC", nil);
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:secondVC];
    secondNav.tabBarItem.title = NSLocalizedString(@"secondVC", nil);
    
    self.viewControllers = @[firstNav,secondNav];
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
