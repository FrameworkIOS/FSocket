//
//  FSocketAckEmitter.h
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import <Foundation/Foundation.h>
#import "FSocketClientProtocol.h"

@interface FSocketAckEmitter : NSObject

-(instancetype)initWithSocket:(id<FSocketClientProtocol>)socket ackNum:(int)ack;
-(void)emitWith:(NSArray*) items;

@end

