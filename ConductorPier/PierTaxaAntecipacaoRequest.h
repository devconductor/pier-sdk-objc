#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTaxaAntecipacaoRequest
@end

@interface PierTaxaAntecipacaoRequest : PierObject

/* C\u00C3\u00B3digo que identifica se um par\u00C3\u00A2metro refere-se a uma transa\u00C3\u00A7\u00C3\u00A3o On-Us ou Off-Us. [optional]
 */
@property(nonatomic) NSString* tipoTransacao;
/* Valor da Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSNumber* valorTaxa;

@end
