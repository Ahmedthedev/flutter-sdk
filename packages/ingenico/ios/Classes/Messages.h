// Autogenerated from Pigeon (v0.3.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import <Foundation/Foundation.h>
@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class FLTSessionRequest;
@class FLTSessionResponse;
@class FLTPaymentContextRequest;
@class FLTGetPaymentProductRequest;
@class FLTPaymentContextResponse;
@class FLTDisplayHintsPaymentItem;
@class FLTPaymentProduct;
@class FLTPaymentRequest;
@class FLTPreparedPaymentRequest;

@interface FLTSessionRequest : NSObject
@property(nonatomic, copy, nullable) NSString * clientSessionId;
@property(nonatomic, copy, nullable) NSString * customerId;
@property(nonatomic, copy, nullable) NSString * clientApiUrl;
@property(nonatomic, copy, nullable) NSString * assetBaseUrl;
@property(nonatomic, strong, nullable) NSNumber * environmentIsProduction;
@property(nonatomic, copy, nullable) NSString * applicationIdentifier;
@end

@interface FLTSessionResponse : NSObject
@property(nonatomic, copy, nullable) NSString * sessionId;
@end

@interface FLTPaymentContextRequest : NSObject
@property(nonatomic, copy, nullable) NSString * sessionId;
@property(nonatomic, strong, nullable) NSNumber * amountValue;
@property(nonatomic, copy, nullable) NSString * currencyCode;
@property(nonatomic, copy, nullable) NSString * countryCode;
@property(nonatomic, strong, nullable) NSNumber * isRecurring;
@end

@interface FLTGetPaymentProductRequest : NSObject
@property(nonatomic, copy, nullable) NSString * sessionId;
@property(nonatomic, copy, nullable) NSString * paymentProductId;
@property(nonatomic, strong, nullable) NSNumber * amountValue;
@property(nonatomic, copy, nullable) NSString * currencyCode;
@property(nonatomic, copy, nullable) NSString * countryCode;
@property(nonatomic, strong, nullable) NSNumber * isRecurring;
@end

@interface FLTPaymentContextResponse : NSObject
@property(nonatomic, strong, nullable) NSArray * basicPaymentProduct;
@end

@interface FLTDisplayHintsPaymentItem : NSObject
@property(nonatomic, strong, nullable) NSNumber * displayOrder;
@property(nonatomic, copy, nullable) NSString * label;
@property(nonatomic, copy, nullable) NSString * logoUrl;
@end

@interface FLTPaymentProduct : NSObject
@property(nonatomic, copy, nullable) NSString * id;
@property(nonatomic, copy, nullable) NSString * paymentMethod;
@property(nonatomic, copy, nullable) NSString * paymentProductGroup;
@property(nonatomic, strong, nullable) NSNumber * minAmount;
@property(nonatomic, strong, nullable) NSNumber * maxAmount;
@property(nonatomic, strong, nullable) NSNumber * allowsRecurring;
@property(nonatomic, strong, nullable) NSNumber * allowsTokenization;
@property(nonatomic, strong, nullable) NSNumber * usesRedirectionTo3rdParty;
@property(nonatomic, strong, nullable) FLTDisplayHintsPaymentItem * displayHints;
@property(nonatomic, strong, nullable) NSArray * fields;
@end

@interface FLTPaymentRequest : NSObject
@property(nonatomic, strong, nullable) NSDictionary * values;
@property(nonatomic, copy, nullable) NSString * paymentProductId;
@property(nonatomic, strong, nullable) NSNumber * tokenize;
@property(nonatomic, copy, nullable) NSString * sessionId;
@end

@interface FLTPreparedPaymentRequest : NSObject
@property(nonatomic, copy, nullable) NSString * encryptedFields;
@property(nonatomic, copy, nullable) NSString * encodedClientMetaInfo;
@end

/// The codec used by FLTApi.
NSObject<FlutterMessageCodec>* FLTApiGetCodec(void);

@protocol FLTApi
-(nullable FLTSessionResponse *)initClientSession:(FLTSessionRequest*)input error:(FlutterError *_Nullable *_Nonnull)error;
-(void)getBasicPaymentItems:(nullable FLTPaymentContextRequest *)input completion:(void(^)(FLTPaymentContextResponse *_Nullable, FlutterError *_Nullable))completion;
-(void)getPaymentProduct:(nullable FLTGetPaymentProductRequest *)input completion:(void(^)(FLTPaymentProduct *_Nullable, FlutterError *_Nullable))completion;
-(void)preparePaymentRequest:(nullable FLTPaymentRequest *)input completion:(void(^)(FLTPreparedPaymentRequest *_Nullable, FlutterError *_Nullable))completion;
@end

extern void FLTApiSetup(id<FlutterBinaryMessenger> binaryMessenger, id<FLTApi> _Nullable api);

NS_ASSUME_NONNULL_END
