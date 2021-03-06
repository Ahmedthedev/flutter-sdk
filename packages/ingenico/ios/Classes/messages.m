// Autogenerated from Pigeon (v1.0.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "messages.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString *, id> *wrapResult(id result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ? error.code : [NSNull null]),
        @"message": (error.message ? error.message : [NSNull null]),
        @"details": (error.details ? error.details : [NSNull null]),
        };
  }
  return @{
      @"result": (result ? result : [NSNull null]),
      @"error": errorDict,
      };
}

@interface FLTSessionRequest ()
+ (FLTSessionRequest *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTSessionResponse ()
+ (FLTSessionResponse *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTPaymentContextRequest ()
+ (FLTPaymentContextRequest *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTGetPaymentProductRequest ()
+ (FLTGetPaymentProductRequest *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTPaymentContextResponse ()
+ (FLTPaymentContextResponse *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTBasicPaymentProduct ()
+ (FLTBasicPaymentProduct *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTDisplayHintsPaymentItem ()
+ (FLTDisplayHintsPaymentItem *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTPaymentProduct ()
+ (FLTPaymentProduct *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTPaymentProductField ()
+ (FLTPaymentProductField *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTDisplayHintsProductFields ()
+ (FLTDisplayHintsProductFields *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTTooltip ()
+ (FLTTooltip *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTFormElement ()
+ (FLTFormElement *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTValueMap ()
+ (FLTValueMap *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTPaymentProductFieldDisplayElement ()
+ (FLTPaymentProductFieldDisplayElement *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTDataRestrictions ()
+ (FLTDataRestrictions *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTAbstractValidationRule ()
+ (FLTAbstractValidationRule *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTPaymentRequest ()
+ (FLTPaymentRequest *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTPreparedPaymentRequest ()
+ (FLTPreparedPaymentRequest *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end

@implementation FLTSessionRequest
+ (FLTSessionRequest *)fromMap:(NSDictionary *)dict {
  FLTSessionRequest *result = [[FLTSessionRequest alloc] init];
  result.clientSessionId = dict[@"clientSessionId"];
  if ((NSNull *)result.clientSessionId == [NSNull null]) {
    result.clientSessionId = nil;
  }
  result.customerId = dict[@"customerId"];
  if ((NSNull *)result.customerId == [NSNull null]) {
    result.customerId = nil;
  }
  result.clientApiUrl = dict[@"clientApiUrl"];
  if ((NSNull *)result.clientApiUrl == [NSNull null]) {
    result.clientApiUrl = nil;
  }
  result.assetBaseUrl = dict[@"assetBaseUrl"];
  if ((NSNull *)result.assetBaseUrl == [NSNull null]) {
    result.assetBaseUrl = nil;
  }
  result.environmentIsProduction = dict[@"environmentIsProduction"];
  if ((NSNull *)result.environmentIsProduction == [NSNull null]) {
    result.environmentIsProduction = nil;
  }
  result.applicationIdentifier = dict[@"applicationIdentifier"];
  if ((NSNull *)result.applicationIdentifier == [NSNull null]) {
    result.applicationIdentifier = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.clientSessionId ? self.clientSessionId : [NSNull null]), @"clientSessionId", (self.customerId ? self.customerId : [NSNull null]), @"customerId", (self.clientApiUrl ? self.clientApiUrl : [NSNull null]), @"clientApiUrl", (self.assetBaseUrl ? self.assetBaseUrl : [NSNull null]), @"assetBaseUrl", (self.environmentIsProduction ? self.environmentIsProduction : [NSNull null]), @"environmentIsProduction", (self.applicationIdentifier ? self.applicationIdentifier : [NSNull null]), @"applicationIdentifier", nil];
}
@end

@implementation FLTSessionResponse
+ (FLTSessionResponse *)fromMap:(NSDictionary *)dict {
  FLTSessionResponse *result = [[FLTSessionResponse alloc] init];
  result.sessionId = dict[@"sessionId"];
  if ((NSNull *)result.sessionId == [NSNull null]) {
    result.sessionId = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.sessionId ? self.sessionId : [NSNull null]), @"sessionId", nil];
}
@end

@implementation FLTPaymentContextRequest
+ (FLTPaymentContextRequest *)fromMap:(NSDictionary *)dict {
  FLTPaymentContextRequest *result = [[FLTPaymentContextRequest alloc] init];
  result.sessionId = dict[@"sessionId"];
  if ((NSNull *)result.sessionId == [NSNull null]) {
    result.sessionId = nil;
  }
  result.amountValue = dict[@"amountValue"];
  if ((NSNull *)result.amountValue == [NSNull null]) {
    result.amountValue = nil;
  }
  result.currencyCode = dict[@"currencyCode"];
  if ((NSNull *)result.currencyCode == [NSNull null]) {
    result.currencyCode = nil;
  }
  result.countryCode = dict[@"countryCode"];
  if ((NSNull *)result.countryCode == [NSNull null]) {
    result.countryCode = nil;
  }
  result.isRecurring = dict[@"isRecurring"];
  if ((NSNull *)result.isRecurring == [NSNull null]) {
    result.isRecurring = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.sessionId ? self.sessionId : [NSNull null]), @"sessionId", (self.amountValue ? self.amountValue : [NSNull null]), @"amountValue", (self.currencyCode ? self.currencyCode : [NSNull null]), @"currencyCode", (self.countryCode ? self.countryCode : [NSNull null]), @"countryCode", (self.isRecurring ? self.isRecurring : [NSNull null]), @"isRecurring", nil];
}
@end

@implementation FLTGetPaymentProductRequest
+ (FLTGetPaymentProductRequest *)fromMap:(NSDictionary *)dict {
  FLTGetPaymentProductRequest *result = [[FLTGetPaymentProductRequest alloc] init];
  result.sessionId = dict[@"sessionId"];
  if ((NSNull *)result.sessionId == [NSNull null]) {
    result.sessionId = nil;
  }
  result.paymentProductId = dict[@"paymentProductId"];
  if ((NSNull *)result.paymentProductId == [NSNull null]) {
    result.paymentProductId = nil;
  }
  result.amountValue = dict[@"amountValue"];
  if ((NSNull *)result.amountValue == [NSNull null]) {
    result.amountValue = nil;
  }
  result.currencyCode = dict[@"currencyCode"];
  if ((NSNull *)result.currencyCode == [NSNull null]) {
    result.currencyCode = nil;
  }
  result.countryCode = dict[@"countryCode"];
  if ((NSNull *)result.countryCode == [NSNull null]) {
    result.countryCode = nil;
  }
  result.isRecurring = dict[@"isRecurring"];
  if ((NSNull *)result.isRecurring == [NSNull null]) {
    result.isRecurring = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.sessionId ? self.sessionId : [NSNull null]), @"sessionId", (self.paymentProductId ? self.paymentProductId : [NSNull null]), @"paymentProductId", (self.amountValue ? self.amountValue : [NSNull null]), @"amountValue", (self.currencyCode ? self.currencyCode : [NSNull null]), @"currencyCode", (self.countryCode ? self.countryCode : [NSNull null]), @"countryCode", (self.isRecurring ? self.isRecurring : [NSNull null]), @"isRecurring", nil];
}
@end

@implementation FLTPaymentContextResponse
+ (FLTPaymentContextResponse *)fromMap:(NSDictionary *)dict {
  FLTPaymentContextResponse *result = [[FLTPaymentContextResponse alloc] init];
  result.basicPaymentProduct = dict[@"basicPaymentProduct"];
  if ((NSNull *)result.basicPaymentProduct == [NSNull null]) {
    result.basicPaymentProduct = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.basicPaymentProduct ? self.basicPaymentProduct : [NSNull null]), @"basicPaymentProduct", nil];
}
@end

@implementation FLTBasicPaymentProduct
+ (FLTBasicPaymentProduct *)fromMap:(NSDictionary *)dict {
  FLTBasicPaymentProduct *result = [[FLTBasicPaymentProduct alloc] init];
  result.id = dict[@"id"];
  if ((NSNull *)result.id == [NSNull null]) {
    result.id = nil;
  }
  result.paymentMethod = dict[@"paymentMethod"];
  if ((NSNull *)result.paymentMethod == [NSNull null]) {
    result.paymentMethod = nil;
  }
  result.paymentProductGroup = dict[@"paymentProductGroup"];
  if ((NSNull *)result.paymentProductGroup == [NSNull null]) {
    result.paymentProductGroup = nil;
  }
  result.minAmount = dict[@"minAmount"];
  if ((NSNull *)result.minAmount == [NSNull null]) {
    result.minAmount = nil;
  }
  result.maxAmount = dict[@"maxAmount"];
  if ((NSNull *)result.maxAmount == [NSNull null]) {
    result.maxAmount = nil;
  }
  result.allowsRecurring = dict[@"allowsRecurring"];
  if ((NSNull *)result.allowsRecurring == [NSNull null]) {
    result.allowsRecurring = nil;
  }
  result.allowsTokenization = dict[@"allowsTokenization"];
  if ((NSNull *)result.allowsTokenization == [NSNull null]) {
    result.allowsTokenization = nil;
  }
  result.usesRedirectionTo3rdParty = dict[@"usesRedirectionTo3rdParty"];
  if ((NSNull *)result.usesRedirectionTo3rdParty == [NSNull null]) {
    result.usesRedirectionTo3rdParty = nil;
  }
  result.displayHints = [FLTDisplayHintsPaymentItem fromMap:dict[@"displayHints"]];
  if ((NSNull *)result.displayHints == [NSNull null]) {
    result.displayHints = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.id ? self.id : [NSNull null]), @"id", (self.paymentMethod ? self.paymentMethod : [NSNull null]), @"paymentMethod", (self.paymentProductGroup ? self.paymentProductGroup : [NSNull null]), @"paymentProductGroup", (self.minAmount ? self.minAmount : [NSNull null]), @"minAmount", (self.maxAmount ? self.maxAmount : [NSNull null]), @"maxAmount", (self.allowsRecurring ? self.allowsRecurring : [NSNull null]), @"allowsRecurring", (self.allowsTokenization ? self.allowsTokenization : [NSNull null]), @"allowsTokenization", (self.usesRedirectionTo3rdParty ? self.usesRedirectionTo3rdParty : [NSNull null]), @"usesRedirectionTo3rdParty", (self.displayHints ? [self.displayHints toMap] : [NSNull null]), @"displayHints", nil];
}
@end

@implementation FLTDisplayHintsPaymentItem
+ (FLTDisplayHintsPaymentItem *)fromMap:(NSDictionary *)dict {
  FLTDisplayHintsPaymentItem *result = [[FLTDisplayHintsPaymentItem alloc] init];
  result.displayOrder = dict[@"displayOrder"];
  if ((NSNull *)result.displayOrder == [NSNull null]) {
    result.displayOrder = nil;
  }
  result.label = dict[@"label"];
  if ((NSNull *)result.label == [NSNull null]) {
    result.label = nil;
  }
  result.logoUrl = dict[@"logoUrl"];
  if ((NSNull *)result.logoUrl == [NSNull null]) {
    result.logoUrl = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.displayOrder ? self.displayOrder : [NSNull null]), @"displayOrder", (self.label ? self.label : [NSNull null]), @"label", (self.logoUrl ? self.logoUrl : [NSNull null]), @"logoUrl", nil];
}
@end

@implementation FLTPaymentProduct
+ (FLTPaymentProduct *)fromMap:(NSDictionary *)dict {
  FLTPaymentProduct *result = [[FLTPaymentProduct alloc] init];
  result.id = dict[@"id"];
  if ((NSNull *)result.id == [NSNull null]) {
    result.id = nil;
  }
  result.paymentMethod = dict[@"paymentMethod"];
  if ((NSNull *)result.paymentMethod == [NSNull null]) {
    result.paymentMethod = nil;
  }
  result.paymentProductGroup = dict[@"paymentProductGroup"];
  if ((NSNull *)result.paymentProductGroup == [NSNull null]) {
    result.paymentProductGroup = nil;
  }
  result.minAmount = dict[@"minAmount"];
  if ((NSNull *)result.minAmount == [NSNull null]) {
    result.minAmount = nil;
  }
  result.maxAmount = dict[@"maxAmount"];
  if ((NSNull *)result.maxAmount == [NSNull null]) {
    result.maxAmount = nil;
  }
  result.allowsRecurring = dict[@"allowsRecurring"];
  if ((NSNull *)result.allowsRecurring == [NSNull null]) {
    result.allowsRecurring = nil;
  }
  result.allowsTokenization = dict[@"allowsTokenization"];
  if ((NSNull *)result.allowsTokenization == [NSNull null]) {
    result.allowsTokenization = nil;
  }
  result.usesRedirectionTo3rdParty = dict[@"usesRedirectionTo3rdParty"];
  if ((NSNull *)result.usesRedirectionTo3rdParty == [NSNull null]) {
    result.usesRedirectionTo3rdParty = nil;
  }
  result.displayHints = [FLTDisplayHintsPaymentItem fromMap:dict[@"displayHints"]];
  if ((NSNull *)result.displayHints == [NSNull null]) {
    result.displayHints = nil;
  }
  result.fields = dict[@"fields"];
  if ((NSNull *)result.fields == [NSNull null]) {
    result.fields = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.id ? self.id : [NSNull null]), @"id", (self.paymentMethod ? self.paymentMethod : [NSNull null]), @"paymentMethod", (self.paymentProductGroup ? self.paymentProductGroup : [NSNull null]), @"paymentProductGroup", (self.minAmount ? self.minAmount : [NSNull null]), @"minAmount", (self.maxAmount ? self.maxAmount : [NSNull null]), @"maxAmount", (self.allowsRecurring ? self.allowsRecurring : [NSNull null]), @"allowsRecurring", (self.allowsTokenization ? self.allowsTokenization : [NSNull null]), @"allowsTokenization", (self.usesRedirectionTo3rdParty ? self.usesRedirectionTo3rdParty : [NSNull null]), @"usesRedirectionTo3rdParty", (self.displayHints ? [self.displayHints toMap] : [NSNull null]), @"displayHints", (self.fields ? self.fields : [NSNull null]), @"fields", nil];
}
@end

@implementation FLTPaymentProductField
+ (FLTPaymentProductField *)fromMap:(NSDictionary *)dict {
  FLTPaymentProductField *result = [[FLTPaymentProductField alloc] init];
  result.id = dict[@"id"];
  if ((NSNull *)result.id == [NSNull null]) {
    result.id = nil;
  }
  result.type = [dict[@"type"] integerValue];
  result.displayHints = [FLTDisplayHintsProductFields fromMap:dict[@"displayHints"]];
  if ((NSNull *)result.displayHints == [NSNull null]) {
    result.displayHints = nil;
  }
  result.dataRestrictions = [FLTDataRestrictions fromMap:dict[@"dataRestrictions"]];
  if ((NSNull *)result.dataRestrictions == [NSNull null]) {
    result.dataRestrictions = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.id ? self.id : [NSNull null]), @"id", @(self.type), @"type", (self.displayHints ? [self.displayHints toMap] : [NSNull null]), @"displayHints", (self.dataRestrictions ? [self.dataRestrictions toMap] : [NSNull null]), @"dataRestrictions", nil];
}
@end

@implementation FLTDisplayHintsProductFields
+ (FLTDisplayHintsProductFields *)fromMap:(NSDictionary *)dict {
  FLTDisplayHintsProductFields *result = [[FLTDisplayHintsProductFields alloc] init];
  result.alwaysShow = dict[@"alwaysShow"];
  if ((NSNull *)result.alwaysShow == [NSNull null]) {
    result.alwaysShow = nil;
  }
  result.obfuscate = dict[@"obfuscate"];
  if ((NSNull *)result.obfuscate == [NSNull null]) {
    result.obfuscate = nil;
  }
  result.displayOrder = dict[@"displayOrder"];
  if ((NSNull *)result.displayOrder == [NSNull null]) {
    result.displayOrder = nil;
  }
  result.label = dict[@"label"];
  if ((NSNull *)result.label == [NSNull null]) {
    result.label = nil;
  }
  result.placeholderLabel = dict[@"placeholderLabel"];
  if ((NSNull *)result.placeholderLabel == [NSNull null]) {
    result.placeholderLabel = nil;
  }
  result.link = dict[@"link"];
  if ((NSNull *)result.link == [NSNull null]) {
    result.link = nil;
  }
  result.mask = dict[@"mask"];
  if ((NSNull *)result.mask == [NSNull null]) {
    result.mask = nil;
  }
  result.preferredInputType = [dict[@"preferredInputType"] integerValue];
  result.tooltip = [FLTTooltip fromMap:dict[@"tooltip"]];
  if ((NSNull *)result.tooltip == [NSNull null]) {
    result.tooltip = nil;
  }
  result.formElement = [FLTFormElement fromMap:dict[@"formElement"]];
  if ((NSNull *)result.formElement == [NSNull null]) {
    result.formElement = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.alwaysShow ? self.alwaysShow : [NSNull null]), @"alwaysShow", (self.obfuscate ? self.obfuscate : [NSNull null]), @"obfuscate", (self.displayOrder ? self.displayOrder : [NSNull null]), @"displayOrder", (self.label ? self.label : [NSNull null]), @"label", (self.placeholderLabel ? self.placeholderLabel : [NSNull null]), @"placeholderLabel", (self.link ? self.link : [NSNull null]), @"link", (self.mask ? self.mask : [NSNull null]), @"mask", @(self.preferredInputType), @"preferredInputType", (self.tooltip ? [self.tooltip toMap] : [NSNull null]), @"tooltip", (self.formElement ? [self.formElement toMap] : [NSNull null]), @"formElement", nil];
}
@end

@implementation FLTTooltip
+ (FLTTooltip *)fromMap:(NSDictionary *)dict {
  FLTTooltip *result = [[FLTTooltip alloc] init];
  result.image = dict[@"image"];
  if ((NSNull *)result.image == [NSNull null]) {
    result.image = nil;
  }
  result.label = dict[@"label"];
  if ((NSNull *)result.label == [NSNull null]) {
    result.label = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.image ? self.image : [NSNull null]), @"image", (self.label ? self.label : [NSNull null]), @"label", nil];
}
@end

@implementation FLTFormElement
+ (FLTFormElement *)fromMap:(NSDictionary *)dict {
  FLTFormElement *result = [[FLTFormElement alloc] init];
  result.type = [dict[@"type"] integerValue];
  result.valueMapping = dict[@"valueMapping"];
  if ((NSNull *)result.valueMapping == [NSNull null]) {
    result.valueMapping = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:@(self.type), @"type", (self.valueMapping ? self.valueMapping : [NSNull null]), @"valueMapping", nil];
}
@end

@implementation FLTValueMap
+ (FLTValueMap *)fromMap:(NSDictionary *)dict {
  FLTValueMap *result = [[FLTValueMap alloc] init];
  result.value = dict[@"value"];
  if ((NSNull *)result.value == [NSNull null]) {
    result.value = nil;
  }
  result.displayElements = dict[@"displayElements"];
  if ((NSNull *)result.displayElements == [NSNull null]) {
    result.displayElements = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.value ? self.value : [NSNull null]), @"value", (self.displayElements ? self.displayElements : [NSNull null]), @"displayElements", nil];
}
@end

@implementation FLTPaymentProductFieldDisplayElement
+ (FLTPaymentProductFieldDisplayElement *)fromMap:(NSDictionary *)dict {
  FLTPaymentProductFieldDisplayElement *result = [[FLTPaymentProductFieldDisplayElement alloc] init];
  result.id = dict[@"id"];
  if ((NSNull *)result.id == [NSNull null]) {
    result.id = nil;
  }
  result.type = [dict[@"type"] integerValue];
  result.value = dict[@"value"];
  if ((NSNull *)result.value == [NSNull null]) {
    result.value = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.id ? self.id : [NSNull null]), @"id", @(self.type), @"type", (self.value ? self.value : [NSNull null]), @"value", nil];
}
@end

@implementation FLTDataRestrictions
+ (FLTDataRestrictions *)fromMap:(NSDictionary *)dict {
  FLTDataRestrictions *result = [[FLTDataRestrictions alloc] init];
  result.isRequired = dict[@"isRequired"];
  if ((NSNull *)result.isRequired == [NSNull null]) {
    result.isRequired = nil;
  }
  result.validationRules = dict[@"validationRules"];
  if ((NSNull *)result.validationRules == [NSNull null]) {
    result.validationRules = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.isRequired ? self.isRequired : [NSNull null]), @"isRequired", (self.validationRules ? self.validationRules : [NSNull null]), @"validationRules", nil];
}
@end

@implementation FLTAbstractValidationRule
+ (FLTAbstractValidationRule *)fromMap:(NSDictionary *)dict {
  FLTAbstractValidationRule *result = [[FLTAbstractValidationRule alloc] init];
  result.messageId = dict[@"messageId"];
  if ((NSNull *)result.messageId == [NSNull null]) {
    result.messageId = nil;
  }
  result.type = [dict[@"type"] integerValue];
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.messageId ? self.messageId : [NSNull null]), @"messageId", @(self.type), @"type", nil];
}
@end

@implementation FLTPaymentRequest
+ (FLTPaymentRequest *)fromMap:(NSDictionary *)dict {
  FLTPaymentRequest *result = [[FLTPaymentRequest alloc] init];
  result.values = dict[@"values"];
  if ((NSNull *)result.values == [NSNull null]) {
    result.values = nil;
  }
  result.paymentProductId = dict[@"paymentProductId"];
  if ((NSNull *)result.paymentProductId == [NSNull null]) {
    result.paymentProductId = nil;
  }
  result.tokenize = dict[@"tokenize"];
  if ((NSNull *)result.tokenize == [NSNull null]) {
    result.tokenize = nil;
  }
  result.sessionId = dict[@"sessionId"];
  if ((NSNull *)result.sessionId == [NSNull null]) {
    result.sessionId = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.values ? self.values : [NSNull null]), @"values", (self.paymentProductId ? self.paymentProductId : [NSNull null]), @"paymentProductId", (self.tokenize ? self.tokenize : [NSNull null]), @"tokenize", (self.sessionId ? self.sessionId : [NSNull null]), @"sessionId", nil];
}
@end

@implementation FLTPreparedPaymentRequest
+ (FLTPreparedPaymentRequest *)fromMap:(NSDictionary *)dict {
  FLTPreparedPaymentRequest *result = [[FLTPreparedPaymentRequest alloc] init];
  result.encryptedFields = dict[@"encryptedFields"];
  if ((NSNull *)result.encryptedFields == [NSNull null]) {
    result.encryptedFields = nil;
  }
  result.encodedClientMetaInfo = dict[@"encodedClientMetaInfo"];
  if ((NSNull *)result.encodedClientMetaInfo == [NSNull null]) {
    result.encodedClientMetaInfo = nil;
  }
  return result;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.encryptedFields ? self.encryptedFields : [NSNull null]), @"encryptedFields", (self.encodedClientMetaInfo ? self.encodedClientMetaInfo : [NSNull null]), @"encodedClientMetaInfo", nil];
}
@end

