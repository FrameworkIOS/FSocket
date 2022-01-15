//
//  FSocketAck.h
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import <Foundation/Foundation.h>
#import "FSocketClientProtocol.h"

@interface FSocketAck : NSObject

@property (nonatomic, readonly) int ack;
@property (nonatomic, strong, readonly) FScoketAckArrayCallback callback;

-(instancetype)initWithAck:(int)ack andCallBack:(FScoketAckArrayCallback)callback;

@end

