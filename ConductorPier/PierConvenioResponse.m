#import "PierConvenioResponse.h"

@implementation PierConvenioResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"banco": @"banco", @"agencia": @"agencia", @"contaCorrente": @"contaCorrente", @"especie": @"especie", @"numeroConvenio": @"numeroConvenio", @"carteira": @"carteira", @"codigoCedente": @"codigoCedente", @"especieTipo": @"especieTipo", @"especieDocumento": @"especieDocumento", @"aceite": @"aceite", @"instrucoes": @"instrucoes", @"localPagamento1": @"localPagamento1", @"localPagamento2": @"localPagamento2", @"enderecoCobrancaEmissor": @"enderecoCobrancaEmissor", @"nomeBeneficiario": @"nomeBeneficiario", @"cnpjBeneficiario": @"cnpjBeneficiario", @"operador": @"operador", @"data": @"data", @"maquina": @"maquina" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"banco", @"agencia", @"contaCorrente", @"especie", @"numeroConvenio", @"carteira", @"codigoCedente", @"especieTipo", @"especieDocumento", @"aceite", @"instrucoes", @"localPagamento1", @"localPagamento2", @"enderecoCobrancaEmissor", @"nomeBeneficiario", @"cnpjBeneficiario", @"operador", @"data", @"maquina"];

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
