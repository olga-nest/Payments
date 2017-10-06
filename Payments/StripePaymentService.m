#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger *)amount {
    NSLog(@"Stripe processed $%lu", (long)amount);
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
