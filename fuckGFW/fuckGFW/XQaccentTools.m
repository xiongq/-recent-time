//
//  XQaccentTools.m
//  fuckGFW
//
//  Created by xiong on 15/10/25.
//  Copyright © 2015年 x. All rights reserved.
//
#define AccountPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"account.plist"]
#import "XQaccentTools.h"
#import "XQaccent.h"
@implementation XQaccentTools
+(void)SaveAccent:(XQaccent *)accent{
    [NSKeyedArchiver archiveRootObject:accent toFile:AccountPath];
}
+(XQaccent *)accent{
    XQaccent *accent = [NSKeyedUnarchiver unarchiveObjectWithFile:AccountPath];
    return accent;

}
@end
