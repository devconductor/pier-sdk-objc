#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTokenPartialUpdateValue_
@end

@interface PierTokenPartialUpdateValue_ : PierObject

/* {{{token_dto_base_value}}} [optional]
 */
@property(nonatomic) NSNumber* base;
/* {{{token_dto_owner_value}}} [optional]
 */
@property(nonatomic) NSString* owner;
/* {{{token_dto_criado_por_value}}} [optional]
 */
@property(nonatomic) NSString* criadoPor;
/* {{{token_dto_alterado_por_value}}} [optional]
 */
@property(nonatomic) NSString* alteradoPor;
/* {{{token_dto_id_application_value}}} [optional]
 */
@property(nonatomic) NSNumber* idAplicacao;

@end