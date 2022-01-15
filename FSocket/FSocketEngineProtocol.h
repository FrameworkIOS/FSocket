//
//  FSocketEngineProtocol.h
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#ifndef FSocketEngineProtocol_h
#define FSocketEngineProtocol_h

#import <Foundation/Foundation.h>

@protocol FSocketEngineClient <NSObject>

@required

-(void)engineDidError:(NSString*)reason;
-(void)engineDidOpen:(NSString*)reason;
-(void)engineDidClose:(NSString*)reason;
-(void)parseEngineMessage:(NSString*)msg;
-(void)parseEngineBinaryData:(NSData*)data;

@end

@protocol FSocketEngineProtocol <NSObject>

@required

@property (nonatomic, readonly) BOOL closed;
@property (nonatomic, readonly) BOOL connected;

-(void)connect;

@end

#endif /* FSocketEngineProtocol_h */
