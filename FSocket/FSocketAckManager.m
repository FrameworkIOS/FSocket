//
//  FSocketAckManager.m
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import "FSocketAckManager.h"
#import "FSocketAck.h"

@interface FSocketAckManager() {
    NSMutableSet<FSocketAck*>*acks;
    dispatch_semaphore_t ackSemaphore;
}

@end

@implementation FSocketAckManager

-(instancetype)init {
    self = [super init];
    if(self) {
        acks = [NSMutableSet set];
        ackSemaphore = dispatch_semaphore_create(0);
    }
    return self;
}

-(void)addAck:(int)ack callback:(FScoketAckArrayCallback)callback {
    [acks addObject:[[FSocketAck alloc] initWithAck:ack andCallBack:callback]];
}

-(void)executeAck:(int)ack withItems:(NSArray*)items onQueue:(dispatch_queue_t)queue {
    FSocketAck *socketAck = [self removeAckWithId:ack];
    dispatch_async(queue, ^
    {
        @autoreleasepool
        {
            if(socketAck && socketAck.callback) {
                socketAck.callback(items);
            }
        }
    });
    
}
-(void)timeoutAck:(int)ack onQueue:(dispatch_queue_t)queue {
    FSocketAck *socketAck = [self removeAckWithId:ack];
    dispatch_async(queue, ^
    {
        @autoreleasepool
        {
            if(socketAck && socketAck.callback) {
                socketAck.callback(@[@"NO ACK"]);
            }
        }
    });
}

-(FSocketAck*)removeAckWithId:(int)ack {
    
    dispatch_semaphore_wait(ackSemaphore,DISPATCH_TIME_FOREVER);
    FSocketAck *socketAck = nil;
    for (FSocketAck *vpack in acks) {
        if(vpack.ack == ack) {
            socketAck = vpack;
        }
    }
    [acks removeObject:socketAck];
    dispatch_semaphore_signal(ackSemaphore);
    return socketAck;
}

@end

