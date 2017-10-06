#import "PierTransacaoPaySecureRequest.h"

@implementation PierTransacaoPaySecureRequest

- (instancetype)init {
  self = [super init];

  if (self) {
    // initalise property's default value, if any
    
  }

  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"dataHoraTransacao": @"dataHoraTransacao", @"numeroCartao": @"numeroCartao", @"idCartao": @"idCartao", @"valor": @"valor", @"nsuOrigem": @"nsuOrigem", @"nomePortadorCartao": @"nomePortadorCartao", @"origem": @"origem", @"terminalRequisitante": @"terminalRequisitante", @"codigoProcessamento": @"codigoProcessamento", @"dataValidadeCartao": @"dataValidadeCartao", @"numeroEstabelecimento": @"numeroEstabelecimento", @"numeroParcelas": @"numeroParcelas", @"codigoSegurancaCartao": @"codigoSegurancaCartao", @"sort": @"sort" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"dataHoraTransacao", @"numeroCartao", @"idCartao", @"valor", @"nsuOrigem", @"nomePortadorCartao", @"origem", @"sort"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
