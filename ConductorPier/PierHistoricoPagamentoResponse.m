#import "PierHistoricoPagamentoResponse.h"

@implementation PierHistoricoPagamentoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idConta": @"idConta", @"idPagamento": @"idPagamento", @"idEstabelecimento": @"idEstabelecimento", @"idBanco": @"idBanco", @"idCartao": @"idCartao", @"valorPagamento": @"valorPagamento", @"dataHoraPagamento": @"dataHoraPagamento", @"dataHoraEntradaPagamento": @"dataHoraEntradaPagamento", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idConta", @"idPagamento", @"idEstabelecimento", @"idBanco", @"idCartao", @"valorPagamento", @"dataHoraPagamento", @"dataHoraEntradaPagamento", @"status"];

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
