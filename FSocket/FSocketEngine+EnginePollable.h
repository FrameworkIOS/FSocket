//
//  FSocketEngine+EnginePollable.h
//  FSocket
//
//  Created by Apple on 16/01/22.
//

#import "FSocketEngine.h"
#import "FSocketEngine+Private.h"

@interface FSocketEngine (EnginePollable)

- (void) doPoll;
- (void) stopPolling;
- (void) disconnectPolling;

@end
