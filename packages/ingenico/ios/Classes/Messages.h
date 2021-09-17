// Autogenerated from Pigeon (v1.0.4), do not edit directly.
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
@property(nonatomic, strong, nullable) NSArray<FLTBasicPaymentProduct *> * basicPaymentProduct;
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
@property(nonatomic, strong, nullable) NSArray<FLTPaymentProductField *> * fields;
@end

@interface FLTPaymentRequest : NSObject
@property(nonatomic, strong, nullable) NSDictionary<NSString *, NSString *> * values;
@property(nonatomic, copy, nullable) NSString * paymentProductId;
@property(nonatomic, strong, nullable) NSNumber * tokenize;
@property(nonatomic, copy, nullable) NSString * sessionId;
@end

@interface FLTPreparedPaymentRequest : NSObject
@property(nonatomic, copy, nullable) NSString * encryptedFields;
@property(nonatomic, copy, nullable) NSString * encodedClientMetaInfo;
@end

/// The codec used by FLTApi.
NSObject<FlutterMessageCodec> *FLTApiGetCodec(void);

@protocol FLTApi
- (nullable FLTSessionResponse *)initClientSessionRequest:(FLTSessionRequest *)request error:(FlutterError *_Nullable *_Nonnull)error;
- (void)getBasicPaymentItemsRequest:(nullable FLTPaymentContextRequest *)request completion:(void(^)(FLTPaymentContextResponse *_Nullable, FlutterError *_Nullable))completion;
- (void)getPaymentProductRequest:(nullable FLTGetPaymentProductRequest *)request completion:(void(^)(FLTPaymentProduct *_Nullable, FlutterError *_Nullable))completion;
- (void)preparePaymentRequestRequest:(nullable FLTPaymentRequest *)request completion:(void(^)(FLTPreparedPaymentRequest *_Nullable, FlutterError *_Nullable))completion;
@end

extern void FLTApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTApi> *_Nullable api);

NS_ASSUME_NONNULL_END