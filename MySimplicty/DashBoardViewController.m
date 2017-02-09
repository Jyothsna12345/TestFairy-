//
//  ViewController.m
//  MySimplicty
//
//  Created by vmoksha mobility on 1/17/17.
//  Copyright © 2017 vmoksha mobility. All rights reserved.
//

#import "DashBoardViewController.h"
#import "DashBoardCell.h"


@interface DashBoardViewController () <UICollectionViewDelegate,UICollectionViewDataSource, UIGestureRecognizerDelegate>


@property (weak, nonatomic) IBOutlet UITextField * textField ;
@end

@implementation DashBoardViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _imagesArray = [[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"app1"],[UIImage imageNamed:@"amazon"],[UIImage imageNamed:@"3app"],[UIImage imageNamed:@"app2"],[UIImage imageNamed:@"windows"],[UIImage imageNamed:@"picsapp"], nil];
  
   // _nameLblArray = [[NSMutableArray alloc]initWithObjects:@"AppStore",@"Amazon",@"Chat",@"Messanger",@"Windows",@"Photos",nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellID = @"Cell";
    
    DashBoardCell * cell = [mycollectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    cell.self.dashBoardImg.image = _imagesArray[indexPath.row];
    //cell.self.dashBoardLbl.text = _nameLblArray [indexPath.row];
    
    return cell;
    
}

-(IBAction)click:(id)sender
{
    
    NSString * textStr = self.textField.text;
    
    NSLog(@"TextField Text: %@",textStr);
   
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Close" style:UIBarButtonItemStyleDone target:self action:@selector(close)];
    
    //NSObject *object = [[NSObject alloc] init];

    //[object performSelector:@selector(asfd)];

}

//-(void)handleLongPress:(UILongPressGestureRecognizer *)gestureRecognizer
//{
//    if (gestureRecognizer.state != UIGestureRecognizerStateEnded) {
//        return;
//    }
//    CGPoint p = [gestureRecognizer locationInView:collectionView];
//    
//    NSIndexPath *indexPath = [collectionView indexPathForItemAtPoint:p];
//    if (indexPath == nil){
//        NSLog(@"couldn't find index path");
//    } else {
//        // get the cell at indexPath (the one you long pressed)
//        UICollectionViewCell* cell =
//        [collectionView cellForItemAtIndexPath:indexPath];
//        // do stuff with the cell
//    }
//}
//- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath*)destinationIndexPath
//{
//    
//    
//    
//}
@end
