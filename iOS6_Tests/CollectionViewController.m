//
//  CollectionViewController.m
//  iOS6_Tests
//
//  Created by Escolarea on 9/27/12.
//  Copyright (c) 2012 Escolarea. All rights reserved.
//

#import "CollectionViewController.h"
#import "CustomUICollectionCell.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"UICollectionView";
    collectionArray = [[NSMutableArray alloc] init];
    
    for(int i = 0; i < 50; i ++)
    {
        [collectionArray addObject:[NSString stringWithFormat:@"Item %d", i]];
    }
    
    /*
     FOR LOADING DIRECT NIB FILE
    UINib *cellNib = [UINib nibWithNibName:@"CustomUICollectionCellView" bundle:nil];
    [collectionView registerNib:cellNib forCellWithReuseIdentifier:@"customCell"];
     */
    
    //FOR LOADING CLASS (NIB SHOULD LOAD INSIDE CLASS)
    [collectionView registerClass:[CustomUICollectionCell class] forCellWithReuseIdentifier:@"customCell"];
    
    /*
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setItemSize:CGSizeMake(100, 100)];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    [collectionView setCollectionViewLayout:flowLayout];
    */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [collectionArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)_collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSString *cellData = [collectionArray objectAtIndex:indexPath.row];
        static NSString *cellIdentifier = @"customCell";
        CustomUICollectionCell *cell = (CustomUICollectionCell *)[_collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
        [cell.title setTitle:cellData forState:UIControlStateNormal];
        
    return cell;
}

-(BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender
{
    return YES;
}

-(void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender
{
    
}

-(BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES; 
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: Select Item
    NSLog(@"Selected: %@", [collectionArray objectAtIndex:indexPath.row]);
}
- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Deselect item
    NSLog(@"Deselected");
}

- (void)collectionView:(UICollectionView *)colView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* cell = [colView cellForItemAtIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor blueColor];
}

- (void)collectionView:(UICollectionView *)colView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* cell = [colView cellForItemAtIndexPath:indexPath];
    cell.contentView.backgroundColor = nil;
}

@end
