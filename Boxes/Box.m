//
//  Box.m
//  Boxes
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Box.h"

@implementation Box

    -(void)setDimensionsWithHeight:(float)height andWidth:(float)width andLength:(float)length
    {
        self.height = height;
        self.width = width;
        self.length = length;
    }
    
    -(float)calculateVolume
    {
        return self.height*self.width*self.length;
    }
    
    -(int)howManyFitInside:(Box *)otherBox
    {
        int returnVal;
        if ([self calculateVolume] > [otherBox calculateVolume] ) {
            returnVal = self.calculateVolume / otherBox.calculateVolume;
        }
        else if ([self calculateVolume] < [otherBox calculateVolume])
        {
            returnVal = otherBox.calculateVolume / self.calculateVolume;
        }
        else
        {
            returnVal = 1;
        }
        return returnVal;
    }
    
    
@end
