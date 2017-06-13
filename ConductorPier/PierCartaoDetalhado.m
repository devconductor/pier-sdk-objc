#import "PierCartaoDetalhado.h"

@implementation PierCartaoDetalhado

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idStatusCartao": @"idStatusCartao", @"idEstagioCartao": @"idEstagioCartao", @"idConta": @"idConta", @"idPessoa": @"idPessoa", @"idProduto": @"idProduto", @"tipoPortador": @"tipoPortador", @"numeroCartao": @"numeroCartao", @"nomeImpresso": @"nomeImpresso", @"dataGeracao": @"dataGeracao", @"dataStatusCartao": @"dataStatusCartao", @"dataEstagioCartao": @"dataEstagioCartao", @"dataValidade": @"dataValidade", @"dataImpressao": @"dataImpressao", @"arquivoImpressao": @"arquivoImpressao", @"flagImpressaoOrigemComercial": @"flagImpressaoOrigemComercial", @"flagVirtual": @"flagVirtual", @"codigoDesbloqueio": @"codigoDesbloqueio", @"sequencialCartao": @"sequencialCartao", @"descricaoTipoCartao": @"descricaoTipoCartao", @"tipoCartao": @"tipoCartao" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idStatusCartao", @"idEstagioCartao", @"idConta", @"idPessoa", @"idProduto", @"tipoPortador", @"numeroCartao", @"nomeImpresso", @"dataGeracao", @"dataStatusCartao", @"dataEstagioCartao", @"dataValidade", @"dataImpressao", @"arquivoImpressao", @"flagImpressaoOrigemComercial", @"flagVirtual", @"codigoDesbloqueio", @"sequencialCartao", @"descricaoTipoCartao", @"tipoCartao"];

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
