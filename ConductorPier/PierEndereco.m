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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idPessoa": @"idPessoa", @"idTipoEndereco": @"idTipoEndereco", @"cep": @"cep", @"logradouro": @"logradouro", @"numero": @"numero", @"complemento": @"complemento", @"pontoReferencia": @"pontoReferencia", @"bairro": @"bairro", @"cidade": @"cidade", @"uf": @"uf", @"pais": @"pais", @"dataInclusao": @"dataInclusao", @"dataUltimaAtualizacao": @"dataUltimaAtualizacao" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idPessoa", @"idTipoEndereco", @"cep", @"logradouro", @"numero", @"complemento", @"pontoReferencia", @"bairro", @"cidade", @"uf", @"pais", @"dataInclusao", @"dataUltimaAtualizacao"];

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
