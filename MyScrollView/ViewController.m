//
//  ViewController.m
//  MyScrollView
//
//  Created by Kelo Akalamudo on 11/2/15.
//  Copyright © 2015 Kelo. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic) UIView *                mainView;
@property (nonatomic) MyScrollView*           scrollView;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //
    //    self.mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];

    self.scrollView = [[MyScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, 1000);
//    self.scrollView.scrollHorizontal = NO;
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    
    redView.backgroundColor = [UIColor redColor];
    greenView.backgroundColor = [UIColor greenColor];
    blueView.backgroundColor = [UIColor blueColor];
    yellowView.backgroundColor = [UIColor yellowColor];
    self.mainView.backgroundColor = [UIColor whiteColor];
    
    [self.scrollView addSubview:redView];
    [self.scrollView addSubview:greenView];
    [self.scrollView addSubview:blueView];
    [self.scrollView addSubview:yellowView];
    [self.view addSubview:self.scrollView];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
//    self.view.frame.contentOffset = CGPointMake(100, 0);
    self.view.bounds = CGRectMake(0, 100, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame));
    
    
    

}
@end
