//
//  CustomUICollectionCell.m
//  iOS6_Tests
//
//  Created by Escolarea on 9/27/12.
//  Copyright (c) 2012 Escolarea. All rights reserved.
//

#import "CustomUICollectionCell.h"

@implementation CustomUICollectionCell
@synthesize title;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSArray *screens = [[NSBundle mainBundle] loadNibNamed:@"CustomUICollectionCellView" owner:self options:nil];
        [self addSubview:[screens objectAtIndex:0]];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
