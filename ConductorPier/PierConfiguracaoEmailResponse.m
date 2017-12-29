#import "PierConfiguracaoEmailResponse.h"

@implementation PierConfiguracaoEmailResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"host": @"host", @"port": @"port", @"portTLSSTARTTLS": @"portTLSSTARTTLS", @"portSSL": @"portSSL", @"protocolo": @"protocolo", @"requerAutenticacao": @"requerAutenticacao", @"requerSSL": @"requerSSL", @"requerTLS": @"requerTLS", @"usuario": @"usuario", @"senha": @"senha", @"dataInclusao": @"dataInclusao", @"dataAlteracao": @"dataAlteracao" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"host", @"port", @"portTLSSTARTTLS", @"portSSL", @"protocolo", @"requerAutenticacao", @"requerSSL", @"requerTLS", @"usuario", @"senha", @"dataInclusao", @"dataAlteracao"];

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
