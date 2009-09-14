//
//  SystemTray.m
//  ClosingTime
//
//  Created by Teo Choong Ping on 9/14/09.
//  Copyright 2009 FavoriteMedium.com. All rights reserved.
//

#import "SystemTray.h"
#import "ProjectManager.h"


@implementation SystemTray


-(IBAction)startTaskTracker:(id)sender {
	
}

-(IBAction)pauseCurrentTask:(id)sender {
	
}

-(IBAction)showReport:(id)sender {
	
}

-(IBAction)showPreference:(id)sender {
	
}

-(IBAction)showProjectManager:(id)sender {
	
}

-(IBAction)exitApplication:(id)sender {
	exit(EXIT_SUCCESS);
}

-(NSMenu *)createMenu {
	NSZone *menuZone = [NSMenu menuZone];
	NSMenu *menu = [[NSMenu allocWithZone:menuZone] init];
	NSMenuItem *menuItem;
	
	// Add To Items
	menuItem = [menu addItemWithTitle:@"Start"
						action:@selector(startTaskTracker:)
						keyEquivalent:@""];
	[menuItem setTarget:self];

	NSMenu *taskMenu = [[NSMenu alloc] initWithTitle:@""];
	[menuItem setSubmenu:taskMenu];
	
	[menu addItem:[NSMenuItem separatorItem]];
	
	menuItem = [menu addItemWithTitle:@"Projects"
						action:@selector(showProjectManager:)
						keyEquivalent:@""];
	[menuItem setTarget:self];
	
	menuItem = [menu addItemWithTitle:@"Reports"
						action:@selector(showReport:)
						keyEquivalent:@""];
	[menuItem setTarget:self];
	
	// Add Separator
	[menu addItem:[NSMenuItem separatorItem]];
	
	// Add Quit Action
	menuItem = [menu addItemWithTitle:@"Quit"
							   action:@selector(exitApplication:)
						keyEquivalent:@""];
	[menuItem setToolTip:@"Click to Quit this App"];
	[menuItem setTarget:self];
	
	return menu;	
}

- (void) applicationDidFinishLaunching:(NSNotification *)notification {
	NSMenu *menu = [self createMenu];
	
	statusItem = [[[NSStatusBar systemStatusBar]
					statusItemWithLength:NSSquareStatusItemLength] retain];
	[statusItem setMenu:menu];
	[statusItem setHighlightMode:YES];
	[statusItem setToolTip:@"Closing Time"];
	[statusItem setImage:[NSImage imageNamed:@"50-beaker"]];
	
	[menu release];
}


@end
