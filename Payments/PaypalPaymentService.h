#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>

-(void)processPaymentAmount:(NSInteger *)amount;
-(BOOL)canProcessPayment;

@end
