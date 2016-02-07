//
//  CCFactory.m
//  Pirate Adventure
//
//  Created by Norris Wise on 2/4/16.
//  Copyright © 2016 Sample. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCFactory.h"
#import "CCTile.h"
@implementation CCFactory

-(NSArray *)tiles
{
    
    CCTile *tile1 = [[CCTile alloc]init];
    tile1.story =@"Captian, we need a fearless leader such as yourself to undertake the voyage. You just stopped the eval pirate boss! Would you like a blunted sword to get started?!?!";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    CCWeapon *bluntedSword = [[CCWeapon alloc]init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword!";
    
    CCTile *tile2 = [[CCTile alloc]init];
    tile2.story =@"You have come across an armory. Would you like to upgrade your armor to steer armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    CCArmor *steelArmor = [[CCArmor alloc]init];
    steelArmor.name = @"Steel armor";
    steelArmor.health = 8;
    tile2.actionButtonName = @"Take Armor!";
    
    CCTile *tile3 = [[CCTile alloc]init];
    tile3.story =@"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock!";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc]init];
    [firstColumn addObjectsFromArray:@[tile1, tile2, tile3]];
    
    CCTile *tile4 = [[CCTile alloc]init];
    tile4.story =@"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fiercly loyal to thier caption!";
    CCArmor *parrotArmor = [[CCArmor alloc]init];
    parrotArmor.name = @"Parrot";
    
    tile4.backgroundImage = [UIImage imageNamed: @"PirateParrot.jpg"];
    tile4.actionButtonName = @"Adopt Parrot!";
    
    CCTile *tile5 = [[CCTile alloc]init];
    tile5.story =@"You have stumbled upon a cache of Pirate Weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile5.actionButtonName = @"Use Pistol!";
    
    CCTile *tile6 = [[CCTile alloc]init];
    CCWeapon *pistolWeapon = [[CCWeapon alloc]init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    
    tile6.story =@"You have been captured by pirates and are ordered to walk the plank!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    NSMutableArray *secondColumn = [[NSMutableArray alloc]init];
    [secondColumn addObjectsFromArray:@[tile4, tile5, tile6]];
    tile6.actionButtonName = @"Show No Fear!";
    
    CCTile *tile7 = [[CCTile alloc]init];
    tile7.story =@"You have sighted a Pirate off the coast. Should we continue?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum!";
    
    CCTile *tile8 = [[CCTile alloc]init];
    tile8.story =@"The legend of the deep. The mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon Ship!";
    
    CCTile *tile9 = [[CCTile alloc]init];
    tile9.story =@"You have stumbled upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take Treasure!";
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]init];
    [thirdColumn addObjectsFromArray:@[tile7, tile8, tile9]];
    
    CCTile *tile10 = [[CCTile alloc]init];
    tile10.story =@"A group of pirates attemplst o board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    CCTile *tile11 = [[CCTile alloc]init];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders!";
    
    tile11.story =@"In the deep of the sea many things live and many things can be found";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim Deeper!";
    
    CCTile *tile12 = [[CCTile alloc]init];
    tile12.story =@"Your final faceoff with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc]init];
    [fourthColumn addObjectsFromArray:@[tile10, tile11, tile12]];
    
    NSArray *allTiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
  
    
    return allTiles;
}


-(CCCharacter *)character;
{
    CCCharacter *character = [[CCCharacter alloc]init];
    character.health = 100;
    
    CCArmor *armor = [[CCArmor alloc]init];
    armor.name = @"Cloack";
    armor.health = 5;
    character.armor = armor;
    
    CCWeapon *weapon = [[CCWeapon alloc]init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    NSLog(@"%i cvd", character.health);

    return character;
}









@end