@interface FLTApiCodecReader : FlutterStandardReader
@end
@implementation FLTApiCodecReader
- (nullable id)readValueOfType:(UInt8)type 
{
  switch (type) {
    case 128:     
      return [FLTAbstractValidationRule fromMap:[self readValue]];
    
    case 129:     
      return [FLTBasicPaymentProduct fromMap:[self readValue]];
    
    case 130:     
      return [FLTGetPaymentProductRequest fromMap:[self readValue]];
    
    case 131:     
      return [FLTPaymentContextRequest fromMap:[self readValue]];
    
    case 132:     
      return [FLTPaymentContextResponse fromMap:[self readValue]];
    
    case 133:     
      return [FLTPaymentProduct fromMap:[self readValue]];
    
    case 134:     
      return [FLTPaymentProductField fromMap:[self readValue]];
    
    case 135:     
      return [FLTPaymentProductFieldDisplayElement fromMap:[self readValue]];
    
    case 136:     
      return [FLTPaymentRequest fromMap:[self readValue]];
    
    case 137:     
      return [FLTPreparedPaymentRequest fromMap:[self readValue]];
    
    case 138:     
      return [FLTSessionRequest fromMap:[self readValue]];
    
    case 139:     
      return [FLTSessionResponse fromMap:[self readValue]];
    
    case 140:     
      return [FLTValueMap fromMap:[self readValue]];
    
    default:    
      return [super readValueOfType:type];
    
  }
}
@end

