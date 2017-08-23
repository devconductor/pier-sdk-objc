#import "PierCartaoDetalheResponse.h"

@implementation PierCartaoDetalheResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"flagTitular": @"flagTitular", @"idPessoa": @"idPessoa", @"sequencialCartao": @"sequencialCartao", @"idConta": @"idConta", @"idStatus": @"idStatus", @"dataStatus": @"dataStatus", @"idEstagio": @"idEstagio", @"dataEstagio": @"dataEstagio", @"numeroBin": @"numeroBin", @"numeroCartao": @"numeroCartao", @"numeroCartaoHash": @"numeroCartaoHash", @"numeroCartaoCriptografado": @"numeroCartaoCriptografado", @"dataEmissao": @"dataEmissao", @"dataValidade": @"dataValidade", @"cartaoVirtual": @"cartaoVirtual", @"impressaoAvulsa": @"impressaoAvulsa", @"dataImpressao": @"dataImpressao", @"nomeArquivoImpressao": @"nomeArquivoImpressao", @"descricaoTipoCartao": @"descricaoTipoCartao", @"idProduto": @"idProduto", @"nomeImpresso": @"nomeImpresso", @"tipoCartao": @"tipoCartao", @"codigoDesbloqueio": @"codigoDesbloqueio" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"flagTitular", @"idPessoa", @"sequencialCartao", @"idConta", @"idStatus", @"dataStatus", @"idEstagio", @"dataEstagio", @"numeroBin", @"numeroCartao", @"numeroCartaoHash", @"numeroCartaoCriptografado", @"dataEmissao", @"dataValidade", @"cartaoVirtual", @"impressaoAvulsa", @"dataImpressao", @"nomeArquivoImpressao", @"descricaoTipoCartao", @"idProduto", @"nomeImpresso", @"tipoCartao", @"codigoDesbloqueio"];

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
