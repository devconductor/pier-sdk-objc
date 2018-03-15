#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierAntecipacaoSimuladaResponse.h"


@protocol PierAntecipacaoSimuladaLoteResponse
@end

@interface PierAntecipacaoSimuladaLoteResponse : PierObject

/* Valor total antecipado. [optional]
 */
@property(nonatomic) NSNumber* valorTotalAntecipado;
/* Valor total do desconto. [optional]
 */
@property(nonatomic) NSNumber* valorTotalDesconto;
/* Valor total antecipado com o desconto. [optional]
 */
@property(nonatomic) NSNumber* valorTotalComDesconto;
/* Antecipa\u00E7\u00F5es Simuladas. [optional]
 */
@property(nonatomic) NSArray<PierAntecipacaoSimuladaResponse>* antecipacoesSimuladas;

@end
