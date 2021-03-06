#import "PierGrupoEconomicoResponse.h"

@implementation PierGrupoEconomicoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"razaoSocial": @"razaoSocial", @"nomeCredor": @"nomeCredor", @"numeroReceitaFederal": @"numeroReceitaFederal", @"inscricaoEstadual": @"inscricaoEstadual", @"contato": @"contato", @"banco": @"banco", @"agencia": @"agencia", @"digitoAgencia": @"digitoAgencia", @"contaCorrente": @"contaCorrente", @"digitoContaCorrente": @"digitoContaCorrente", @"usuario": @"usuario", @"periodicidade": @"periodicidade", @"pagamentoSemanal": @"pagamentoSemanal", @"pagamentoMensal": @"pagamentoMensal", @"pagamentoDecendialPrimeiro": @"pagamentoDecendialPrimeiro", @"pagamentoDecendialSegundo": @"pagamentoDecendialSegundo", @"pagamentoDecendialTerceiro": @"pagamentoDecendialTerceiro", @"pagamentoQuinzenalPrimeiro": @"pagamentoQuinzenalPrimeiro", @"pagamentoQuinzenalSegundo": @"pagamentoQuinzenalSegundo", @"idCredorRAV": @"idCredorRAV", @"percentualRAV": @"percentualRAV", @"recebeRAV": @"recebeRAV", @"percentualMultiplica": @"percentualMultiplica", @"taxaAdm": @"taxaAdm", @"taxaBanco": @"taxaBanco", @"limiteRAV": @"limiteRAV" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"razaoSocial", @"nomeCredor", @"numeroReceitaFederal", @"inscricaoEstadual", @"contato", @"banco", @"agencia", @"digitoAgencia", @"contaCorrente", @"digitoContaCorrente", @"usuario", @"periodicidade", @"pagamentoSemanal", @"pagamentoMensal", @"pagamentoDecendialPrimeiro", @"pagamentoDecendialSegundo", @"pagamentoDecendialTerceiro", @"pagamentoQuinzenalPrimeiro", @"pagamentoQuinzenalSegundo", @"idCredorRAV", @"percentualRAV", @"recebeRAV", @"percentualMultiplica", @"taxaAdm", @"taxaBanco", @"limiteRAV"];

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
