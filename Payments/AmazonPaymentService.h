#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface AmazonPaymentService : NSObject <PaymentDelegate>

-(void)processPaymentAmount:(NSInteger *)amount;
-(BOOL)canProcessPayment;

@end
