//
//  NSString+MK_Base64.m
//  MKFoundation
//
//  Created by Michal Konturek on 26/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

//
//  Base64.h
//
//  Version 1.1
//
//  Created by Nick Lockwood on 12/01/2012.
//  Copyright (C) 2012 Charcoal Design
//
//  Distributed under the permissive zlib License
//  Get the latest version from here:
//
//  https://github.com/nicklockwood/Base64
//
//  This software is provided 'as-is', without any express or implied
//  warranty.  In no event will the authors be held liable for any damages
//  arising from the use of this software.
//
//  Permission is granted to anyone to use this software for any purpose,
//  including commercial applications, and to alter it and redistribute it
//  freely, subject to the following restrictions:
//
//  1. The origin of this software must not be misrepresented; you must not
//  claim that you wrote the original software. If you use this software
//  in a product, an acknowledgment in the product documentation would be
//  appreciated but is not required.
//
//  2. Altered source versions must be plainly marked as such, and must not be
//  misrepresented as being the original software.
//
//  3. This notice may not be removed or altered from any source distribution.
//

#import "NSString+MK_Base64.h"

#import "MKFoundation.h"

@implementation NSString (MK_Base64)

+ (NSString *)MK_stringWithBase64EncodedString:(NSString *)string {
    NSData *data = [NSData MK_dataWithBase64EncodedString:string];
    if (!data) return nil;
    
    return [[self alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (NSString *)MK_base64DecodedString {
    return [NSString MK_stringWithBase64EncodedString:self];
}

- (NSString *)MK_base64EncodedString {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    return [data MK_base64EncodedString];
}

- (NSString *)MK_base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    return [data MK_base64EncodedStringWithWrapWidth:wrapWidth];
}

- (NSData *)MK_base64DecodedData {
    return [NSData MK_dataWithBase64EncodedString:self];
}

- (NSData *)MK_base64EncodedData {
    return [self dataUsingEncoding:NSUTF8StringEncoding];
}

@end
