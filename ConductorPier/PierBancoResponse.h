#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierBancoResponse
@end

@interface PierBancoResponse : PierObject

/* C\u00F3digo de Identifica\u00E7\u00E3o do Banco (id). [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Nome do banco [optional]
 */
@property(nonatomic) NSString* nome;
/* Descri\u00E7\u00E3o do banco [optional]
 */
@property(nonatomic) NSString* descricao;
/* Digito do banco [optional]
 */
@property(nonatomic) NSString* digitoBanco;

@end
