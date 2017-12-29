#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierOperacaoResponse
@end

@interface PierOperacaoResponse : PierObject

/* C\u00C3\u00B3digo que identifica a opera\u00C3\u00A7\u00C3\u00A3o [optional]
 */
@property(nonatomic) NSNumber* idOperacao;
/* C\u00C3\u00B3digo de processamento usado em transa\u00C3\u00A7\u00C3\u00B5es com o autorizador [optional]
 */
@property(nonatomic) NSString* codigoProcessamento;
/* C\u00C3\u00B3digo de processamento usado para cancelar transa\u00C3\u00A7\u00C3\u00B5es no autorizador [optional]
 */
@property(nonatomic) NSString* codigoProcessamentoCancelamento;
/* Nome da opera\u00C3\u00A7\u00C3\u00A3o [optional]
 */
@property(nonatomic) NSString* nomeOperacao;
/* Flag indicativa para crobran\u00C3\u00A7a de juros [optional]
 */
@property(nonatomic) NSNumber* flagCobraJuros;
/* Flag indicativa para crobran\u00C3\u00A7a de tarifas [optional]
 */
@property(nonatomic) NSNumber* flagCobraTarifa;
/* Quantidade de meses para car\u00C3\u00AAncia [optional]
 */
@property(nonatomic) NSNumber* carencia;
/* Permitir transa\u00C3\u00A7\u00C3\u00B5es parceladas [optional]
 */
@property(nonatomic) NSNumber* flagPermitirParcelamento;

@end
