#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmountClassMethod:(NSInteger *)amountInDollars {
    
    BOOL process = [self.delegate canProcessPayment];
    if (process == YES) {
        [self.delegate processPaymentAmount:amountInDollars];
    } else {
        NSLog(@"Sorry cannot process your payment");
    }

}



@end
