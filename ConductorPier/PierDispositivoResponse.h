#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierDispositivoResponse
@end

@interface PierDispositivoResponse : PierObject

/* Identificador do dispositivo. [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Token do dispositivo. [optional]
 */
@property(nonatomic) NSString* token;
/* Identificador da Aplica\u00C3\u00A7\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSNumber* idAplicacaoMobile;
/* Identificador do usu\u00C3\u00A1rio. [optional]
 */
@property(nonatomic) NSNumber* idUsuario;

@end