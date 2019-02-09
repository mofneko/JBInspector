#import "JBInspector.h"

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

    return NO;
}

@end
