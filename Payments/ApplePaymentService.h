#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface ApplePaymentService : NSObject <PaymentDelegate>

-(void)processPaymentAmount:(NSInteger *)amount;
-(BOOL)canProcessPayment;

@end
