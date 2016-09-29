#import "PierLimiteDisponibilidade.h"

@implementation PierLimiteDisponibilidade

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"limiteCompra": @"limiteCompra", @"limiteConsignado": @"limiteConsignado", @"limiteExterno": @"limiteExterno", @"limiteExtra": @"limiteExtra", @"limiteGlobal": @"limiteGlobal", @"limiteInternacionalCompra": @"limiteInternacionalCompra", @"limiteInternacionalParcelado": @"limiteInternacionalParcelado", @"limiteInternacionalParcelas": @"limiteInternacionalParcelas", @"limiteInternacionalSaqueGlobal": @"limiteInternacionalSaqueGlobal", @"limiteInternacionalSaquePeriodo": @"limiteInternacionalSaquePeriodo", @"limiteMensal": @"limiteMensal", @"limiteParcelado": @"limiteParcelado", @"limiteParcelas": @"limiteParcelas", @"limiteSaqueGlobal": @"limiteSaqueGlobal", @"limiteSaquePeriodo": @"limiteSaquePeriodo", @"saldoDisponivelCompra": @"saldoDisponivelCompra", @"saldoDisponivelCompraInternacional": @"saldoDisponivelCompraInternacional", @"saldoDisponivelExterno": @"saldoDisponivelExterno", @"saldoDisponivelExtra": @"saldoDisponivelExtra", @"saldoDisponivelGlobal": @"saldoDisponivelGlobal", @"saldoDisponivelMensal": @"saldoDisponivelMensal", @"saldoDisponivelParcelado": @"saldoDisponivelParcelado", @"saldoDisponivelParcelas": @"saldoDisponivelParcelas", @"saldoDisponivelSaque": @"saldoDisponivelSaque", @"saldoDisponivelSaqueInternacional": @"saldoDisponivelSaqueInternacional", @"saldoPontosFidelidade": @"saldoPontosFidelidade" }];
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
