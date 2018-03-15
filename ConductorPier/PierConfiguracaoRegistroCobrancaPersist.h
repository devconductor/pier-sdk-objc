#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierConfiguracaoRegistroCobrancaPersist
@end

@interface PierConfiguracaoRegistroCobrancaPersist : PierObject

/* C\u00F3digo do Banco. 
 */
@property(nonatomic) NSNumber* codigoBanco;
/* URL de acesso ao banco. [optional]
 */
@property(nonatomic) NSString* uri;
/* Caminho do certificado digital do emissor. [optional]
 */
@property(nonatomic) NSString* keyStoreName;
/* Senha do certificado digital do emissor. [optional]
 */
@property(nonatomic) NSString* keyStorePassword;
/* Alias do certificado digital do emissor. [optional]
 */
@property(nonatomic) NSString* keystoreAlias;
/* Senha da chave privada do certificado digital do emissor. [optional]
 */
@property(nonatomic) NSString* keyStorePrivateKeyPassword;
/* Tipo do certificado digital do emissor. [optional]
 */
@property(nonatomic) NSString* typeKeystore;
/* Caminho do certificado digital do banco. [optional]
 */
@property(nonatomic) NSString* trustStoreName;
/* Senha do certificado digital do banco. [optional]
 */
@property(nonatomic) NSString* trustStorePassword;
/* Alias do certificado digital do banco. [optional]
 */
@property(nonatomic) NSString* truststoreAlias;
/* Tipo do certificado digital do banco. [optional]
 */
@property(nonatomic) NSString* typeTruststore;
/* URL adicional de acesso ao banco. [optional]
 */
@property(nonatomic) NSString* uriAdicional;
/* Status descrevendo a situa\u00E7\u00E3o atual da configura\u00E7\u00E3o. 
 */
@property(nonatomic) NSString* status;

@end
