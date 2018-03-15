#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierFaturaFechadaResponse.h"
#import "PierTransacoesCorrentesResponse.h"


@protocol PierDetalhesFaturaResponse
@end

@interface PierDetalhesFaturaResponse : PierObject

/* Apresenta os detalhes da fatura [optional]
 */
@property(nonatomic) PierFaturaFechadaResponse* fatura;
/* Apresenta as transa\u00E7\u00F5es relacionadas a fatura. [optional]
 */
@property(nonatomic) NSArray<PierTransacoesCorrentesResponse>* transacoes;

@end
