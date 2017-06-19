//
//  ViewController.h
//  Grokking Recipes
//
//  Created by Carlos D. Santiago on 6/12/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (strong) IBOutlet NSArrayController *Recipes;
@property (strong) IBOutlet NSArrayController *Ingredients;
@property (strong) IBOutlet NSArrayController *Types;

- (IBAction)saveAction:(id)sender;
- (IBAction)addImage:(id)sender;

@end

