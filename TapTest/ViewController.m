//
//  ViewController.m
//  TapTest
//
//  Created by Greg Hewgill on 26/11/12.
//  Copyright (c) 2012 Greg Hewgill. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    UILabel *info;
    UIGestureRecognizer *tapper;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    info = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 20)];
    [self.view addSubview:info];
    
    tapper = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.view addGestureRecognizer:tapper];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)handleTap:(UIGestureRecognizer *)sender
{
    CGPoint p = [sender locationInView:self.view];
    NSLog(@"tap %g,%g", p.x, p.y);
    info.text = [NSString stringWithFormat:@"tap %ld %g,%g", time(NULL), p.x, p.y];
}

@end
