//
//  FSocketAnyEvent.h
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import <Foundation/Foundation.h>
#import "FSocketClientProtocol.h"

@interface FSocketAnyEvent : NSObject

@property (nonatomic, strong, readonly) NSString* event;
@property (nonatomic, strong, readonly) NSArray *items;

-(instancetype)initWithEvent:(NSString*)event andItems:(NSArray*)items;

@end


@interface FSocketEventHandler : NSObject

@property (nonatomic, strong, readonly) NSString* event;
@property (nonatomic, strong, readonly) NSUUID *uuid;
@property (nonatomic, strong, readonly) FSocketOnEventCallback callback;

-(instancetype)initWithEvent:(NSString*)event uuid:(NSUUID*)uuid andCallback:(FSocketOnEventCallback)callback;

-(void)executeCallbackWith:(NSArray*)items withAck:(int)ack withSocket:(id<FSocketIOClientProtocol>)socket;
@end

