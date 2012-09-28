//
//  CustomUICollectionCell.h
//  iOS6_Tests
//
//  Created by Escolarea on 9/27/12.
//  Copyright (c) 2012 Escolarea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomUICollectionCell : UICollectionViewCell
{
    IBOutlet UICollectionViewCell *cell;
}

@property (nonatomic, retain) IBOutlet UIButton *title;

@end
