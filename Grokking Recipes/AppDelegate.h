//
//  AppDelegate.h
//  Grokking Recipes
//
//  Created by Carlos D. Santiago on 6/12/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;


@end

