#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierProdutoOrigemResponse.h"


@protocol PierOrigemComercialResponse
@end

@interface PierOrigemComercialResponse : PierObject

/* {{{origem_comercial_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{origem_comercial_response_nome_value}}} [optional]
 */
@property(nonatomic) NSString* nome;
/* {{{origem_comercial_response_descricao_value}}} [optional]
 */
@property(nonatomic) NSString* descricao;
/* {{{origem_comercial_response_produtos_origem_value}}} [optional]
 */
@property(nonatomic) NSArray<PierProdutoOrigemResponse>* produtosOrigem;
/* {{{origem_comercial_response_id_estabelecimento_value}}} [optional]
 */
@property(nonatomic) NSNumber* idEstabelecimento;
/* {{{origem_comercial_response_id_tipo_origem_comercial_value}}} [optional]
 */
@property(nonatomic) NSNumber* idTipoOrigemComercial;
/* {{{origem_comercial_response_nome_tipo_origem_comercial_value}}} [optional]
 */
@property(nonatomic) NSString* nomeTipoOrigemComercial;
/* {{{origem_comercial_response_id_grupo_origem_comercial_value}}} [optional]
 */
@property(nonatomic) NSNumber* idGrupoOrigemComercial;
/* {{{origem_comercial_response_nome_grupo_origem_comercial_value}}} [optional]
 */
@property(nonatomic) NSString* nomeGrupoOrigemComercial;
/* {{{origem_comercial_response_status_value}}} [optional]
 */
@property(nonatomic) NSNumber* status;
/* {{{origem_comercial_response_flag_pre_aprovado_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagPreAprovado;
/* {{{origem_comercial_response_flag_aprovacao_imediata_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagAprovacaoImediata;
/* {{{origem_comercial_response_nome_fantasia_plastico_value}}} [optional]
 */
@property(nonatomic) NSString* nomeFantasiaPlastico;
/* {{{origem_comercial_response_flag_cartao_provisorio_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagCartaoProvisorio;
/* {{{origem_comercial_response_flag_cartao_definitivo_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagCartaoDefinitivo;
/* {{{origem_comercial_response_usuario_value}}} [optional]
 */
@property(nonatomic) NSString* usuario;
/* {{{origem_comercial_response_senha_value}}} [optional]
 */
@property(nonatomic) NSString* senha;
/* {{{origem_comercial_response_flag_origem_externa_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagOrigemExterna;
/* {{{origem_comercial_response_flag_modificado_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagModificado;
/* {{{origem_comercial_response_flag_envia_fatura_usuario_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagEnviaFaturaUsuario;
/* {{{origem_comercial_response_flag_credito_faturamento_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagCreditoFaturamento;
/* {{{origem_comercial_response_flag_concede_limite_provisorio_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagConcedeLimiteProvisorio;
/* {{{origem_comercial_response_flag_digitalizar_doc_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagDigitalizarDoc;
/* {{{origem_comercial_response_flag_embossing_loja_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagEmbossingLoja;
/* {{{origem_comercial_response_flag_consulta_previa_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagConsultaPrevia;
/* {{{origem_comercial_response_tipo_pessoa_value}}} [optional]
 */
@property(nonatomic) NSString* tipoPessoa;

@end
