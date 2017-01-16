#import "PierPortador.h"

@implementation PierPortador

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idConta": @"idConta", @"idProduto": @"idProduto", @"idPessoa": @"idPessoa", @"idParentesco": @"idParentesco", @"tipoPortador": @"tipoPortador", @"nomeImpresso": @"nomeImpresso", @"idImagem": @"idImagem", @"idTipoCartao": @"idTipoCartao", @"flagAtivo": @"flagAtivo", @"dataCadastroPortador": @"dataCadastroPortador", @"dataCancelamentoPortador": @"dataCancelamentoPortador" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idConta", @"idProduto", @"idPessoa", @"idParentesco", @"tipoPortador", @"nomeImpresso", @"idImagem", @"idTipoCartao", @"flagAtivo", @"dataCadastroPortador", @"dataCancelamentoPortador"];

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
