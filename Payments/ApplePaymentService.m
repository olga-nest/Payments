#import "ApplePaymentService.h"


@implementation ApplePaymentService

-(void)processPaymentAmount:(NSInteger *)amount {
    NSLog(@"ApplePay processed $%lu", (long)amount);
}

-(BOOL)canProcessPayment {
    
    int random = arc4random_uniform(2);
    if (random == 1) {
        return YES;
    } else {
        return NO;
    }
    
}



@end
