//
//  FSocketLogger.m
//  FSocket
//
//  Created by Apple on 14/01/22.
//

#import "FSocketLogger.h"

@implementation FSocketLogger

- (instancetype) init {
    self = [super init];
    if (self) {
        self.log = NO;
    }
    
    return self;
}

-(void) log:(NSString*)message type:(NSString*)type {
}

-(void) error:(NSString*)message type:(NSString*)type {
}

-(void) printLog:(NSString*)logType message:(NSString*)message type:(NSString*)type
{
    if(_log) {
        NSLog(@"%@ %@: %@", logType, type, message);
    }
    
}

-(void)dealloc {
    
}

@end
