//
//  ViewController.m
//  TextViewCalculateLength
//
//  Created by 张培创 on 15/3/25.
//  Copyright (c) 2015年 com.duowan. All rights reserved.
//

#import "ViewController.h"
#import "UITextView+PCInputLengthCalculate.h"

@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    NSInteger textLength = [textView getInputLengthWithText:text];
    if (textLength > 20) {
        //超过20个字可以删除
        if ([text isEqualToString:@""]) {
            return YES;
        }
        return NO;
    }
    return YES;
}

- (void)textViewDidChange:(UITextView *)textView
{
    if ([textView getInputLengthWithText:nil] > 20) {
        textView.text = [textView.text substringToIndex:20];
    }
}

@end
