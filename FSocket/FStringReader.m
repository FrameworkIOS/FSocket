//
//  FStringReader.m
//  FSocket
//
//  Created by Apple on 14/01/22.
//

#import "FStringReader.h"

@implementation FStringReader

-(instancetype)init:(NSString*)message {
    self = [super init];
    if (self) {
        _message = message;
        _currentIndex = 0;
    }
    
    return self;
}

-(BOOL)hasNext {
    return _currentIndex < _message.length -1;
}

-(NSString*)currentCharacter {
    if(_currentIndex >= 0 && _currentIndex< _message.length) {
        return [_message substringWithRange:NSMakeRange(_currentIndex, 1)];
    }
    
    return nil;
}

-(int)advance:(int)offset {
    _currentIndex += offset;
    return _currentIndex;
}

@end
