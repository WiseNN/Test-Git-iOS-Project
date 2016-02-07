//
//  CCCharacter.h
//  Pirate Adventure
//
//  Created by Norris Wise on 2/6/16.
//  Copyright © 2016 Sample. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCArmor.h"
#import "CCWeapon.h"
@interface CCCharacter : NSObject

@property (strong, nonatomic) CCArmor *armor;
@property (strong, nonatomic) CCWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;


@end
