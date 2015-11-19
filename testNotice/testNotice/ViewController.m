//
//  ViewController.m
//  testNotice
//
//  Created by PC_201310113421 on 15/11/19.
//  Copyright © 2015年 PC_201310113421. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //注册通知
    
    self.count=0;
    
}

-(void)viewDidAppear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(reciveNotfi:) name:@"testNot" object:nil];
    [self addObserver:self forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:nil];
}

-(void)viewDidDisappear:(BOOL)animated{
    [self removeObserver:self forKeyPath:@"count"];
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"testNot" object:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)kvoBtnClick:(id)sender {
    self.count+=1;
//    kvoStr=
}

-(void)reciveNotfi:(NSNotification *)sender{
    NSDictionary *userInfo=sender.userInfo;
    otherLabel.text=[userInfo objectForKey:@"value"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:@"count"]) {
        kovLabel.text=[NSString stringWithFormat:@"%d",[[change objectForKey:@"new"] integerValue]];
    }
}
@end
