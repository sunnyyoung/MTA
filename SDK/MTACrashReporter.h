//
//  crashreporter.h
//  crashreporter
//
//  Created by tyzual on 12/04/2017.
//  Copyright © 2017 tyzual. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTACrashReporter : NSObject

/**
 单例方法，返回崩溃报告的共享实例

 @return 崩溃报告的共享实例
 */
+ (instancetype)sharedInstance;

/**
 设置自定义的tag
 崩溃发生时，会将已经设置的tag上报，以便定位问题

 @param key tag的Key，若key已经设置，则新的value会覆盖旧的value
 @param value tag的value
 */
- (void)customTag:(NSString *)key value:(NSString *)value;

/**
 输出诊断信息
 崩溃发生时，会将最后输出的50条诊断信息上报，以便定位问题

 @param log 诊断信息
 */
- (void)trace:(NSString *)log;

@end
