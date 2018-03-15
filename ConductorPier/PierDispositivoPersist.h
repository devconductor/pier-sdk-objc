#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierDispositivoPersist
@end

@interface PierDispositivoPersist : PierObject

/* Apresenta o token do dispositivo. [optional]
 */
@property(nonatomic) NSString* token;
/* Apresenta o identificador da aplica\u00E7\u00E3o. [optional]
 */
@property(nonatomic) NSNumber* idAplicacaoMobile;
/* Apresenta o identificador do usu\u00E1rio. [optional]
 */
@property(nonatomic) NSNumber* idUsuario;

@end
