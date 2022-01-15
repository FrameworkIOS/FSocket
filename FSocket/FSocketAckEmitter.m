//
//  FSocketAckEmitter.m
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import "FSocketAckEmitter.h"

@interface FSocketAckEmitter()

@property (nonatomic, strong) id<FSocketClientProtocol> socket;
@property (nonatomic) int ackNum;

@end

@implementation FSocketAckEmitter

-(instancetype)initWithSocket:(id<FSocketClientProtocol>)socket ackNum:(int)ack
{
    self = [super init];
    if(self) {
        self.socket = socket;
        self.ackNum = ack;
    }
    return self;
}


-(void)emitWith:(NSArray*) items {
    if(_ackNum != -1) {
        [_socket emitAck:_ackNum withItems:items];
    }
}

@end

