//
//  FruitPrinceViewController.m
//  FruitPrince
//
//  Created by 笨鸟特攻 on 14-6-17.
//  Copyright (c) 2014年 ___HGX___. All rights reserved.
//

#import "FruitPrinceViewController.h"

@interface FruitPrinceViewController ()
@property (weak, nonatomic) IBOutlet UITextField *princeNameTwo;
@property (weak, nonatomic) IBOutlet UITextField *princeNameOne;
@property (weak, nonatomic) IBOutlet UITextField *beixuanName;
- (IBAction)caclPrince:(id)sender;

@end

@implementation FruitPrinceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.beixuanName.text = @"MK,孟志昂,小郭,天意";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)caclPrince:(id)sender {
    
    self.princeName = self.beixuanName.text;
    
    NSString *princeMember = self.princeName;
   
    NSArray *array= [princeMember componentsSeparatedByString:@","];
    
    int indexOne = arc4random() % [array count];
    
    self.princeNameOne.text =[array objectAtIndex:indexOne];
    
    int indexTwo = arc4random() % [array count];
    while (indexTwo == indexOne) {
        indexTwo = arc4random() % [array count];
    }
    self.princeNameTwo.text =[array objectAtIndex:indexTwo];
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.beixuanName) {
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
