#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTelefoneAdicionalPersist
@end

@interface PierTelefoneAdicionalPersist : PierObject

/* C\u00F3digo de Identifica\u00E7\u00E3o do Tipo do Telefone (id). [optional]
 */
@property(nonatomic) NSNumber* idTipoTelefone;
/* C\u00F3digo DDD do telefone (id). [optional]
 */
@property(nonatomic) NSString* ddd;
/* N\u00FAmero do telefone. [optional]
 */
@property(nonatomic) NSString* telefone;
/* N\u00FAmero do ramal. [optional]
 */
@property(nonatomic) NSString* ramal;

@end
