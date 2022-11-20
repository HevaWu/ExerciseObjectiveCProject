//
//  ViewController.m
//  ExerciseObjectiveCProject
//
//  Created by He Wu on 2022/11/20.
//

#import "ViewController.h"
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // init with new
    XYZPerson *person1 = [XYZPerson new];
    [person1 sayHello];
    
    // init with alloc
    XYZShoutingPerson *person2 = [[XYZShoutingPerson alloc] init];
    [person2 sayHello];
    
    // init with person
    XYZShoutingPerson *person3 = [XYZShoutingPerson person];
    [person3 sayHello];
    
    // check nil
    XYZPerson *person4;
    if (person4 != nil) {
        NSLog(@"Person4 is not nil");
    } else {
        NSLog(@"Person4 is nil");
    }
}


@end
