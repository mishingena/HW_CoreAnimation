//
//  ViewController.m
//  HW_CoreAnimation
//
//  Created by Alexander on 30.04.15.
//  Copyright (c) 2015 Alexander. All rights reserved.
//

#import "ViewController.h"
#import <FLAnimatedImage.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"anim" ofType:@"gif"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    FLAnimatedImage *image = [FLAnimatedImage animatedImageWithGIFData:data];
    FLAnimatedImageView *imageView = [[FLAnimatedImageView alloc] init];
    imageView.animatedImage = image;
    imageView.frame = self.view.bounds;
    imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
