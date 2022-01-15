//
//  FSocketAckManager.h
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import <Foundation/Foundation.h>
#import "FSocketClientProtocol.h"

@interface FSocketAckManager : NSObject

-(void)addAck:(int)ack callback:(FSocketAckArrayCallback)callback;
-(void)executeAck:(int)ack withItems:(NSArray*)items onQueue:(dispatch_queue_t)queue;

@end
