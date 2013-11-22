//
//  MMViewController.m
//  NSDateExtApp
//
//  Created by Charanjit Singh Bhalla on 05/06/13.
//  Copyright (c) 2013 CSpark. All rights reserved.
//

#import "MMViewController.h"
#import "NSDate-Utilities.h"
@interface MMViewController ()

@end

@implementation MMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self GetTomorrowsDate];
    [self YEsterdaysDate];
    [self DateByDaysBeforeNow];
    [self datByHoursFromNow];
    [self dateBeforehoursfromNow];
    [self DateWithMinutesFromNow];
    [self dateBeforeMinutesFromNow];
    [self IsDatesEqualIgnoringTime];
    [self IsTomorrowsDate];
    [self IsYesterdaysDate];
    [self IsToday];
    [self IsSameWeekAsDate];
    [self isthisweek];
    [self IsNextWeek];
    [self IsLastWeek];
    [self IsSameMonthAsDate];
    [self IsWorkDay];
    [self IsWeekEnd];
    [self DateByAddingDays];
    [self DateBySubtractingDays];
    [self DateByAddingHours];
    [self dateBySubtractingHours];
    [self DateByAddingMinutes];
    [self DateBySubtractingMinutes];
    [self DateAtStartOfDay];
    [self MinutesSinceDate];
    [self MinuteBeforeDate];
    [self HourseSinceDate];
    [self HoursBeforeDate];
    [self DaysSinceDate];
    [self DaysBeforeDate];
    [self DistanceInDaysInTwoDates];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)DistanceInDaysInTwoDates
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    NSDate *dateFuture = [[NSDate date] dateBySubtractingDays:3];
    
    NSDate *dateToday = [NSDate date];
    
    NSLog(@"Days after date are %d",[dateToday daysAfterDate:dateFuture]);
}

-(void)DaysBeforeDate
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    NSDate *dateFuture = [[NSDate date] dateBySubtractingDays:3];
    
    NSDate *dateToday = [NSDate date];
    
    NSLog(@"Days after date are %d",[dateToday daysAfterDate:dateFuture]);
}

-(void)DaysSinceDate
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    NSDate *dateFuture = [[NSDate date] dateBySubtractingDays:3];
    
    NSDate *dateToday = [NSDate date];
    
    NSLog(@"Days after date are %d",[dateToday daysAfterDate:dateFuture]);
}
-(void)HoursBeforeDate
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    NSDate *dateFuture = [[NSDate date] dateByAddingHours:100];
    
    NSDate *dateToday = [NSDate date];
    
    NSLog(@"Hours left before date are %d",[dateToday                    hoursBeforeDate:dateFuture]);
}
-(void)HourseSinceDate
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    NSDate *dateFuture = [[NSDate date] dateBySubtractingHours:100];
    
    NSDate *dateToday = [NSDate date];
    
    NSLog(@"Hours after date are %d",[dateToday hoursAfterDate:dateFuture]);
    
}
-(void)MinuteBeforeDate
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}

-(void)MinutesSinceDate
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}

-(void)DateAtStartOfDay
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}
-(void)DateBySubtractingMinutes
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}
-(void)DateByAddingMinutes
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}

-(void)dateBySubtractingHours
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}
-(void)DateByAddingHours
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}

-(void)DateBySubtractingDays
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}

-(void)DateByAddingDays
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}

-(void)IsWeekEnd
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}

-(void)IsWorkDay
{
    NSDate *date= [NSDate date];
    if([date isTypicallyWorkday])
        NSLog(@"workday");
    else
        NSLog(@"holiday");
}

-(void)IsSameMonthAsDate
{
    NSDate *date = [NSDate date];
    if([date isLastWeek])
        NSLog(@"yes given date is from last weak of month");
    else
        NSLog(@"no given date is not from last weak of month");
}

-(void)IsLastWeek
{
    NSDate *date = [NSDate date];
    if([date isLastWeek])
        NSLog(@"yes given date is from last weak of month");
    else
        NSLog(@"no given date is not from last weak of month");
}

-(void)IsNextWeek
{
    NSDate *date = [NSDate date];
    
    if([date isToday])
        NSLog(@"yes its todays date");
    else
        NSLog(@"no its not todays date");
}

-(void)isthisweek
{
    NSDate *date = [NSDate date];
    
    if([date isToday])
        NSLog(@"yes its todays date");
    else
        NSLog(@"no its not todays date");
}

