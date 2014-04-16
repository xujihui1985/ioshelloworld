//
//  ViewController.m
//  ProteinTracker
//
//  Created by Sean on 4/16/14.
//  Copyright (c) 2014 Sean. All rights reserved.
//

#import "MainViewController.h"

//@interface MainViewController ()
//
//@end

@implementation MainViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        amountHistory = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addClicked:(id)sender {
    total += self.amountText.text.intValue;
    self.totalLable.text = [NSString stringWithFormat:@"%d", total];
    [amountHistory addObject:[NSNumber numberWithInt:self.amountText.text.intValue]];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:TRUE];
}
-(IBAction)unwindToMain:(UIStoryboardSegue *)segue {
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showHistory"]){
        HistoryViewController *controller = (HistoryViewController *)segue.destinationViewController;
        [controller setHistory:amountHistory];
    }
}
@end
