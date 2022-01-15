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

@end
