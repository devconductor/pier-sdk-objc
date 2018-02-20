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

/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da entidade. [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Descri\u00C3\u00A7\u00C3\u00A3o da entidade. [optional]
 */
@property(nonatomic) NSString* descricao;
/* Flag que indica se a entidade est\u00C3\u00A1 ativa. [optional]
 */
@property(nonatomic) NSNumber* flagAtivo;

@end