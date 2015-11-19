//
//  ViewController.h
//  testNotice
//
//  Created by PC_201310113421 on 15/11/19.
//  Copyright © 2015年 PC_201310113421. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    __weak IBOutlet UILabel *kovLabel;
    __weak IBOutlet UILabel *otherLabel;
   
    NSString *kvoStr;
}
@property(nonatomic,assign) NSInteger count;
- (IBAction)kvoBtnClick:(id)sender;

@end

