#import "PierEstabelecimentoPersist.h"

@implementation PierEstabelecimentoPersist

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"flagMatriz": @"flagMatriz", @"idCredor": @"idCredor", @"numeroReceitaFederal": @"numeroReceitaFederal", @"nome": @"nome", @"descricao": @"descricao", @"nomeFantasia": @"nomeFantasia", @"cep": @"cep", @"nomeLogradouro": @"nomeLogradouro", @"numeroEndereco": @"numeroEndereco", @"bairro": @"bairro", @"cidade": @"cidade", @"complemento": @"complemento", @"uf": @"uf", @"cep2": @"cep2", @"nomeLogradouro2": @"nomeLogradouro2", @"numeroEndereco2": @"numeroEndereco2", @"bairro2": @"bairro2", @"cidade2": @"cidade2", @"complemento2": @"complemento2", @"uf2": @"uf2", @"obs": @"obs", @"contato": @"contato", @"email": @"email", @"flagArquivoSecrFazenda": @"flagArquivoSecrFazenda", @"flagCartaoDigitado": @"flagCartaoDigitado", @"inativo": @"inativo", @"idMoeda": @"idMoeda", @"idPais": @"idPais", @"associadoSPCBrasil": @"associadoSPCBrasil", @"mcc": @"mcc", @"idTipoEstabelecimento": @"idTipoEstabelecimento", @"correspondencia": @"correspondencia", @"cargoContato": @"cargoContato", @"tipoPagamento": @"tipoPagamento", @"consulta": @"consulta", @"consulta2": @"consulta2", @"consulta3": @"consulta3", @"flagTerminalVirtual": @"flagTerminalVirtual", @"flagConsultaExtrato": @"flagConsultaExtrato" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"flagMatriz", @"idCredor", @"numeroReceitaFederal", @"nome", @"descricao", @"nomeFantasia", @"cep", @"nomeLogradouro", @"numeroEndereco", @"bairro", @"cidade", @"complemento", @"uf", @"cep2", @"nomeLogradouro2", @"numeroEndereco2", @"bairro2", @"cidade2", @"complemento2", @"uf2", @"obs", @"contato", @"email", @"flagArquivoSecrFazenda", @"flagCartaoDigitado", @"inativo", @"idMoeda", @"idPais", @"associadoSPCBrasil", @"mcc", @"idTipoEstabelecimento", @"correspondencia", @"cargoContato", @"tipoPagamento", @"consulta", @"consulta2", @"consulta3", ];

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
