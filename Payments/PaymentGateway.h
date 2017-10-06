#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger *)amount;
-(BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate>delegate;

-(void)processPaymentAmountClassMethod:(NSInteger *)amountInDollars;

@end
