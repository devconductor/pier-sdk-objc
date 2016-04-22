#import "CaaSConsultarCartaoResponse.h"

@implementation CaaSConsultarCartaoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"codigoRetorno": @"codigoRetorno", @"cvv2": @"cvv2", @"dataValidade": @"dataValidade", @"descricaoRetorno": @"descricaoRetorno", @"idCartao": @"idCartao", @"idConta": @"idConta", @"nomePortador": @"nomePortador", @"numCartao": @"numCartao", @"saldoDisponivel": @"saldoDisponivel", @"statusCartao": @"statusCartao", @"statusConta": @"statusConta" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"codigoRetorno", @"cvv2", @"dataValidade", @"descricaoRetorno", @"idCartao", @"idConta", @"nomePortador", @"numCartao", @"saldoDisponivel", @"statusCartao", @"statusConta"];

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
