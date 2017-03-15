

//
//  AlertViewManager.m
//  Alert
//
//  Created by 李志华 on 17/2/27.
//  Copyright (c) 2017年 李志华. All rights reserved.
//

#import "AlertViewManager.h"

@implementation AlertViewManager
+ (void)alertWithTitle:(NSString *)title
               message:(NSString *)message
       textFieldNumber:(NSInteger)textFieldNumber
          actionNumber:(NSInteger)actionNumber
          actionTitles:(NSArray *)actionTitle
       textFieldHandle:(textFieldHandle)textFieldHandle
          actionHandle:(actionHandle)actionHandle {
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (textFieldNumber > 0) {
        for (int i = 0; i < textFieldNumber; i++) {
            [alertC addTextFieldWithConfigurationHandler:^(UITextField *textField) {
                textFieldHandle(textField, i);
            }];
        }
    }
    if (actionNumber > 0) {
        for (int i = 0; i < actionNumber; i++) {
            UIAlertAction *action = [UIAlertAction actionWithTitle:actionTitle[i] style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)  {
                actionHandle(action, i);
            }];
            [alertC addAction:action];
        }
    }
    [[UIApplication sharedApplication].delegate.window.rootViewController presentViewController:alertC animated:YES completion:nil];
}


+ (void)actionSheettWithTitle:(NSString *)title
                      message:(NSString *)message
                 actionNumber:(NSInteger)actionNumber
                 actionTitles:(NSArray *)actionTitle
                 actionHandle:(actionHandle)actionHandle {
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    if (actionNumber > 0) {
        for (int i = 0; i < actionNumber; i++) {
            UIAlertAction *action = [UIAlertAction actionWithTitle:actionTitle[i] style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)  {
                actionHandle(action, i);
            }];
            [alertC addAction:action];
        }
    }
    [[UIApplication sharedApplication].delegate.window.rootViewController presentViewController:alertC animated:YES completion:nil];
}





@end
