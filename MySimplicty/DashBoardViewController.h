//
//  ViewController.h
//  MySimplicty
//
//  Created by vmoksha mobility on 1/17/17.
//  Copyright © 2017 vmoksha mobility. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashBoardViewController : UIViewController


{
    IBOutlet UICollectionView * mycollectionView;
}
@property (strong,nonatomic) NSMutableArray * imagesArray;
@property (strong,nonatomic) NSMutableArray * nameLblArray;

-(IBAction)click:(id)sender;

@end

