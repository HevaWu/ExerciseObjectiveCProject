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
    
    // [self defineClassExercise];
    // [self workeWithObjectsExercise];
    [self encapsulateDataExercise];
}

- (void)encapsulateDataExercise {
    // set and get
    NSLog(@"Set and Get");
    XYZPerson *person1 = [XYZPerson person];
    [person1 setFirstName:@"Heva"];
    NSLog(@"Person1 FirstName is %@", [person1 firstName]);
    NSLog(@"Person1 FirstName is %@", person1.firstName); // dot syntax
    
    // init with factory
    NSLog(@"Init with Factory");
    XYZPerson *person2 = [[XYZPerson alloc] initWithFirstName:@"Heva2" lastName:@"Wu2"];
    [person2 sayHello];
    
    // copy attribute
    NSLog(@"Copy Attribute");
    XYZPerson *person3 = [XYZPerson person];
    [person3 sayHello];
    NSMutableString *mutableFirstName = [NSMutableString stringWithString:@"Heva3"];
    person3.firstName = mutableFirstName;
    [person3 sayHello];
    /*
    with "@property (copy) NSString *firstName;"
    bellow will print "Heva3 Wu", which means the variable instance
    NOT affect
     
    with "@property NSString *firstName;"
    bellow will print "Heva3mutable append Wu" which means the mutable variable instance
    affected
    */
    [mutableFirstName appendString:@"mutable append"];
    [person3 sayHello];
    
    // strong and weak
    NSLog(@"Strong and Weak");
    NSString * __weak firstName4 = @"Heva4";
    XYZPerson *person4 = [[XYZPerson alloc] initWithFirstName:firstName4 lastName:@"Wu"];
    if (person4) {
        // even use cachedPerson4, with __weak person4 it will never go into this block
        [person4 sayHello];
    }
    person4 = nil;
}

- (void)workeWithObjectsExercise {
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

- (void)defineClassExercise {
    // init with new
    XYZPerson *person1 = [XYZPerson new];
    [person1 sayHello];
    
    // init with alloc
    XYZShoutingPerson *person2 = [[XYZShoutingPerson alloc] init];
    [person2 sayHello];
}

@end
