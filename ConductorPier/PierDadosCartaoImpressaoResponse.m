#import "PierDadosCartaoImpressaoResponse.h"

@implementation PierDadosCartaoImpressaoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idConta": @"idConta", @"idPessoa": @"idPessoa", @"idCartao": @"idCartao", @"idBandeira": @"idBandeira", @"idTipoCartao": @"idTipoCartao", @"numeroCartao": @"numeroCartao", @"nomePlastico": @"nomePlastico", @"cvv2": @"cvv2", @"dataGeracao": @"dataGeracao", @"dataValidade": @"dataValidade", @"cpf": @"cpf", @"tipoPortador": @"tipoPortador", @"trilha1": @"trilha1", @"trilha2": @"trilha2", @"trilhaCVV1": @"trilhaCVV1", @"trilhaCVV2": @"trilhaCVV2", @"flagVirtual": @"flagVirtual", @"nomeBandeira": @"nomeBandeira", @"flagTitular": @"flagTitular", @"sequencialCartao": @"sequencialCartao", @"idStatus": @"idStatus", @"descricaoStatusCartao": @"descricaoStatusCartao", @"dataStatus": @"dataStatus", @"idEstagio": @"idEstagio", @"descricaoEstagio": @"descricaoEstagio", @"dataEstagio": @"dataEstagio", @"numeroBin": @"numeroBin", @"idProduto": @"idProduto", @"descricaoProduto": @"descricaoProduto", @"idStatusConta": @"idStatusConta", @"descricaoStatusConta": @"descricaoStatusConta", @"dataEmbossing": @"dataEmbossing", @"codigoDesbloqueio": @"codigoDesbloqueio", @"nomePessoa": @"nomePessoa", @"tipoPessoa": @"tipoPessoa", @"dataNascimento": @"dataNascimento", @"idEndereco": @"idEndereco", @"idTipoEndereco": @"idTipoEndereco", @"descricaoTipoEndereco": @"descricaoTipoEndereco", @"cep": @"cep", @"logradouro": @"logradouro", @"numeroEndereco": @"numeroEndereco", @"complementoEndereco": @"complementoEndereco", @"bairro": @"bairro", @"cidade": @"cidade", @"uf": @"uf", @"pais": @"pais", @"senhaCriptografada": @"senhaCriptografada" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idConta", @"idPessoa", @"idCartao", @"idBandeira", @"idTipoCartao", @"numeroCartao", @"nomePlastico", @"cvv2", @"dataGeracao", @"dataValidade", @"cpf", @"tipoPortador", @"trilha1", @"trilha2", @"trilhaCVV1", @"trilhaCVV2", @"flagVirtual", @"nomeBandeira", @"flagTitular", @"sequencialCartao", @"idStatus", @"descricaoStatusCartao", @"dataStatus", @"idEstagio", @"descricaoEstagio", @"dataEstagio", @"numeroBin", @"idProduto", @"descricaoProduto", @"idStatusConta", @"descricaoStatusConta", @"dataEmbossing", @"codigoDesbloqueio", @"nomePessoa", @"tipoPessoa", @"dataNascimento", @"idEndereco", @"idTipoEndereco", @"descricaoTipoEndereco", @"cep", @"logradouro", @"numeroEndereco", @"complementoEndereco", @"bairro", @"cidade", @"uf", @"pais", @"senhaCriptografada"];

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
