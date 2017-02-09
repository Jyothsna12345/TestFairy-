//
//  DashBoardCell.h
//  MySimplicty
//
//  Created by vmoksha mobility on 1/17/17.
//  Copyright © 2017 vmoksha mobility. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashBoardCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *dashBoardImg;
@property (weak, nonatomic) IBOutlet UILabel *dashBoardLbl;
@property (weak, nonatomic) IBOutlet UIButton *deleteAppBtn;
- (IBAction)deleteAppBtnAction:(id)sender;

@end
