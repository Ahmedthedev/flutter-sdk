// Autogenerated from Pigeon (v0.3.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import <Foundation/Foundation.h>
@protocol FlutterBinaryMessenger;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class SessionRequest;
@class Session;
@class PaymentContextRequest;

@interface SessionRequest : NSObject
@property(nonatomic, copy, nullable) NSString * clientSessionId;
@property(nonatomic, copy, nullable) NSString * customerId;
@property(nonatomic, copy, nullable) NSString * clientApiUrl;
@property(nonatomic, copy, nullable) NSString * assetBaseUrl;
@property(nonatomic, strong, nullable) NSNumber * environmentIsProduction;
@property(nonatomic, copy, nullable) NSString * applicationIdentifier;
@end

@interface Session : NSObject
@property(nonatomic, copy, nullable) NSString * sessionId;
@end

@interface PaymentContextRequest : NSObject
@property(nonatomic, strong, nullable) NSNumber * amountValue;
@property(nonatomic, copy, nullable) NSString * currencyCode;
@property(nonatomic, copy, nullable) NSString * countryCode;
@property(nonatomic, strong, nullable) NSNumber * isRecurring;
@end

@protocol Api
-(nullable Session *)initClientSession:(SessionRequest*)input error:(FlutterError *_Nullable *_Nonnull)error;
-(nullable List<BasicPaymentItem> *)getBasicPaymentItems:(PaymentContextRequest*)input error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void ApiSetup(id<FlutterBinaryMessenger> binaryMessenger, id<Api> _Nullable api);

NS_ASSUME_NONNULL_END
