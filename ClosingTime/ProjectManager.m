//
//  ProjectManager.m
//  ClosingTime
//
//  Created by Teo Choong Ping on 9/14/09.
//  Copyright 2009 FavoriteMedium.com. All rights reserved.
//

#import "ProjectManager.h"


@implementation ProjectManager

static ProjectManager *instance = nil;


+ (ProjectManager *)sharedProjectManager {
	
	@synchronized(self) {
		if (instance == nil) {
			[[self alloc] init];
		}
	}
	return instance;
}

@end
