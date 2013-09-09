//
//  PruebaViewController.h
//  Farmapedia
//
//  Created by Diego Murillo on 07/09/13.
//  Copyright (c) 2013 Diego Murillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PruebaViewController : UIViewController

@property(nonatomic, strong) NSString * characterName;
@property int characterNumber;

@property (weak, nonatomic) IBOutlet UIImageView *myImage;

@end
