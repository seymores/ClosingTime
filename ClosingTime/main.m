//
//  main.m
//  ClosingTime
//
//  Created by Teo Choong Ping on 9/14/09.
//  Copyright FavoriteMedium.com 2009. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SystemTray.h"


int main(int argc, char *argv[])
{

	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    [NSApplication sharedApplication];
	
    SystemTray *menu = [[SystemTray alloc] init];
    [NSApp setDelegate:menu];
    [NSApp run];
	
    [pool release];
    return EXIT_SUCCESS;
	
}
