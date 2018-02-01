#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierVinculoOperacaoResponse
@end

@interface PierVinculoOperacaoResponse : PierObject

/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). [optional]
 */
@property(nonatomic) NSNumber* idProduto;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Opera\u00C3\u00A7\u00C3\u00A3o (id). [optional]
 */
@property(nonatomic) NSNumber* idOperacao;
/* C\u00C3\u00B3digo de processamento. [optional]
 */
@property(nonatomic) NSString* codigoProcessamento;
/* C\u00C3\u00B3digo MCC. [optional]
 */
@property(nonatomic) NSNumber* codigoMCC;

@end
