#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierMapOfstringAndstring.h"


@protocol PierTransacaoOnUsResponse
@end

@interface PierTransacaoOnUsResponse : PierObject

/* N\u00FAmero Sequencial \u00DAnico que identifica a transa\u00E7\u00E3o no sistema que a originou. [optional]
 */
@property(nonatomic) NSString* nsuOrigem;
/* N\u00FAmero Sequencial \u00DAnico gerado pelo Autorizador a cada Transa\u00E7\u00E3o. [optional]
 */
@property(nonatomic) NSString* nsuAutorizacao;
/* Descri\u00E7\u00E3o do Plano de Parcelamento atribu\u00EDdo a Transa\u00E7\u00E3o. [optional]
 */
@property(nonatomic) NSArray<PierMapOfstringAndstring>* planoDeParcelamento;
/* C\u00F3digo de Autoriza\u00E7\u00E3o gerado pelo Autorizador. [optional]
 */
@property(nonatomic) NSString* codigoAutorizacao;
/* N\u00FAmero do Cart\u00E3o que originou a transa\u00E7\u00E3o em formato mascarado. [optional]
 */
@property(nonatomic) NSString* numeroMascaradoCartao;
/* Nome do Portador do Cart\u00E3o que originou a transa\u00E7\u00E3o. [optional]
 */
@property(nonatomic) NSString* nomePortadorCartao;
/* Apresenta a identifica\u00E7\u00E3o do terminal requisitante 
 */
@property(nonatomic) NSString* terminalRequisitante;

@end
