#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierProdutoResponse
@end

@interface PierProdutoResponse : PierObject

/* {{{produto_response_id_value}}} 
 */
@property(nonatomic) NSNumber* _id;
/* {{{produto_response_nome_value}}} 
 */
@property(nonatomic) NSString* nome;
/* {{{produto_response_status_value}}} 
 */
@property(nonatomic) NSNumber* status;
/* {{{produto_response_id_fantasia_basica_value}}} [optional]
 */
@property(nonatomic) NSNumber* idFantasiaBasica;

@end
