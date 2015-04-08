//
//  additionalViewController.h
//  AutoClaim
//
//  Created by sampath on 2015-02-24.
//  Copyright (c) 2015 sampath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface additionalViewController : UIViewController<UIActionSheetDelegate>


@property (weak, nonatomic) IBOutlet UIButton *additional;
- (IBAction)additional:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *information;
- (IBAction)segment:(id)sender;

@end
