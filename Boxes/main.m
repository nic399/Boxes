//
//  main.m
//  Boxes
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box* myBox = [Box new];
        [myBox setDimensionsWithHeight:10 andWidth:12  andLength:100];
        NSLog(@"The volume of the box is %f", [myBox calculateVolume]);
        
        Box* otherBox = [Box new];
        [otherBox setDimensionsWithHeight:5 andWidth:6 andLength:100];
        int howMany = [myBox howManyFitInside:otherBox];
        NSLog(@"%i boxes will fit inside eachother.", howMany);
    }
    return 0;
}
