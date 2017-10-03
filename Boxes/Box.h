//
//  Box.h
//  Boxes
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

    @property float height;
    @property float width;
    @property float length;
    
    -(void)setDimensionsWithHeight: (float)height andWidth: (float)width andLength:(float)length;
    -(float)calculateVolume;
    -(int)howManyFitInside: (Box *) otherBox;
    
    
    
    
    
@end
