//
//  SystemTray.h
//  ClosingTime
//
//  Created by Teo Choong Ping on 9/14/09.
//  Copyright 2009 FavoriteMedium.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface SystemTray : NSObject {
	@private NSStatusItem *statusItem;
}

-(IBAction)startTaskTracker:(id)sender;
-(IBAction)pauseCurrentTask:(id)sender;
-(IBAction)showReport:(id)sender;
-(IBAction)showPreference:(id)sender;
-(IBAction)showProjectManager:(id)sender;
-(IBAction)exitApplication:(id)sender;

@end
