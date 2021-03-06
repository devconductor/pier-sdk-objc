#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierNotificacaoSMSResponse
@end

@interface PierNotificacaoSMSResponse : PierObject

/* {{{notificacao_s_m_s_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{notificacao_s_m_s_response_nsu_value}}} [optional]
 */
@property(nonatomic) NSNumber* nsu;
/* {{{notificacao_s_m_s_response_id_emissor_value}}} [optional]
 */
@property(nonatomic) NSNumber* idEmissor;
/* {{{notificacao_s_m_s_response_tipo_evento_value}}} [optional]
 */
@property(nonatomic) NSString* tipoEvento;
/* {{{notificacao_s_m_s_response_status_value}}} 
 */
@property(nonatomic) NSString* status;
/* {{{notificacao_s_m_s_response_descricao_status_value}}} 
 */
@property(nonatomic) NSString* descricaoStatus;
/* {{{notificacao_s_m_s_response_id_pessoa_value}}} 
 */
@property(nonatomic) NSNumber* idPessoa;
/* {{{notificacao_s_m_s_response_id_conta_value}}} 
 */
@property(nonatomic) NSNumber* idConta;
/* {{{notificacao_s_m_s_response_celular_value}}} 
 */
@property(nonatomic) NSString* celular;
/* {{{notificacao_s_m_s_response_operadora_value}}} 
 */
@property(nonatomic) NSString* operadora;
/* {{{notificacao_s_m_s_response_conteudo_value}}} 
 */
@property(nonatomic) NSString* conteudo;
/* {{{notificacao_s_m_s_response_resposta_value}}} 
 */
@property(nonatomic) NSString* resposta;
/* {{{notificacao_s_m_s_response_data_agendamento_value}}} 
 */
@property(nonatomic) NSString* dataAgendamento;
/* {{{notificacao_s_m_s_response_quantidade_tentativas_envio_value}}} 
 */
@property(nonatomic) NSNumber* quantidadeTentativasEnvio;
/* {{{notificacao_s_m_s_response_data_inclusao_value}}} 
 */
@property(nonatomic) NSString* dataInclusao;
/* {{{notificacao_s_m_s_response_data_alteracao_status_value}}} 
 */
@property(nonatomic) NSString* dataAlteracaoStatus;
/* {{{notificacao_s_m_s_response_protocolo_value}}} [optional]
 */
@property(nonatomic) NSString* protocolo;

@end
