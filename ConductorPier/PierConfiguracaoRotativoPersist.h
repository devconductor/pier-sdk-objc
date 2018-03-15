#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierConfiguracaoRotativoPersist
@end

@interface PierConfiguracaoRotativoPersist : PierObject

/* C\u00F3digo de Identifica\u00E7\u00E3o do Produto (idProduto). [optional]
 */
@property(nonatomic) NSNumber* idProduto;
/* Quando verdadeiro, indica que o valor do rotativo deve compor a oferta de parcelamento. [optional]
 */
@property(nonatomic) NSNumber* compoeOfertaValorRotativo;
/* Quando verdadeiro, indica que o valor n\u00E3o financi\u00E1vel deve compor a oferta de parcelamento. [optional]
 */
@property(nonatomic) NSNumber* compoeOfertaValorNaoFinanciavel;
/* Quando verdadeiro, indica que o valor de novos lan\u00E7amentos deve compor a oferta de parcelamento [optional]
 */
@property(nonatomic) NSNumber* compoeOfertaValorNovosLancamentos;
/* Quando verdadeiro, indica que deve recalcular o parcelamento caso o valor pago de entrada seja maior que o valor esperado [optional]
 */
@property(nonatomic) NSNumber* recalculaParcelamentoParaEntradaMaior;
/* Indica o m\u00EDnimo de parcelas que ser\u00E1 acatado no rec\u00E1lculo do parcelamento. [optional]
 */
@property(nonatomic) NSNumber* minimoParcelasRecalculoParcelamento;
/* Quando verdadeiro, indica que o parcelamento deve ser recalculado caso o valor calculado da oferta seja inferior ao valor configurado m\u00EDnimo da parcela (valorMinimoParcela) e de percentual aberto [optional]
 */
@property(nonatomic) NSNumber* recalculaParcelamento;
/* N\u00FAmero m\u00EDnimo de parcelas que ser\u00E1 acatado no recalculo da oferta. [optional]
 */
@property(nonatomic) NSNumber* numeroMinimoOfertas;
/* Quando verdadeiro, indica que valores pagos entre o valor da entrada e o m\u00EDnimo da fatura ser\u00E3o acatados para a ades\u00E3o ao parcelamento [optional]
 */
@property(nonatomic) NSNumber* aceitaPagamentoMaiorQueEntrada;
/* Quando verdadeiro, indica que deve-se incluir o valor presente dos parcelamentos em aberto. [optional]
 */
@property(nonatomic) NSNumber* antecipaParcelamentosAbertos;
/* Valor m\u00EDnimo da parcela que deve ser aceito na oferta. [optional]
 */
@property(nonatomic) NSNumber* valorMinimoParcela;
/* Percentual sobre os valores de parcelamento anteriores em aberto que deve ser considerado para limitar valorMinimoParcela. [optional]
 */
@property(nonatomic) NSNumber* percentualLimitarValorMinimoParcela;
/* C\u00F3digo de Identifica\u00E7\u00E3o da regra de campanha. [optional]
 */
@property(nonatomic) NSNumber* idRegraCampanha;
/* Quando verdadeiro, indica que parcelamento ofertado ter\u00E1 como valor base o valor m\u00EDnimo das transa\u00E7\u00F5es. [optional]
 */
@property(nonatomic) NSNumber* parcelarApenasMinimo;
/* Nome do usu\u00E1rio [optional]
 */
@property(nonatomic) NSString* usuario;

@end
