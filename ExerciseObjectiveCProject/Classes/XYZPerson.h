//
//  XYZPerson.h
//  ExerciseObjectiveCProject
//
//  Created by He Wu on 2022/11/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYZPerson : NSObject

@property (copy) NSString *firstName;
@property (readonly) NSString *lastName;
@property (readonly) NSDate *dateOfBirth;

// instead of setFinished, compiler will synthesize only the isFinished
@property (getter=isFinished) BOOL finished;

+ (id)person;
- (id)init;
- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName;
- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName dateOfBirth:(NSDate *)aDOB;

- (void)sayHello;
- (void)saySomething: (NSString *)greeting;

- (NSString *)fullName;

@end

NS_ASSUME_NONNULL_END
