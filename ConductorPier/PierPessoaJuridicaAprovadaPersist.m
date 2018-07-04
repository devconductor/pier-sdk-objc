#import "PierPessoaJuridicaAprovadaPersist.h"

@implementation PierPessoaJuridicaAprovadaPersist

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"razaoSocial": @"razaoSocial", @"nomeFantasia": @"nomeFantasia", @"cnpj": @"cnpj", @"inscricaoEstadual": @"inscricaoEstadual", @"dataAberturaEmpresa": @"dataAberturaEmpresa", @"idOrigemComercial": @"idOrigemComercial", @"idProduto": @"idProduto", @"numeroBanco": @"numeroBanco", @"numeroAgencia": @"numeroAgencia", @"numeroContaCorrente": @"numeroContaCorrente", @"email": @"email", @"diaVencimento": @"diaVencimento", @"nomeImpresso": @"nomeImpresso", @"valorRenda": @"valorRenda", @"canalEntrada": @"canalEntrada", @"valorPontuacao": @"valorPontuacao", @"telefones": @"telefones", @"enderecos": @"enderecos", @"socios": @"socios", @"referenciasComerciais": @"referenciasComerciais", @"limiteGlobal": @"limiteGlobal", @"limiteMaximo": @"limiteMaximo", @"limiteParcelas": @"limiteParcelas" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"nomeFantasia", @"inscricaoEstadual", @"numeroBanco", @"numeroAgencia", @"numeroContaCorrente", @"email", @"nomeImpresso", @"valorRenda", @"canalEntrada", @"valorPontuacao", @"telefones", @"socios", @"referenciasComerciais", ];

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