@interface FLTApiCodecWriter : FlutterStandardWriter
@end
@implementation FLTApiCodecWriter
- (void)writeValue:(id)value 
{
  if ([value isKindOfClass:[FLTAbstractValidationRule class]]) {
    [self writeByte:128];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTBasicPaymentProduct class]]) {
    [self writeByte:129];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTGetPaymentProductRequest class]]) {
    [self writeByte:130];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTPaymentContextRequest class]]) {
    [self writeByte:131];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTPaymentContextResponse class]]) {
    [self writeByte:132];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTPaymentProduct class]]) {
    [self writeByte:133];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTPaymentProductField class]]) {
    [self writeByte:134];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTPaymentProductFieldDisplayElement class]]) {
    [self writeByte:135];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTPaymentRequest class]]) {
    [self writeByte:136];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTPreparedPaymentRequest class]]) {
    [self writeByte:137];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTSessionRequest class]]) {
    [self writeByte:138];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTSessionResponse class]]) {
    [self writeByte:139];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTValueMap class]]) {
    [self writeByte:140];
    [self writeValue:[value toMap]];
  } else 
{
    [super writeValue:value];
  }
}
@end

@interface FLTApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLTApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLTApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLTApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLTApiGetCodec() {
  static dispatch_once_t s_pred = 0;
  static FlutterStandardMessageCodec *s_sharedObject = nil;
  dispatch_once(&s_pred, ^{
    FLTApiCodecReaderWriter *readerWriter = [[FLTApiCodecReaderWriter alloc] init];
    s_sharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return s_sharedObject;
}


void FLTApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.Api.createClientSession"
        binaryMessenger:binaryMessenger
        codec:FLTApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(createClientSessionRequest:error:)], @"FLTApi api (%@) doesn't respond to @selector(createClientSessionRequest:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTSessionRequest *arg_request = args[0];
        FlutterError *error;
        FLTSessionResponse *output = [api createClientSessionRequest:arg_request error:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.Api._passThrough"
        binaryMessenger:binaryMessenger
        codec:FLTApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(_passThroughA:b:c:d:e:error:)], @"FLTApi api (%@) doesn't respond to @selector(_passThroughA:b:c:d:e:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTPaymentProductField *arg_a = args[0];
        FLTBasicPaymentProduct *arg_b = args[1];
        FLTAbstractValidationRule *arg_c = args[2];
        FLTValueMap *arg_d = args[3];
        FLTPaymentProductFieldDisplayElement *arg_e = args[4];
        FlutterError *error;
        [api _passThroughA:arg_a b:arg_b c:arg_c d:arg_d e:arg_e error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.Api.getBasicPaymentItems"
        binaryMessenger:binaryMessenger
        codec:FLTApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getBasicPaymentItemsRequest:completion:)], @"FLTApi api (%@) doesn't respond to @selector(getBasicPaymentItemsRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTPaymentContextRequest *arg_request = args[0];
        [api getBasicPaymentItemsRequest:arg_request completion:^(FLTPaymentContextResponse *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.Api.getPaymentProduct"
        binaryMessenger:binaryMessenger
        codec:FLTApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getPaymentProductRequest:completion:)], @"FLTApi api (%@) doesn't respond to @selector(getPaymentProductRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTGetPaymentProductRequest *arg_request = args[0];
        [api getPaymentProductRequest:arg_request completion:^(FLTPaymentProduct *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.Api.preparePaymentRequest"
        binaryMessenger:binaryMessenger
        codec:FLTApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(preparePaymentRequestRequest:completion:)], @"FLTApi api (%@) doesn't respond to @selector(preparePaymentRequestRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTPaymentRequest *arg_request = args[0];
        [api preparePaymentRequestRequest:arg_request completion:^(FLTPreparedPaymentRequest *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
