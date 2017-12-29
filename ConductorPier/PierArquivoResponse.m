#import "PierArquivoResponse.h"

@implementation PierArquivoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idTipoArquivo": @"idTipoArquivo", @"nomeTipoArquivo": @"nomeTipoArquivo", @"arquivo": @"arquivo", @"idStatusArquivo": @"idStatusArquivo", @"nomeStatusArquivo": @"nomeStatusArquivo", @"nome": @"nome", @"extensao": @"extensao", @"dataInclusao": @"dataInclusao", @"dataAlteracao": @"dataAlteracao", @"detalhes": @"detalhes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idTipoArquivo", @"nomeTipoArquivo", @"arquivo", @"idStatusArquivo", @"nomeStatusArquivo", @"nome", @"extensao", @"dataInclusao", @"dataAlteracao", @"detalhes"];

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
