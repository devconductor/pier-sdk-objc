#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierConfiguracaoRegistroCobrancaResponse
@end

@interface PierConfiguracaoRegistroCobrancaResponse : PierObject

/* C\u00C3\u00B3digo identificador da configura\u00C3\u00A7\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00C3\u00B3digo do emissor. [optional]
 */
@property(nonatomic) NSNumber* idEmissor;
/* C\u00C3\u00B3digo do Banco. [optional]
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
/* Status indicador se a configura\u00C3\u00A7\u00C3\u00A3o est\u00C3\u00A1 ativa. [optional]
 */
@property(nonatomic) NSString* status;

@end
