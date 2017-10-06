#import "PaymentGateway.h"

@implementation PaymentGateway

-(instancetype) init{
    self = [super init];
    return self;
}

-(void)processPaymentAmountClassMethod:(NSInteger *)amountInDollars {
    [self.delegate processPaymentAmount:amountInDollars];

}


@end
