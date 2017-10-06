#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger *)amount {
 NSLog(@"Paypal processed $%lu", (long)amount);
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
