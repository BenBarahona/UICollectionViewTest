//
//  CollectionViewController.h
//  iOS6_Tests
//
//  Created by Escolarea on 9/27/12.
//  Copyright (c) 2012 Escolarea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
{
    NSMutableArray *collectionArray;
    IBOutlet UICollectionView *collectionView;
}

@end
