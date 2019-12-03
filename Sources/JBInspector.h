//
//  JBInspector.h
//  JBInspector
//
//  Created by Yusuke Arakawa on 2019/01/01.
//  Copyright © 2019 Nekolaboratory. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JBInspector : NSObject

+ (BOOL)isJailbreak;
+ (BOOL)isIGGInstalled;
+ (BOOL)isDebuggerAttached;

@end
