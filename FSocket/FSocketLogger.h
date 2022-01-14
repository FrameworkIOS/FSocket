//
//  FSocketLogger.h
//  FSocket
//
//  Created by Apple on 14/01/22.
//

#import <Foundation/Foundation.h>

@interface FSocketLogger:NSObject

@property (nonatomic) BOOL log;

-(void)log:(NSString*)message type:(NSString*)type;
-(void)error:(NSString*)message type:(NSString*)type;

@end
