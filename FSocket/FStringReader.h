//
//  FStringReader.h
//  FSocket
//
//  Created by Apple on 14/01/22.
//

#import <Foundation/Foundation.h>

@interface FStringReader : NSObject

@property (nonatomic, strong, readonly) NSString *message;
@property (nonatomic) int currentIndex;

-(instancetype)init:(NSString*)message;

-(NSString*)currentCharacter;
-(BOOL)hasNext;

-(NSString*)read:(int)count;

-(int)advance:(int)offset;

@end
