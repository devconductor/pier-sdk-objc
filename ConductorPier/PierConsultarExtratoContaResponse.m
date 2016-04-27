#import "PierConsultarExtratoContaResponse.h"

@implementation PierConsultarExtratoContaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"codigoRetorno": @"codigoRetorno", @"comprasNacionais": @"comprasNacionais", @"cpf": @"cpf", @"creditosNacionais": @"creditosNacionais", @"dataVencimento": @"dataVencimento", @"debitosNacionais": @"debitosNacionais", @"descricaoRetorno": @"descricaoRetorno", @"extrato": @"extrato", @"idCartao": @"idCartao", @"idConta": @"idConta", @"multa": @"multa", @"pagamentos": @"pagamentos", @"saldoAtualFinal": @"saldoAtualFinal", @"saldoExtratoAnterior": @"saldoExtratoAnterior", @"tarifasNacionais": @"tarifasNacionais", @"valorMinimoExtrato": @"valorMinimoExtrato" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"codigoRetorno", @"comprasNacionais", @"cpf", @"creditosNacionais", @"dataVencimento", @"debitosNacionais", @"descricaoRetorno", @"extrato", @"idCartao", @"idConta", @"multa", @"pagamentos", @"saldoAtualFinal", @"saldoExtratoAnterior", @"tarifasNacionais", @"valorMinimoExtrato"];

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
