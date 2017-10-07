#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
            
        int randomDollarValue = arc4random_uniform(1000) + 100;
            
        NSLog(@" \n Thank you for shopping at Acme.com \n Your total today is $%ld. \n Please select your payment method: \n 1: Paypal, \n 2: Stripe, \n 3: Amazon, \n 4. ApplePay \n", (long)randomDollarValue);
        
        
        char answerCString[255];
        
        fgets(answerCString, 255, stdin);
        
        NSString *result = [NSString stringWithCString:answerCString
                                              encoding:NSUTF8StringEncoding];
        NSString *parsedResult = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSInteger choice = [parsedResult integerValue];
        
 //       NSLog(@"Input was %li", (long)choice);
        
        PaymentGateway *paymentGatewayObj = [PaymentGateway new];
        
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *applepay = [ApplePaymentService new];
        
        switch (choice) {
            case 1: {
                paymentGatewayObj.delegate = paypal; }
                break;
            case 2: {
                paymentGatewayObj.delegate = stripe; }
                break;
            case 3: {
                paymentGatewayObj.delegate = amazon; }
                break;
            case 4: {
                paymentGatewayObj.delegate = applepay; }
            default:
                break;
        }
        
        [paymentGatewayObj processPaymentAmountClassMethod:(long)randomDollarValue];

        
    
    }
    return 0;
}
