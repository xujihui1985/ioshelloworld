//
//  ViewController.h
//  ProteinTracker
//
//  Created by Sean on 4/16/14.
//  Copyright (c) 2014 Sean. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryViewController.h"

@interface MainViewController : UIViewController {
    int total;
    NSMutableArray *amountHistory;
}

@property (weak, nonatomic) IBOutlet UILabel *totalLable;
@property (weak, nonatomic) IBOutlet UILabel *goalLable;
@property (weak, nonatomic) IBOutlet UITextField *amountText;

- (IBAction)addClicked:(id)sender;
- (IBAction)unwindToMain:(UIStoryboardSegue *)segue;
- (void)goalChanged: (NSNotification *)notification;

@end
