//
//  NSString+FSocket.m
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import "NSString+FSocket.h"

@implementation NSString (FSocket)

-(NSDictionary*)toDictionary {
    NSData *binData = [self dataUsingEncoding:NSUnicodeStringEncoding allowLossyConversion:NO];
    if (binData != nil) {
        NSError *error = nil;
        id json = [NSJSONSerialization JSONObjectWithData:binData options:NSJSONReadingAllowFragments error:&error];
        if(error == nil && [json isKindOfClass:[NSDictionary class]]) {
            return json;
        }
    }
    
    return nil;
}

-(NSString*)urlEncode {
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

-(NSArray*)toArray {
    NSData *binData = [self dataUsingEncoding:NSUnicodeStringEncoding allowLossyConversion:NO];
    if (binData != nil) {
        NSError *error = nil;
    }
    
    return nil
}


@end
