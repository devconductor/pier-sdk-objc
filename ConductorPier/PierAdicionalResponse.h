#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierAdicionalResponse
@end

@interface PierAdicionalResponse : PierObject

/* {{{adicional_response_id_conta_value}}} [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* {{{adicional_response_id_pessoa_value}}} [optional]
 */
@property(nonatomic) NSNumber* idPessoa;
/* {{{adicional_response_nome_value}}} [optional]
 */
@property(nonatomic) NSString* nome;
/* {{{adicional_response_nome_impresso_value}}} [optional]
 */
@property(nonatomic) NSString* nomeImpresso;
/* {{{adicional_response_numero_receita_federal_value}}} [optional]
 */
@property(nonatomic) NSString* numeroReceitaFederal;
/* {{{adicional_response_data_nascimento_value}}} [optional]
 */
@property(nonatomic) NSString* dataNascimento;
/* {{{adicional_response_sexo_value}}} [optional]
 */
@property(nonatomic) NSString* sexo;
/* {{{adicional_response_numero_identidade_value}}} [optional]
 */
@property(nonatomic) NSString* numeroIdentidade;
/* {{{adicional_response_orgao_expedidor_identidade_value}}} [optional]
 */
@property(nonatomic) NSString* orgaoExpedidorIdentidade;
/* {{{adicional_response_unidade_federativa_identidade_value}}} [optional]
 */
@property(nonatomic) NSString* unidadeFederativaIdentidade;
/* {{{adicional_response_data_emissao_identidade_value}}} [optional]
 */
@property(nonatomic) NSString* dataEmissaoIdentidade;
/* {{{adicional_response_id_parentesco_value}}} [optional]
 */
@property(nonatomic) NSNumber* idParentesco;
/* {{{adicional_response_flag_ativo_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagAtivo;
/* {{{adicional_response_data_cadastro_portador_value}}} [optional]
 */
@property(nonatomic) NSString* dataCadastroPortador;
/* {{{adicional_response_data_cancelamento_portador_value}}} [optional]
 */
@property(nonatomic) NSString* dataCancelamentoPortador;

@end
