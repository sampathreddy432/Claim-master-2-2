//
//  addPhotosViewController.m
//  AutoClaim
//
//  Created by sampath on 2015-03-16.
//  Copyright (c) 2015 sampath. All rights reserved.
//

#import "addPhotosViewController.h"

@interface addPhotosViewController ()

@end

@implementation addPhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)segment:(UISegmentedControl *)sender {
    /* switch (sender.selectedSegmentIndex) {
     case 0:
     [UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil]];
     UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"PhotosViewController"];
     [self presentViewController:vc animated:YES completion:nil];
     
     break;
     case 1:
     self.information.hidden = YES;
     self.photos.hidden = NO;
     self.review.hidden = YES;
     self.details.hidden = YES;
     break;
     case 2:
     self.information.hidden = YES;
     self.photos.hidden = YES;
     self.review.hidden = YES;
     self.details.hidden = NO;
     self.review.hidden = YES;
     break;
     case 3:
     self.information.hidden = YES;
     self.photos.hidden = YES;
     self.details.hidden = YES;
     self.review.hidden = NO;
     break;
     default:
     break;
     }*/
    
    
    
    if(sender.selectedSegmentIndex == 0)            // Checking which segment is selected using the segment index value
        
    {
        
        //self.view.backgroundColor = [UIColor redColor];          // Change the background color to red
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"CollectViewController"];
        [self presentViewController:vc animated:YES completion:nil];

    }
    
    else
        
        if(sender.selectedSegmentIndex == 1)
            
        {
            
            //self.view.backgroundColor = [UIColor greenColor];
            /*UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"PhotosViewController"];
            [self presentViewController:vc animated:YES completion:nil];
            */
        }
    
        else
            
            if(sender.selectedSegmentIndex == 2)
                
            {
                
                //self.view.backgroundColor = [UIColor blueColor];
                UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"DetailsViewController"];
                [self presentViewController:vc animated:YES completion:nil];
                
            }
            else
                
                if(sender.selectedSegmentIndex == 3)
                    
                {
                    
                    //self.view.backgroundColor = [UIColor blueColor];
                    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"SubmitViewController"];
                    [self presentViewController:vc animated:YES completion:nil];
                    
                }
    
    
    
}
@end

