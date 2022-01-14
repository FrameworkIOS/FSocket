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


-(void)dealloc {
    
}

@end
