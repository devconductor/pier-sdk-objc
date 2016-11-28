#import "PierCartaoImpressao.h"

@implementation PierCartaoImpressao

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"centroCustoConta": @"centroCustoConta", @"cpf": @"cpf", @"cvv2": @"cvv2", @"dataGeracao": @"dataGeracao", @"dataValidade": @"dataValidade", @"idBandeira": @"idBandeira", @"idCartao": @"idCartao", @"idConta": @"idConta", @"idPessoa": @"idPessoa", @"idTipoCartao": @"idTipoCartao", @"nomeEmpregador": @"nomeEmpregador", @"nomeEmpresa": @"nomeEmpresa", @"nomeEmpresaBeneficio": @"nomeEmpresaBeneficio", @"nomeOrigemComercial": @"nomeOrigemComercial", @"nomePlastico": @"nomePlastico", @"numeroAgencia": @"numeroAgencia", @"numeroCartao": @"numeroCartao", @"numeroContaCorente": @"numeroContaCorente", @"tipoPortador": @"tipoPortador", @"trilha1": @"trilha1", @"trilha2": @"trilha2", @"trilhaCVV1": @"trilhaCVV1", @"trilhaCVV2": @"trilhaCVV2" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"centroCustoConta", @"cpf", @"cvv2", @"dataGeracao", @"dataValidade", @"idBandeira", @"idCartao", @"idConta", @"idPessoa", @"idTipoCartao", @"nomeEmpregador", @"nomeEmpresa", @"nomeEmpresaBeneficio", @"nomeOrigemComercial", @"nomePlastico", @"numeroAgencia", @"numeroCartao", @"numeroContaCorente", @"tipoPortador", @"trilha1", @"trilha2", @"trilhaCVV1", @"trilhaCVV2"];

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
