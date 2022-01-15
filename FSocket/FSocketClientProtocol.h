//
//  FSocketClientProtocol.h
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#ifndef FSocketClientProtocol_h
#define FSocketClientProtocol_h


#import <Foundation/Foundation.h>
@class FSocketAckManager;
@class FSocketAckEmitter;

typedef void (^FSocketAckArrayCallback)(NSArray*array);
typedef void (^FSocketOnEventCallback)(NSArray*array, FSocketAckEmitter*emitter);

@protocol FSocketIOClientProtocol <NSObject>

@required

@property (nonatomic, strong) FSocketAckManager *ackHandlers;
@property (nonatomic, strong, readonly) dispatch_queue_t handleQueue;

-(void)emit: (NSString*)event items:(NSArray*)items;

@end

#endif /* FSocketClientProtocol_h */
