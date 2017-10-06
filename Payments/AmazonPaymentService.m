#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void)processPaymentAmount:(NSInteger *)amount {
    NSLog(@"Amazon processed $%lu", (long)amount);
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
