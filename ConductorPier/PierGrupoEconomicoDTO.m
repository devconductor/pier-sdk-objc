#import "PierGrupoEconomicoDTO.h"

@implementation PierGrupoEconomicoDTO

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"razaoSocial": @"razaoSocial", @"nomeCredor": @"nomeCredor", @"numeroReceitaFederal": @"numeroReceitaFederal", @"inscricaoEstadual": @"inscricaoEstadual", @"contato": @"contato", @"banco": @"banco", @"agencia": @"agencia", @"digitoAgencia": @"digitoAgencia", @"contaCorrente": @"contaCorrente", @"digitoContaCorrente": @"digitoContaCorrente", @"periodicidade": @"periodicidade", @"pagamentoSemanal": @"pagamentoSemanal", @"pagamentoMensal": @"pagamentoMensal", @"pagamentoDecendialPrimeiro": @"pagamentoDecendialPrimeiro", @"pagamentoDecendialSegundo": @"pagamentoDecendialSegundo", @"pagamentoDecendialTerceiro": @"pagamentoDecendialTerceiro", @"pagamentoQuinzenalPrimeiro": @"pagamentoQuinzenalPrimeiro", @"pagamentoQuinzenalSegundo": @"pagamentoQuinzenalSegundo", @"percentualRAV": @"percentualRAV", @"recebeRAV": @"recebeRAV", @"percentualMultiplica": @"percentualMultiplica", @"taxaAdm": @"taxaAdm", @"taxaBanco": @"taxaBanco", @"limiteRAV": @"limiteRAV" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"nomeCredor", @"inscricaoEstadual", @"contato", @"banco", @"agencia", @"digitoAgencia", @"contaCorrente", @"digitoContaCorrente", @"pagamentoSemanal", @"pagamentoMensal", @"pagamentoDecendialPrimeiro", @"pagamentoDecendialSegundo", @"pagamentoDecendialTerceiro", @"pagamentoQuinzenalPrimeiro", @"pagamentoQuinzenalSegundo", @"recebeRAV", @"percentualMultiplica", @"taxaAdm", @"taxaBanco", @"limiteRAV"];

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
