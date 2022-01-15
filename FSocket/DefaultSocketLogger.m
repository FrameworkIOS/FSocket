//
//  DefaultSocketLogger.m
//  FSocket
//
//  Created by Apple on 15/01/22.
//

#import "DefaultSocketLogger.h"

@implementation DefaultSocketLogger

static FSocketLogger *logInstance;

+(void)setLogger:(FSocketLogger*)newLogger {
    logInstance = newLogger;
}

+(FSocketLogger*)logger {
    return logInstance;
}

@end
