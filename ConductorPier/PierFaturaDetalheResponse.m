#import "PierFaturaDetalheResponse.h"

@implementation PierFaturaDetalheResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idConta": @"idConta", @"situacaoProcessamento": @"situacaoProcessamento", @"pagamentoEfetuado": @"pagamentoEfetuado", @"dataVencimentoFatura": @"dataVencimentoFatura", @"dataVencimentoReal": @"dataVencimentoReal", @"dataFechamento": @"dataFechamento", @"valorTotal": @"valorTotal", @"valorPagamentoMinimo": @"valorPagamentoMinimo", @"lancamentosFaturaResponse": @"lancamentosFaturaResponse", @"saldoAnterior": @"saldoAnterior" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idConta", @"situacaoProcessamento", @"pagamentoEfetuado", @"dataVencimentoFatura", @"dataVencimentoReal", @"dataFechamento", @"valorTotal", @"valorPagamentoMinimo", @"lancamentosFaturaResponse", @"saldoAnterior"];

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
