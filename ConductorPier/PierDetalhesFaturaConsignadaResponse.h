#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierFaturaConsignadaResponse.h"
#import "PierTransacoesCorrentesResponse.h"


@protocol PierDetalhesFaturaConsignadaResponse
@end

@interface PierDetalhesFaturaConsignadaResponse : PierObject

/* Apresenta os detalhes da fatura [optional]
 */
@property(nonatomic) PierFaturaConsignadaResponse* faturaConsignadaResponse;
/* Apresenta as transa\u00C3\u00A7\u00C3\u00B5es relacionadas a fatura. [optional]
 */
@property(nonatomic) NSArray<PierTransacoesCorrentesResponse>* transacoes;

@end