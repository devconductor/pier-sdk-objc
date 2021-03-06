#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierPropriedadeDocumentoRequest.h"


@protocol PierDocumentoParametrosRequest
@end

@interface PierDocumentoParametrosRequest : PierObject

/* {{{documento_parametros_request_id_template_documento_value}}} [optional]
 */
@property(nonatomic) NSNumber* idTemplateDocumento;
/* {{{documento_parametros_request_nome_value}}} [optional]
 */
@property(nonatomic) NSString* nome;
/* {{{documento_parametros_request_parametros_conteudo_value}}} [optional]
 */
@property(nonatomic) NSArray<PierPropriedadeDocumentoRequest>* parametrosConteudo;

@end
