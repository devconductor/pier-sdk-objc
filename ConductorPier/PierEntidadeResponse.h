#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierEntidadeResponse
@end

@interface PierEntidadeResponse : PierObject

/* C\u00F3digo de Identifica\u00E7\u00E3o da entidade. [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Descri\u00E7\u00E3o da entidade. [optional]
 */
@property(nonatomic) NSString* descricao;
/* Flag que indica se a entidade est\u00E1 ativa. [optional]
 */
@property(nonatomic) NSNumber* flagAtivo;

@end
