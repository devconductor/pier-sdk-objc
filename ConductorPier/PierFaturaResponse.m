#import "PierFaturaResponse.h"

@implementation PierFaturaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idConta": @"idConta", @"idProduto": @"idProduto", @"dataVencimento": @"dataVencimento", @"saldoFaturaAnterior": @"saldoFaturaAnterior", @"saldoMulta": @"saldoMulta", @"saldoCompras": @"saldoCompras", @"saldoPagamentos": @"saldoPagamentos", @"saldoTarifas": @"saldoTarifas", @"saldoDebitos": @"saldoDebitos", @"saldoCreditos": @"saldoCreditos", @"saldoAtualFinal": @"saldoAtualFinal", @"valorMinimoFatura": @"valorMinimoFatura", @"flagEmiteFatura": @"flagEmiteFatura" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idConta", @"idProduto", @"dataVencimento", @"saldoFaturaAnterior", @"saldoMulta", @"saldoCompras", @"saldoPagamentos", @"saldoTarifas", @"saldoDebitos", @"saldoCreditos", @"saldoAtualFinal", @"valorMinimoFatura", @"flagEmiteFatura"];

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
