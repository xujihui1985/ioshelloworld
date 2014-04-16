//
//  HistoryViewController.h
//  ProteinTracker
//
//  Created by Sean on 4/16/14.
//  Copyright (c) 2014 Sean. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController
{
    NSMutableArray *history;
}
@property (weak, nonatomic) IBOutlet UILabel *historyLable;

-(void)setHistory: (NSMutableArray *)h;

@end
