#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierAplicacaoMobileUpdate
@end

@interface PierAplicacaoMobileUpdate : PierObject

/* Token da Aplicacao Mobile [optional]
 */
@property(nonatomic) NSString* token;
/* Cor da Mensagem da Aplicacao Mobile [optional]
 */
@property(nonatomic) NSString* cor;
/* Som da Mensagem da Aplicacao Mobile [optional]
 */
@property(nonatomic) NSString* som;
/* Icone da Mensagem da Aplicacao Mobile [optional]
 */
@property(nonatomic) NSString* icone;
/* Certificado da Aplicacao Mobile [optional]
 */
@property(nonatomic) NSString* certificado;
/* Senha da Aplicacao Mobile [optional]
 */
@property(nonatomic) NSString* senha;

@end