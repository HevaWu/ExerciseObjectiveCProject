//
//  XYZPerson.m
//  ExerciseObjectiveCProject
//
//  Created by He Wu on 2022/11/20.
//

#import "XYZPerson.h"

@implementation XYZPerson

@synthesize lastName = synthesize_lastName;

- (id)init {
    return [self initWithFirstName:@"Heva" lastName:@"Wu" dateOfBirth:nil];
}

- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName {
    return [self initWithFirstName:aFirstName lastName:aLastName dateOfBirth:nil];
}

- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName dateOfBirth:(NSDate *)aDOB {
    self = [super init];
    if (self) {
        _firstName = aFirstName;
        synthesize_lastName = aLastName;
        _dateOfBirth = aDOB;
    }
    return self;
}

+ (id)person {
    return [[self alloc] init];
}

- (void)sayHello {
    NSLog(@"Hello, World!");
    [self saySomething:[NSString stringWithFormat:@"Say Something: %@", self.fullName]];
    
    /*
    // _ to access interface variable
    NSString *myFirstName1 = @"Heva1";
    _firstName = myFirstName1;
    NSLog(@"Underscore FirstName is %@", self.firstName);
    
    // dot
    NSString *myFirstName2 = @"Heva2";
    self.firstName = myFirstName2;
    NSLog(@"Dot FirstName is %@", self.firstName);
    
    // set
    NSString *myFirstName3 = @"Heva3";
    [self setFirstName:myFirstName3];
    NSLog(@"Dot FirstName is %@", self.firstName);
    
    synthesize_lastName = @"Wu1";
    NSLog(@"Synthesize LastName is %@", self.lastName);
    */
}

- (void)saySomething:(NSString *)greeting {
    NSLog(@"%@", greeting);
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (void)dealloc {
    NSLog(@"XYZPerson is being deallocated");
}

@end
