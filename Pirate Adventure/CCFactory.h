//
//  CCFactory.h
//  Pirate Adventure
//
//  Created by Norris Wise on 2/4/16.
//  Copyright © 2016 Sample. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
@interface CCFactory : NSObject

-(NSArray *)tiles;
-(CCCharacter *)character;

@end
