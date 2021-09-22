// Autogenerated from Pigeon (v1.0.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import <Foundation/Foundation.h>
@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, FLTType) {
  FLTTypeString = 0,
  FLTTypeInteger = 1,
  FLTTypeNumericstring = 2,
  FLTTypeExpirydate = 3,
  FLTTypeBooleanEnum = 4,
  FLTTypeDate = 5,
};

typedef NS_ENUM(NSUInteger, FLTPreferredInputType) {
  FLTPreferredInputTypeIntegerKeyboard = 0,
  FLTPreferredInputTypeStringKeyboard = 1,
  FLTPreferredInputTypePhoneNumberKeyboard = 2,
  FLTPreferredInputTypeEmailAddressKeyboard = 3,
  FLTPreferredInputTypeDateKeyboard = 4,
};

typedef NS_ENUM(NSUInteger, FLTListType) {
  FLTListTypeText = 0,
  FLTListTypeList = 1,
  FLTListTypeCurrency = 2,
  FLTListTypeDate = 3,
  FLTListTypeBooleanEnum = 4,
};

typedef NS_ENUM(NSUInteger, FLTPaymentProductFieldDisplayElementType) {
  FLTPaymentProductFieldDisplayElementTypeInteger = 0,
  FLTPaymentProductFieldDisplayElementTypeString = 1,
  FLTPaymentProductFieldDisplayElementTypeCurrency = 2,
  FLTPaymentProductFieldDisplayElementTypePercentage = 3,
  FLTPaymentProductFieldDisplayElementTypeUri = 4,
};

typedef NS_ENUM(NSUInteger, FLTValidationType) {
  FLTValidationTypeExpirationDate = 0,
  FLTValidationTypeEmailAdress = 1,
  FLTValidationTypeFixedList = 2,
  FLTValidationTypeIban = 3,
  FLTValidationTypeLength = 4,
  FLTValidationTypeLuhn = 5,
  FLTValidationTypeRange = 6,
  FLTValidationTypeRegularExpression = 7,
  FLTValidationTypeType = 8,
  FLTValidationTypeTermsAndConditions = 9,
};

@class FLTSessionRequest;
@class FLTSessionResponse;
@class FLTPaymentContextRequest;
@class FLTGetPaymentProductRequest;
@class FLTPaymentContextResponse;
@class FLTBasicPaymentProduct;
@class FLTDisplayHintsPaymentItem;
@class FLTPaymentProduct;
@class FLTPaymentProductField;
@class FLTDisplayHintsProductFields;
@class FLTTooltip;
@class FLTFormElement;
@class FLTValueMap;
@class FLTPaymentProductFieldDisplayElement;
@class FLTDataRestrictions;
@class FLTAbstractValidationRule;
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

@interface FLTBasicPaymentProduct : NSObject
@property(nonatomic, copy, nullable) NSString * id;
@property(nonatomic, copy, nullable) NSString * paymentMethod;
@property(nonatomic, copy, nullable) NSString * paymentProductGroup;
@property(nonatomic, strong, nullable) NSNumber * minAmount;
@property(nonatomic, strong, nullable) NSNumber * maxAmount;
@property(nonatomic, strong, nullable) NSNumber * allowsRecurring;
@property(nonatomic, strong, nullable) NSNumber * allowsTokenization;
@property(nonatomic, strong, nullable) NSNumber * usesRedirectionTo3rdParty;
@property(nonatomic, strong, nullable) FLTDisplayHintsPaymentItem * displayHints;
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

@interface FLTPaymentProductField : NSObject
@property(nonatomic, copy, nullable) NSString * id;
@property(nonatomic, assign) FLTType type;
@property(nonatomic, strong, nullable) FLTDisplayHintsProductFields * displayHints;
@property(nonatomic, strong, nullable) FLTDataRestrictions * dataRestrictions;
@end

@interface FLTDisplayHintsProductFields : NSObject
@property(nonatomic, strong, nullable) NSNumber * alwaysShow;
@property(nonatomic, strong, nullable) NSNumber * obfuscate;
@property(nonatomic, strong, nullable) NSNumber * displayOrder;
@property(nonatomic, copy, nullable) NSString * label;
@property(nonatomic, copy, nullable) NSString * placeholderLabel;
@property(nonatomic, copy, nullable) NSString * link;
@property(nonatomic, copy, nullable) NSString * mask;
@property(nonatomic, assign) FLTPreferredInputType preferredInputType;
@property(nonatomic, strong, nullable) FLTTooltip * tooltip;
@property(nonatomic, strong, nullable) FLTFormElement * formElement;
@end

@interface FLTTooltip : NSObject
@property(nonatomic, copy, nullable) NSString * image;
@property(nonatomic, copy, nullable) NSString * label;
@end

@interface FLTFormElement : NSObject
@property(nonatomic, assign) FLTListType type;
@property(nonatomic, strong, nullable) NSArray<FLTValueMap *> * valueMapping;
@end

@interface FLTValueMap : NSObject
@property(nonatomic, copy, nullable) NSString * value;
@property(nonatomic, strong, nullable) NSArray<FLTPaymentProductFieldDisplayElement *> * displayElements;
@end

@interface FLTPaymentProductFieldDisplayElement : NSObject
@property(nonatomic, copy, nullable) NSString * id;
@property(nonatomic, assign) FLTPaymentProductFieldDisplayElementType type;
@property(nonatomic, copy, nullable) NSString * value;
@end

@interface FLTDataRestrictions : NSObject
@property(nonatomic, strong, nullable) NSNumber * isRequired;
@property(nonatomic, strong, nullable) NSArray<FLTAbstractValidationRule *> * validationRules;
@end

@interface FLTAbstractValidationRule : NSObject
@property(nonatomic, copy, nullable) NSString * messageId;
@property(nonatomic, assign) FLTValidationType type;
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
- (nullable FLTSessionResponse *)createClientSessionRequest:(FLTSessionRequest *)request error:(FlutterError *_Nullable *_Nonnull)error;
- (void)_passThroughA:(FLTPaymentProductField *)a b:(FLTBasicPaymentProduct *)b c:(FLTAbstractValidationRule *)c d:(FLTValueMap *)d e:(FLTPaymentProductFieldDisplayElement *)e error:(FlutterError *_Nullable *_Nonnull)error;
- (void)getBasicPaymentItemsRequest:(nullable FLTPaymentContextRequest *)request completion:(void(^)(FLTPaymentContextResponse *_Nullable, FlutterError *_Nullable))completion;
- (void)getPaymentProductRequest:(nullable FLTGetPaymentProductRequest *)request completion:(void(^)(FLTPaymentProduct *_Nullable, FlutterError *_Nullable))completion;
- (void)preparePaymentRequestRequest:(nullable FLTPaymentRequest *)request completion:(void(^)(FLTPreparedPaymentRequest *_Nullable, FlutterError *_Nullable))completion;
@end

extern void FLTApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTApi> *_Nullable api);

NS_ASSUME_NONNULL_END
