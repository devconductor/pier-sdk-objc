#import "PierConfiguracaoRegistroCobrancaPersist.h"

@implementation PierConfiguracaoRegistroCobrancaPersist

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"codigoBanco": @"codigoBanco", @"uri": @"uri", @"keyStoreName": @"keyStoreName", @"keyStorePassword": @"keyStorePassword", @"keystoreAlias": @"keystoreAlias", @"keyStorePrivateKeyPassword": @"keyStorePrivateKeyPassword", @"typeKeystore": @"typeKeystore", @"trustStoreName": @"trustStoreName", @"trustStorePassword": @"trustStorePassword", @"truststoreAlias": @"truststoreAlias", @"typeTruststore": @"typeTruststore", @"uriAdicional": @"uriAdicional", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"uri", @"keyStoreName", @"keyStorePassword", @"keystoreAlias", @"keyStorePrivateKeyPassword", @"typeKeystore", @"trustStoreName", @"trustStorePassword", @"truststoreAlias", @"typeTruststore", @"uriAdicional", ];

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
