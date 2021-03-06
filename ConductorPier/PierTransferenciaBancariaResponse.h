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
/* {{{transferencia_bancaria_response_id_autorizacao_value}}} [optional]
 */
@property(nonatomic) NSNumber* idAutorizacao;
/* {{{transferencia_bancaria_response_id_transferencia_value}}} [optional]
 */
@property(nonatomic) NSNumber* idTransferencia;
/* {{{transferencia_bancaria_response_codigo_autorizacao_value}}} [optional]
 */
@property(nonatomic) NSString* codigoAutorizacao;
/* {{{transferencia_bancaria_response_data_autorizacao_value}}} [optional]
 */
@property(nonatomic) NSString* dataAutorizacao;
/* {{{transferencia_bancaria_response_origem_value}}} [optional]
 */
@property(nonatomic) NSString* origem;
/* {{{transferencia_bancaria_response_valor_value}}} [optional]
 */
@property(nonatomic) NSNumber* valor;
/* {{{transferencia_bancaria_response_id_operacao_value}}} [optional]
 */
@property(nonatomic) NSNumber* idOperacao;
/* {{{transferencia_bancaria_response_terminal_value}}} [optional]
 */
@property(nonatomic) NSString* terminal;
/* {{{transferencia_bancaria_response_id_cartao_value}}} [optional]
 */
@property(nonatomic) NSNumber* idCartao;
/* {{{transferencia_bancaria_response_data_compra_value}}} [optional]
 */
@property(nonatomic) NSString* dataCompra;
/* {{{transferencia_bancaria_response_valor_compra_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorCompra;
/* {{{transferencia_bancaria_response_numero_parcelas_value}}} [optional]
 */
@property(nonatomic) NSNumber* numeroParcelas;
/* {{{transferencia_bancaria_response_valor_parcela_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorParcela;
/* {{{transferencia_bancaria_response_id_estabelecimento_value}}} [optional]
 */
@property(nonatomic) NSNumber* idEstabelecimento;
/* {{{transferencia_bancaria_response_data_movimento_value}}} [optional]
 */
@property(nonatomic) NSString* dataMovimento;
/* {{{transferencia_bancaria_response_valor_contrato_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorContrato;
/* {{{transferencia_bancaria_response_taxa_juros_value}}} [optional]
 */
@property(nonatomic) NSNumber* taxaJuros;
/* {{{transferencia_bancaria_response_valor_i_o_f_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorIOF;
/* {{{transferencia_bancaria_response_valor_t_a_c_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorTAC;
/* {{{transferencia_bancaria_response_id_conta_value}}} [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* {{{transferencia_bancaria_response_valor_entrada_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorEntrada;
/* {{{transferencia_bancaria_response_data_vencimento_real_value}}} [optional]
 */
@property(nonatomic) NSString* dataVencimentoReal;
/* {{{transferencia_bancaria_response_data_vencimento_padrao_value}}} [optional]
 */
@property(nonatomic) NSString* dataVencimentoPadrao;
/* {{{transferencia_bancaria_response_id_conta_portador_value}}} [optional]
 */
@property(nonatomic) NSNumber* idContaPortador;
/* {{{transferencia_bancaria_response_numero_estabelecimento_value}}} [optional]
 */
@property(nonatomic) NSNumber* numeroEstabelecimento;
/* {{{transferencia_bancaria_response_valor_taxa_saque_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorTaxaSaque;
/* {{{transferencia_bancaria_response_banco_value}}} [optional]
 */
@property(nonatomic) NSNumber* banco;
/* {{{transferencia_bancaria_response_numero_agencia_value}}} [optional]
 */
@property(nonatomic) NSString* numeroAgencia;
/* {{{transferencia_bancaria_response_digito_agencia_value}}} [optional]
 */
@property(nonatomic) NSString* digitoAgencia;
/* {{{transferencia_bancaria_response_numero_conta_value}}} [optional]
 */
@property(nonatomic) NSString* numeroConta;
/* {{{transferencia_bancaria_response_digito_conta_value}}} [optional]
 */
@property(nonatomic) NSString* digitoConta;
/* {{{transferencia_bancaria_response_flag_conta_poupanca_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagContaPoupanca;
/* {{{transferencia_bancaria_response_documento_favorecido_value}}} [optional]
 */
@property(nonatomic) NSString* documentoFavorecido;
/* {{{transferencia_bancaria_response_nome_favorecido_value}}} [optional]
 */
@property(nonatomic) NSString* nomeFavorecido;

@end
