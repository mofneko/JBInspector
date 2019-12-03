//
//  JBInspector.mm
//  JBInspector
//
//  Created by Yusuke Arakawa on 2019/01/01.
//  Copyright © 2019 Nekolaboratory. All rights reserved.
//

#import "JBInspector.h"
#include <sys/sysctl.h>

@implementation JBInspector

+ (BOOL)isJailbreak
{
    NSFileManager *fileManager = [NSFileManager defaultManager];

    if ([fileManager fileExistsAtPath:@"/Applications/Cydia.app"]) {
        return YES;
    } else if ([fileManager fileExistsAtPath:@"/etc/apt/sources.list.d/sileo.sources"]) {
        return YES;
    } else if ([fileManager fileExistsAtPath:@"/etc/apt/sillyo/sileo.sources"]) {
        return YES;
    } else if ([fileManager fileExistsAtPath:@"/Library/MobileSubstrate/MobileSubstrate.dylib"]) {
        return YES;
    } else if ([fileManager fileExistsAtPath:@"/bin/bash"]) {
        return YES;
    } else if ([fileManager fileExistsAtPath:@"/usr/sbin/sshd"]) {
        return YES;
    } else if ([fileManager fileExistsAtPath:@"/etc/apt"]) {
        return YES;
    } else if ([fileManager fileExistsAtPath:@"/usr/bin/ssh"]) {
        return YES;
    }
    
    int root = getgid();
    if (root <= 10) {
        return YES;
    }

    return NO;
}

+ (BOOL)isIGGInstalled
{
    NSFileManager *fileManager = [NSFileManager defaultManager];

    if ([fileManager fileExistsAtPath:@"/Applications/iGameGuardian.app"]) {
        return YES;
    }

    return NO;
}

+ (BOOL)isDebuggerAttached
{
    size_t size = sizeof(struct kinfo_proc);
    struct kinfo_proc info;
    int ret;

    memset(&info, 0, sizeof(struct kinfo_proc));

    int name[] =
    {
        CTL_KERN,
        KERN_PROC,
        KERN_PROC_PID,
        getpid()
    };

    if ((ret = (sysctl(name, 4, &info, &size, NULL, 0)))) {
        return ret;
    }

    return (info.kp_proc.p_flag & P_TRACED) ? 1 : 0;
}

@end
