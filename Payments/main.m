#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
            
        int randomDollarValue = arc4random_uniform(1000) + 100;
            
        NSLog(@"Thank you for shopping at Acme.com \n Your total today is %d. \n Please select your payment method: \n 1: Paypal, 2: Stripe, 3: Amazon", randomDollarValue);
        
        
        char answerCString[255];
        
        fgets(answerCString, 255, stdin);
        
        NSString *result = [NSString stringWithCString:answerCString
                                              encoding:NSUTF8StringEncoding];
        NSString *parsedResult = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSInteger choice = [parsedResult integerValue];
        
        NSLog(@"Input was %li", (long)choice);
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
