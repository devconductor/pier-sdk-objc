#import "PierEndereco.h"

@implementation PierEndereco

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"bairro": @"bairro", @"cep": @"cep", @"cidade": @"cidade", @"complemento": @"complemento", @"dataInclusao": @"dataInclusao", @"dataUltimaAtualizacao": @"dataUltimaAtualizacao", @"id": @"_id", @"idPessoa": @"idPessoa", @"idTipoEndereco": @"idTipoEndereco", @"logradouro": @"logradouro", @"numero": @"numero", @"pais": @"pais", @"pontoReferencia": @"pontoReferencia", @"uf": @"uf" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"bairro", @"cep", @"cidade", @"complemento", @"dataInclusao", @"dataUltimaAtualizacao", @"_id", @"idPessoa", @"idTipoEndereco", @"logradouro", @"numero", @"pais", @"pontoReferencia", @"uf"];

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
