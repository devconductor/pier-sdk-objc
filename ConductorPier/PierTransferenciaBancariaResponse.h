#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTransferenciaBancariaResponse
@end

@interface PierTransferenciaBancariaResponse : PierObject


@property(nonatomic) NSNumber* nsuorigem;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da autoriza\u00C3\u00A7\u00C3\u00A3o (id) [optional]
 */
@property(nonatomic) NSNumber* idAutorizacao;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da transferencia (id) [optional]
 */
@property(nonatomic) NSNumber* idTransferencia;
/* C\u00C3\u00B3digo da autoriza\u00C3\u00A7\u00C3\u00A3o [optional]
 */
@property(nonatomic) NSString* codigoAutorizacao;
/* Data da autoriza\u00C3\u00A7\u00C3\u00A3o [optional]
 */
@property(nonatomic) NSString* dataAutorizacao;
/* Origem [optional]
 */
@property(nonatomic) NSString* origem;
/* Valor [optional]
 */
@property(nonatomic) NSNumber* valor;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de opera\u00C3\u00A7\u00C3\u00A3o (id) [optional]
 */
@property(nonatomic) NSNumber* idOperacao;
/* Terminal [optional]
 */
@property(nonatomic) NSString* terminal;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id) [optional]
 */
@property(nonatomic) NSNumber* idCartao;
/* Data da transfer\u00C3\u00AAncia [optional]
 */
@property(nonatomic) NSString* dataCompra;
/* Valor da transfer\u00C3\u00AAncia [optional]
 */
@property(nonatomic) NSNumber* valorCompra;
/* N\u00C3\u00BAmero de parcelas [optional]
 */
@property(nonatomic) NSNumber* numeroParcelas;
/* Valor da parcela [optional]
 */
@property(nonatomic) NSNumber* valorParcela;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id) [optional]
 */
@property(nonatomic) NSNumber* idEstabelecimento;
/* Data do movimento [optional]
 */
@property(nonatomic) NSString* dataMovimento;
/* Valor da transfer\u00C3\u00AAncia acrescido do valor da tarifa de saque se houver tarifa de saque [optional]
 */
@property(nonatomic) NSNumber* valorContrato;
/* Percentual de juros [optional]
 */
@property(nonatomic) NSNumber* taxaJuros;
/* Valor do IOF [optional]
 */
@property(nonatomic) NSNumber* valorIOF;
/* Valor da TAC [optional]
 */
@property(nonatomic) NSNumber* valorTAC;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id) [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* Valor da entrada (primeira parcela) [optional]
 */
@property(nonatomic) NSNumber* valorEntrada;
/* Data do vencimento real da fatura [optional]
 */
@property(nonatomic) NSString* dataVencimentoReal;
/* Dia do vencimento padr\u00C3\u00A3o da fatura [optional]
 */
@property(nonatomic) NSString* dataVencimentoPadrao;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta banc\u00C3\u00A1ria de destino (id) [optional]
 */
@property(nonatomic) NSNumber* idContaPortador;
/* Atributo que representa o numero do estabelecimento. [optional]
 */
@property(nonatomic) NSNumber* numeroEstabelecimento;
/* Valor da taxa saque. [optional]
 */
@property(nonatomic) NSNumber* valorTaxaSaque;

@end