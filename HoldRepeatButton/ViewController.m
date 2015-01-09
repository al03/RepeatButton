//
//  ViewController.m
//  HoldRepeatButton
//
//  Created by Albert Mao on 1/9/15.
//  Copyright (c) 2015 Albert Mao. All rights reserved.
//

#import "ViewController.h"
#import "RepeatButton.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet RepeatButton *btnRepeat;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.btnRepeat.repeatDuration = 0.01;
    [self.btnRepeat actionWithHoldBlock:^{
        NSLog(@"holding");
    } raleasBlock:^{
        NSLog(@"release");
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