-(void)IsSameWeekAsDate
{
    NSDate *date = [NSDate date];
    
    if([date isToday])
        NSLog(@"yes its todays date");
    else
        NSLog(@"no its not todays date");
}
-(void)IsToday
{
    NSDate *date = [NSDate date];
    
    if([date isToday])
        NSLog(@"yes its todays date");
    else
        NSLog(@"no its not todays date");
}

-(void)IsYesterdaysDate
{
    NSDate *date = [NSDate date];
    if([date isTomorrow])
        NSLog(@"yes its tomorrow");
    else
        NSLog(@"no its not tomorrow");
}

-(void)IsTomorrowsDate
{
    NSDate *date = [NSDate date];
    if([date isTomorrow])
        NSLog(@"yes its tomorrow");
    else
        NSLog(@"no its not tomorrow");

}

-(void)IsDatesEqualIgnoringTime
{
    NSDate *date = [NSDate date];
    NSDate *dateBeforenMinutesFromNow = [NSDate dateWithMinutesFromNow:5000];
    if([date isEqualToDateIgnoringTime:dateBeforenMinutesFromNow])
        NSLog(@"Two dates are equal");
    else
        NSLog(@"Two Dates are not equal");
}

-(void)dateBeforeMinutesFromNow
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM dd, yyyy"];
    NSDate *date = [NSDate date];
    NSDate *dateBeforenHoursFromNow = [NSDate   dateWithHoursBeforeNow:20];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    NSString *formattedBeforenHoursFromNow = [dateFormatter  stringFromDate:dateBeforenHoursFromNow];
    NSLog(@"Todays Date is %@",formattedDateString );
    NSLog(@"Date Before 20 hours from now was  %@",formattedBeforenHoursFromNow );
    
}

-(void)DateWithMinutesFromNow
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM dd, yyyy"];
    NSDate *date = [NSDate date];
    NSDate *dateBeforenHoursFromNow = [NSDate   dateWithHoursBeforeNow:20];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    NSString *formattedBeforenHoursFromNow = [dateFormatter  stringFromDate:dateBeforenHoursFromNow];
    NSLog(@"Todays Date is %@",formattedDateString );
    NSLog(@"Date Before 20 hours from now was  %@",formattedBeforenHoursFromNow );
    
}

-(void)dateBeforehoursfromNow
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM dd, yyyy"];
    NSDate *date = [NSDate date];
    NSDate *dateBeforenHoursFromNow = [NSDate   dateWithHoursBeforeNow:20];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    NSString *formattedBeforenHoursFromNow = [dateFormatter  stringFromDate:dateBeforenHoursFromNow];
    NSLog(@"Todays Date is %@",formattedDateString );
    NSLog(@"Date Before 20 hours from now was  %@",formattedBeforenHoursFromNow );
    
}
-(void)datByHoursFromNow
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM dd, yyyy"];
    NSDate *date = [NSDate date];
    NSDate *dateTomorrow = [NSDate dateTomorrow];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    NSString *formattedDateStringTomorrow = [dateFormatter      stringFromDate:dateTomorrow];
    NSLog(@"Todays Date is %@",formattedDateString );
    NSLog(@"Tomorrows Date is %@",formattedDateStringTomorrow );
}
-(void)GetTomorrowsDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM dd, yyyy"];
    NSDate *date = [NSDate date];
    NSDate *dateTomorrow = [NSDate dateTomorrow];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    NSString *formattedDateStringTomorrow = [dateFormatter      stringFromDate:dateTomorrow];
    NSLog(@"Todays Date is %@",formattedDateString );
    NSLog(@"Tomorrows Date is %@",formattedDateStringTomorrow );
}
-(void)YEsterdaysDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM dd, yyyy"];
    NSDate *date = [NSDate date];
    NSDate *dateTomorrow = [NSDate dateTomorrow];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    NSString *formattedDateStringTomorrow = [dateFormatter      stringFromDate:dateTomorrow];
    NSLog(@"Todays Date is %@",formattedDateString );
    NSLog(@"Tomorrows Date is %@",formattedDateStringTomorrow );
}
-(void)DateByDaysBeforeNow
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM dd, yyyy"];
    NSDate *date = [NSDate date];
    NSDate *dateTomorrow = [NSDate dateTomorrow];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    NSString *formattedDateStringTomorrow = [dateFormatter      stringFromDate:dateTomorrow];
    NSLog(@"Todays Date is %@",formattedDateString );
    NSLog(@"Tomorrows Date is %@",formattedDateStringTomorrow );
}

@end
