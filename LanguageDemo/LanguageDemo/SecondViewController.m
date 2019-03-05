//
//  SecondViewController.m
//  LanguageDemo
//
//  Created by 孙浩 on 2019/3/5.
//  Copyright © 2019 HarrySun. All rights reserved.
//

#import "SecondViewController.h"
#import "LanguageUtility/LanguageManager.h"
#import "SHTabBarViewController.h"

@interface SecondViewController ()

@property (nonatomic, strong) UIButton *zhButton;
@property (nonatomic, strong) UIButton *enButton;
@property (nonatomic, strong) UIButton *resetButton;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.zhButton];
    [self.view addSubview:self.enButton];
    [self.view addSubview:self.resetButton];
    
}


- (void)zhAction {
    [[LanguageManager sharedLanguageManager] setLocalizableLanguage:@"zh-Hans"];
    [self setRootVC];
}

- (void)enAction {
    [[LanguageManager sharedLanguageManager] setLocalizableLanguage:@"en"];
    [self setRootVC];
}

- (void)resetAction {
    [[LanguageManager sharedLanguageManager] setLocalizableLanguage:@""];
    [self setRootVC];
}

- (void)setRootVC {
    SHTabBarViewController *tabBarVC = [[SHTabBarViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tabBarVC];
    [UIApplication sharedApplication].keyWindow.rootViewController = nav;
}

- (UIButton *)zhButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 50);
    button.center = CGPointMake(self.view.center.x, 150);
    [button setTitle:NSLocalizedString(@"zh-Hans", nil) forState:UIControlStateNormal];
    [button addTarget:self action:@selector(zhAction) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (UIButton *)enButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 50);
    button.center = CGPointMake(self.view.center.x, 250);
    [button setTitle:NSLocalizedString(@"en", nil) forState:UIControlStateNormal];
    [button addTarget:self action:@selector(enAction) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (UIButton *)resetButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 50);
    button.center = CGPointMake(self.view.center.x, 350);
    [button setTitle:NSLocalizedString(@"reset", nil) forState:UIControlStateNormal];
    [button addTarget:self action:@selector(resetAction) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

@end
