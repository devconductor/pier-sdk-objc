#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierDocumentoResponse
@end

@interface PierDocumentoResponse : PierObject

/* {{{documento_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{documento_response_id_template_documento_value}}} [optional]
 */
@property(nonatomic) NSNumber* idTemplateDocumento;
/* {{{documento_response_nome_value}}} [optional]
 */
@property(nonatomic) NSString* nome;
/* {{{documento_response_extensao_value}}} [optional]
 */
@property(nonatomic) NSString* extensao;

@end
