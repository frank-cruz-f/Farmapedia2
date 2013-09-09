//
//  PruebaViewController.m
//  Farmapedia
//
//  Created by Diego Murillo on 07/09/13.
//  Copyright (c) 2013 Diego Murillo. All rights reserved.
//

#import "PruebaViewController.h"

@interface PruebaViewController ()

@end

@implementation PruebaViewController
@synthesize myImage;
@synthesize characterName, characterNumber;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = characterName;
    NSLog(@"characterNumber is %i", characterNumber);
    NSLog(@"characterName is %@", characterName);
    
    
    //Create all the UIImage objects
    UIImage * darthVader = [UIImage imageNamed:@"01.jpg"];
    UIImage * darthMaul = [UIImage imageNamed:@"01.jpg"];
    UIImage * darthSidious = [UIImage imageNamed:@"01.jpg"];
    
    //Display the appropriate image
    switch (characterNumber)
    {
        case 0:
            myImage.image = darthVader;
            break;
        case 1:
            myImage.image = darthMaul;
            break;
        case 2:
            myImage.image = darthSidious;
            break;
        default:
            break;
    }
}

- (void)viewDidUnload
{
    [self setMyImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

