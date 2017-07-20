#import "PierLimiteDisponibilidadeResponse.h"

@implementation PierLimiteDisponibilidadeResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"limiteGlobal": @"limiteGlobal", @"limiteCompra": @"limiteCompra", @"limiteParcelado": @"limiteParcelado", @"limiteParcelas": @"limiteParcelas", @"limiteSaqueGlobal": @"limiteSaqueGlobal", @"limiteSaquePeriodo": @"limiteSaquePeriodo", @"limiteConsignado": @"limiteConsignado", @"limiteInternacionalCompra": @"limiteInternacionalCompra", @"limiteInternacionalParcelado": @"limiteInternacionalParcelado", @"limiteInternacionalParcelas": @"limiteInternacionalParcelas", @"limiteInternacionalSaqueGlobal": @"limiteInternacionalSaqueGlobal", @"limiteInternacionalSaquePeriodo": @"limiteInternacionalSaquePeriodo", @"limiteMaximo": @"limiteMaximo", @"saldoDisponivelGlobal": @"saldoDisponivelGlobal", @"saldoDisponivelCompra": @"saldoDisponivelCompra", @"saldoDisponivelParcelado": @"saldoDisponivelParcelado", @"saldoDisponivelParcelas": @"saldoDisponivelParcelas", @"saldoDisponivelSaque": @"saldoDisponivelSaque", @"saldoPontosFidelidade": @"saldoPontosFidelidade", @"saldoDisponivelCompraInternacional": @"saldoDisponivelCompraInternacional", @"saldoDisponivelSaqueInternacional": @"saldoDisponivelSaqueInternacional" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[];

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
