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
    self.view.backgroundColor = [UIColor cyanColor];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    VC3 *vc = [[VC3 alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}


@end
