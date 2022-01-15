//
//  FSocketAck.m
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import "FSocketAck.h"

@implementation FSocketAck

-(instancetype)initWithAck:(int)ack andCallBack:(FScoketAckArrayCallback)callback {
    self = [super init];
    if (self) {
        _ack = ack;
        _callback = callback;
    }
    
    return self;
}

- (NSInteger) hash {
    return _ack;
}

@end
