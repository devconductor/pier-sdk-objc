#import "PierCartaoImpressaoResponse.h"

@implementation PierCartaoImpressaoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"flagVirtual": @"flagVirtual", @"idConta": @"idConta", @"idPessoa": @"idPessoa", @"idCartao": @"idCartao", @"idBandeira": @"idBandeira", @"idTipoCartao": @"idTipoCartao", @"numeroCartao": @"numeroCartao", @"nomePlastico": @"nomePlastico", @"cvv2": @"cvv2", @"dataGeracao": @"dataGeracao", @"dataValidade": @"dataValidade", @"nomeOrigemComercial": @"nomeOrigemComercial", @"nomeEmpresa": @"nomeEmpresa", @"numeroAgencia": @"numeroAgencia", @"numeroContaCorente": @"numeroContaCorente", @"nomeEmpresaBeneficio": @"nomeEmpresaBeneficio", @"cpf": @"cpf", @"tipoPortador": @"tipoPortador", @"nomeEmpregador": @"nomeEmpregador", @"trilha1": @"trilha1", @"trilha2": @"trilha2", @"trilhaCVV1": @"trilhaCVV1", @"trilhaCVV2": @"trilhaCVV2" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"flagVirtual", @"idConta", @"idPessoa", @"idCartao", @"idBandeira", @"idTipoCartao", @"numeroCartao", @"nomePlastico", @"cvv2", @"dataGeracao", @"dataValidade", @"nomeOrigemComercial", @"nomeEmpresa", @"numeroAgencia", @"numeroContaCorente", @"nomeEmpresaBeneficio", @"cpf", @"tipoPortador", @"nomeEmpregador", @"trilha1", @"trilha2", @"trilhaCVV1", @"trilhaCVV2"];

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
