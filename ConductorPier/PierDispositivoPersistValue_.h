#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierDispositivoPersistValue_
@end

@interface PierDispositivoPersistValue_ : PierObject

/* {{{dispositivo_persist_token_value}}} [optional]
 */
@property(nonatomic) NSString* token;
/* {{{dispositivo_persist_id_aplicacao_mobile_value}}} [optional]
 */
@property(nonatomic) NSNumber* idAplicacaoMobile;
/* {{{dispositivo_persist_id_usuario_value}}} [optional]
 */
@property(nonatomic) NSNumber* idUsuario;

@end