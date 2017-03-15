//
//  AlertViewManager.h
//  Alert
//
//  Created by 李志华 on 17/2/27.
//  Copyright (c) 2017年 李志华. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^actionHandler)(UIAlertAction *action, NSUInteger index);
typedef void(^textFieldHandler)(UITextField *textField, NSUInteger index);

@interface AlertViewManager : NSObject

/**
 *  按钮--中间
 *
 *  @param title           提示标题
 *  @param message         提示信息
 *  @param textFieldNumber 输入框个数
 *  @param isHaveDes       是否有警告按钮(字体红色)
 *  @param actionNumber    按钮个数
 *  @param actionTitle     按钮标题，数组
 *  @param textFieldHandle 输入框响应事件
 *  @param actionHandle    按钮响应事件
 */
+ (void)alertWithTitle:(NSString *)title
               message:(NSString *)message
       textFieldNumber:(NSUInteger)textFieldNumber
          actionNumber:(NSUInteger)actionNumber
          actionTitles:(NSArray *)actionTitle
      textFieldHandler:(textFieldHandler)textFieldHandler
         actionHandler:(actionHandler)actionHandler;


/**
 *  按钮--底部
 *
 *  @param title           提示标题
 *  @param message         提示信息
 *  @param actionNumber    按钮个数
 *  @param actionTitle     按钮标题，数组
 *  @param actionHandle    按钮响应事件
 */
+ (void)actionSheettWithTitle:(NSString *)title
                      message:(NSString *)message
                 actionNumber:(NSUInteger)actionNumber
                 actionTitles:(NSArray *)actionTitle
                actionHandler:(actionHandle)actionHandler;







 @end
