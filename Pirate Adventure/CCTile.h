//
//  CCTile.h
//  Pirate Adventure
//
//  Created by Norris Wise on 2/4/16.
//  Copyright © 2016 Sample. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CCWeapon.h"
#import "CCArmor.h"

@interface CCTile : NSObject

@property(strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) CCWeapon *weapon;
@property (strong, nonatomic) CCArmor *armor;
@property (nonatomic) int healthEffect;

@end
