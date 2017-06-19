//
//  ViewController.m
//  Grokking Recipes
//
//  Created by Carlos D. Santiago on 6/12/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)saveAction:(id)sender
{
    
}

- (IBAction)addImage:(id)sender
{
    id recipe = self.Recipes.selectedObjects.firstObject;
    if (!recipe) return;
    
    NSOpenPanel * openPanel = [NSOpenPanel openPanel];
    
	openPanel.canChooseFiles = YES;
    openPanel.canChooseDirectories = NO;
    openPanel.canCreateDirectories = NO;
    openPanel.allowsMultipleSelection = NO;
	openPanel.allowedFileTypes = @[@"gif",@"jpg",@"jpeg",@"png",@"tif",@"tiff"];

	switch ([openPanel runModal]) {
		case NSModalResponseCancel:
			return;
		default:
			break;
	}

	NSURL * imageURL = openPanel.URLs.firstObject;
	NSString * destPath = [(AppDelegate *)[NSApp delegate] applicationSupportFolder];
	NSURL * destURL = [NSURL fileURLWithPath:destPath];
	NSError * error = nil;
	
	[[NSFileManager defaultManager] copyItemAtURL:imageURL toURL:destURL error:&error];
	if (error) {
		[NSApp presentError:error];
	}
	else
	{
		NSString * imagePath = [imageURL path];
		
		[recipe setValue:imagePath forKey:@"imagePath"];
	}
}

@end
