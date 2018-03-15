#import "PierAcordoDetalheResponse.h"

@implementation PierAcordoDetalheResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idConta": @"idConta", @"statusAcordo": @"statusAcordo", @"valorAcordo": @"valorAcordo", @"dataAcordo": @"dataAcordo", @"quantidadeParcelas": @"quantidadeParcelas", @"saldoAtualFinal": @"saldoAtualFinal", @"diasEmAtraso": @"diasEmAtraso", @"statusConta": @"statusConta", @"assessoriaAtual": @"assessoriaAtual", @"totalPagamentos": @"totalPagamentos", @"dataVencimentoCobranca": @"dataVencimentoCobranca", @"dataQuebraAcordo": @"dataQuebraAcordo", @"valorParcela1": @"valorParcela1", @"valorParcelaN": @"valorParcelaN", @"parcelaPedida": @"parcelaPedida", @"vencimentoParcelaPedida": @"vencimentoParcelaPedida" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idConta", @"statusAcordo", @"valorAcordo", @"dataAcordo", @"quantidadeParcelas", @"saldoAtualFinal", @"diasEmAtraso", @"statusConta", @"assessoriaAtual", @"totalPagamentos", @"dataVencimentoCobranca", @"dataQuebraAcordo", @"valorParcela1", @"valorParcelaN", @"parcelaPedida", @"vencimentoParcelaPedida"];

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
