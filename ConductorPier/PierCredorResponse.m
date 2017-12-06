#import "PierCredorResponse.h"

@implementation PierCredorResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idPessoaJuridica": @"idPessoaJuridica", @"nome": @"nome", @"periodicidade": @"periodicidade", @"pagamentoSemanal": @"pagamentoSemanal", @"pagamentoMensal": @"pagamentoMensal", @"pagamentoDecendialPrimeiro": @"pagamentoDecendialPrimeiro", @"pagamentoDecendialSegundo": @"pagamentoDecendialSegundo", @"pagamentoDecendialTerceiro": @"pagamentoDecendialTerceiro", @"pagamentoQuinzenalPrimeiro": @"pagamentoQuinzenalPrimeiro", @"pagamentoQuinzenalSegundo": @"pagamentoQuinzenalSegundo", @"credorBanco": @"credorBanco", @"percentualRAV": @"percentualRAV", @"recebeRAV": @"recebeRAV", @"percentualMultiplica": @"percentualMultiplica", @"taxaAdm": @"taxaAdm", @"taxaBanco": @"taxaBanco", @"limiteRAV": @"limiteRAV", @"idCredorRAV": @"idCredorRAV", @"banco": @"banco", @"agencia": @"agencia", @"digitoVerificadorAgencia": @"digitoVerificadorAgencia", @"contaCorrente": @"contaCorrente", @"digitoVerificadorContaCorrente": @"digitoVerificadorContaCorrente", @"usuario": @"usuario" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idPessoaJuridica", @"nome", @"periodicidade", @"pagamentoSemanal", @"pagamentoMensal", @"pagamentoDecendialPrimeiro", @"pagamentoDecendialSegundo", @"pagamentoDecendialTerceiro", @"pagamentoQuinzenalPrimeiro", @"pagamentoQuinzenalSegundo", @"credorBanco", @"percentualRAV", @"recebeRAV", @"percentualMultiplica", @"taxaAdm", @"taxaBanco", @"limiteRAV", @"idCredorRAV", @"banco", @"agencia", @"digitoVerificadorAgencia", @"contaCorrente", @"digitoVerificadorContaCorrente", @"usuario"];

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
