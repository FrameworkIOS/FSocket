//
//  FSocketAnyEvent.m
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import "FSocketAnyEvent.h"
#import "FSocketAckEmitter.h"

@implementation FSocketAnyEvent

-(NSString *)description {
    return [NSString stringWithFormat:@"FSocketAnyEvent: Event: %d items: %@", (int)_event, _items.description];
}

-(instancetype)initWithEvent:(NSString*)event andItems:(NSArray*)items {
    self = [super init];
    if(self) {
        _event = event;
        _items = items;
    }
    return self;
}

@end


@implementation FSocketEventHandler : NSObject

-(instancetype)initWithEvent:(NSString*)event uuid:(NSUUID*)uuid andCallback:(FSocketOnEventCallback)callback{
    self = [super init];
    if(self) {
        _event = event;
        _uuid = uuid;
        _callback = callback;
    }
    return self;
}

-(void)executeCallbackWith:(NSArray*)items withAck:(int)ack withSocket:(id<FSocketClientProtocol>)socket {
    self.callback(items, [[FSocketAckEmitter alloc] initWithSocket:socket ackNum:ack]);
}
@end
