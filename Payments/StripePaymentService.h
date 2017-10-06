#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>

-(void)processPaymentAmount:(NSInteger *)amount;
-(BOOL)canProcessPayment;

@end
