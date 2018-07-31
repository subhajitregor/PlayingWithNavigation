//
//  ViewController.m
//  TestNavigation
//
//  Created by Admin on 31/07/18.
//  Copyright © 2018 Subhajit Halder. All rights reserved.
//

#import "ViewController.h"
#import "VC3.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionNavigation:(id)sender {
    VC3 *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"VC3"];
    [self.navigationController pushViewController:vc animated:true];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   
}


@end
