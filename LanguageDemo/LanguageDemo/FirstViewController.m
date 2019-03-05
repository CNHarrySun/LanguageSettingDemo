//
//  FirstViewController.m
//  LanguageDemo
//
//  Created by 孙浩 on 2019/3/5.
//  Copyright © 2019 HarrySun. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) UILabel *textLabel;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.textLabel];
    
}

- (UILabel *)textLabel {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    label.center = self.view.center;
    label.layer.borderWidth = 1;
    label.layer.borderColor = [UIColor blackColor].CGColor;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = NSLocalizedString(@"test", nil);
    return label;
}

@end
