//
//  XQaccent.m
//  fuckGFW
//
//  Created by xiong on 15/10/25.
//  Copyright © 2015年 x. All rights reserved.
//

#import "XQaccent.h"
@interface XQaccent()<NSCoding>
@end
@implementation XQaccent
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.password = [aDecoder decodeObjectForKey:@"password"];
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.password forKey:@"password"];

}
@end
