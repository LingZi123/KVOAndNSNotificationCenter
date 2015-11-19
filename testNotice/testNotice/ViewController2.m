//
//  ViewController2.m
//  testNotice
//
//  Created by PC_201310113421 on 15/11/19.
//  Copyright © 2015年 PC_201310113421. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [dTF resignFirstResponder];
}
- (IBAction)dissmissClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        //发出通知va
        [[NSNotificationCenter defaultCenter]postNotificationName:@"testNot" object:nil userInfo:@{@"value":dTF.text}];
    }];
}
@end
