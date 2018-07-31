//
//  VC3.m
//  TestNavigation
//
//  Created by Admin on 31/07/18.
//  Copyright © 2018 Subhajit Halder. All rights reserved.
//

#import "VC3.h"
#import "VC2.h"
@interface VC3 ()

@end

@implementation VC3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionNavigation:(id)sender {
    VC2 *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"VC2"];
    NSMutableArray *vcArray = [NSMutableArray arrayWithArray:self.navigationController.viewControllers] ;
    [vcArray insertObject:vc atIndex:1]; // ** This index is `1` assuming you only have 2 controllers and we are pushing it in the middle,
    // if you have many vc in navigation stack and just want to insert a new vc just before your current vc go with this:
    /*
     [vcArray insertObject:temp1 atIndex:vcArray.count - 2];
     */
    self.navigationController.viewControllers = vcArray;
    
    
    /* --- ** You can also ommit for loop part and directly use:
              [self.navigationController popViewControllerAnimated:true];
    */
    
    for (UIViewController *controller in  self.navigationController.viewControllers) {
        
        if([controller isKindOfClass: [VC2 class]]) {
            [self.navigationController popToViewController: controller animated:YES];
        }
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
