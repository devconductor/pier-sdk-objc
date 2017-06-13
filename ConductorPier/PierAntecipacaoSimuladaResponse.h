#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierAntecipacaoSimuladaDetalhesResponse.h"


@protocol PierAntecipacaoSimuladaResponse
@end

@interface PierAntecipacaoSimuladaResponse : PierObject

/* C\u00C3\u00B3digo identificador da simula\u00C3\u00A7\u00C3\u00A3o de antecipa\u00C3\u00A7\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSNumber* idSimulacao;
/* C\u00C3\u00B3digo identificador da compra. [optional]
 */
@property(nonatomic) NSNumber* idCompra;
/* C\u00C3\u00B3digo identificador da conta. [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* Data e hora em que a simula\u00C3\u00A7\u00C3\u00A3o foi feita. [optional]
 */
@property(nonatomic) NSString* dataHoraSimulacao;
/* Detalhes da simula\u00C3\u00A7\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSArray<PierAntecipacaoSimuladaDetalhesResponse>* detalhes;

@end
