#import "PierCartaoResponse.h"

@implementation PierCartaoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"bin": @"bin", @"codRetorno": @"codRetorno", @"codigoDesbloqueio": @"codigoDesbloqueio", @"criptografiaHSM": @"criptografiaHSM", @"dataEmissao": @"dataEmissao", @"dataValidade": @"dataValidade", @"dataVencimentoPadrao": @"dataVencimentoPadrao", @"descricaoRetorno": @"descricaoRetorno", @"estagioCartao": @"estagioCartao", @"estagioData": @"estagioData", @"flagReversao": @"flagReversao", @"flagSenha": @"flagSenha", @"idCartao": @"idCartao", @"idConta": @"idConta", @"idEmissor": @"idEmissor", @"idLog": @"idLog", @"idPessoaFisica": @"idPessoaFisica", @"idProduto": @"idProduto", @"numeroCartao": @"numeroCartao", @"numeroCartaoReal": @"numeroCartaoReal", @"statusCartao": @"statusCartao", @"statusData": @"statusData" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"bin", @"codRetorno", @"codigoDesbloqueio", @"criptografiaHSM", @"dataEmissao", @"dataValidade", @"dataVencimentoPadrao", @"descricaoRetorno", @"estagioCartao", @"estagioData", @"flagReversao", @"flagSenha", @"idCartao", @"idConta", @"idEmissor", @"idLog", @"idPessoaFisica", @"idProduto", @"numeroCartao", @"numeroCartaoReal", @"statusCartao", @"statusData"];

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
