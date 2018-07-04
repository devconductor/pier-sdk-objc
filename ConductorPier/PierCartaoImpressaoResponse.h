#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierCartaoImpressaoResponse
@end

@interface PierCartaoImpressaoResponse : PierObject

/* {{{cartao_impressao_response_id_conta_value}}} [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* {{{cartao_impressao_response_id_pessoa_value}}} [optional]
 */
@property(nonatomic) NSNumber* idPessoa;
/* {{{cartao_impressao_response_id_cartao_value}}} [optional]
 */
@property(nonatomic) NSNumber* idCartao;
/* {{{cartao_impressao_response_id_bandeira_value}}} [optional]
 */
@property(nonatomic) NSNumber* idBandeira;
/* {{{cartao_impressao_response_id_tipo_cartao_value}}} [optional]
 */
@property(nonatomic) NSNumber* idTipoCartao;
/* {{{cartao_impressao_response_numero_cartao_value}}} [optional]
 */
@property(nonatomic) NSString* numeroCartao;
/* {{{cartao_impressao_response_nome_plastico_value}}} [optional]
 */
@property(nonatomic) NSString* nomePlastico;
/* {{{cartao_impressao_response_cvv2_value}}} [optional]
 */
@property(nonatomic) NSString* cvv2;
/* {{{cartao_impressao_response_data_geracao_value}}} [optional]
 */
@property(nonatomic) NSString* dataGeracao;
/* {{{cartao_impressao_response_data_validade_value}}} [optional]
 */
@property(nonatomic) NSString* dataValidade;
/* {{{cartao_impressao_response_nome_origem_comercial_value}}} [optional]
 */
@property(nonatomic) NSString* nomeOrigemComercial;
/* {{{cartao_impressao_response_nome_empresa_value}}} [optional]
 */
@property(nonatomic) NSString* nomeEmpresa;
/* {{{cartao_impressao_response_numero_agencia_value}}} [optional]
 */
@property(nonatomic) NSNumber* numeroAgencia;
/* {{{cartao_impressao_response_numero_conta_corente_value}}} [optional]
 */
@property(nonatomic) NSString* numeroContaCorente;
/* {{{cartao_impressao_response_nome_empresa_beneficio_value}}} [optional]
 */
@property(nonatomic) NSString* nomeEmpresaBeneficio;
/* {{{cartao_impressao_response_cpf_value}}} [optional]
 */
@property(nonatomic) NSString* cpf;
/* {{{cartao_impressao_response_tipo_portador_value}}} [optional]
 */
@property(nonatomic) NSString* tipoPortador;
/* {{{cartao_impressao_response_nome_empregador_value}}} [optional]
 */
@property(nonatomic) NSString* nomeEmpregador;
/* {{{cartao_impressao_response_trilha1_value}}} [optional]
 */
@property(nonatomic) NSString* trilha1;
/* {{{cartao_impressao_response_trilha2_value}}} [optional]
 */
@property(nonatomic) NSString* trilha2;
/* {{{cartao_impressao_response_trilha_c_v_v1_value}}} [optional]
 */
@property(nonatomic) NSString* trilhaCVV1;
/* {{{cartao_impressao_response_trilha_c_v_v2_value}}} [optional]
 */
@property(nonatomic) NSString* trilhaCVV2;
/* {{{cartao_impressao_response_flag_virtual_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagVirtual;
/* {{{cartao_impressao_response_numero_cartao_hash_value}}} [optional]
 */
@property(nonatomic) NSNumber* numeroCartaoHash;

@end
