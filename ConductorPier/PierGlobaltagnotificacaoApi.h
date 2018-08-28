#import <Foundation/Foundation.h>
#import "PierConfiguracaoEmailResponse.h"
#import "PierConfiguracaoEmailPersist.h"
#import "PierTemplateNotificacaoDetalheResponse.h"
#import "PierNotificacaoSMSResponse.h"
#import "PierCodigoSegurancaResponse.h"
#import "PierSecure3dRequest.h"
#import "PierCodigoSegurancaSMSPersist.h"
#import "PierPageConfiguracaoEmailResponse.h"
#import "PierPageCodigoSegurancaResponse.h"
#import "PierPagePushResponse.h"
#import "PierPageSMSResponse.h"
#import "PierPageTemplateNotificacaoResponse.h"
#import "PierNotificacaoEmailRequest.h"
#import "PierPushFCMGCMPersistValue_.h"
#import "PierNotificacaoResponse.h"
#import "PierPushAPNSPersistValue_.h"
#import "PierSMSPersistValue_.h"
#import "PierCodigoSegurancaEMAILPersist.h"
#import "PierCodigoSegurancaSMSRequest.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltagnotificacaoApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltagnotificacaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltagnotificacaoApi*) sharedAPI;
///
///
/// {{{email_resource_alterar_configuracao}}}
/// {{{email_resource_alterar_configuracao_notes}}}
///
/// @param _id {{{email_resource_alterar_configuracao_param_id}}}
/// @param persist persist
/// 
///
/// @return PierConfiguracaoEmailResponse*
-(NSNumber*) alterarConfiguracaoUsingPUTWithId: (NSNumber*) _id
    persist: (PierConfiguracaoEmailPersist*) persist
    completionHandler: (void (^)(PierConfiguracaoEmailResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_alterar_template_notificacao}}}
/// {{{notificacao_resource_alterar_template_notificacao_notes}}}
///
/// @param _id {{{notificacao_resource_alterar_template_notificacao_param_id}}}
/// @param conteudo {{{notificacao_resource_alterar_template_notificacao_param_conteudo}}}
/// @param idConfiguracaoEmail {{{template_notificacao_persist_id_configuracao_email_value}}}
/// @param tipoLayout {{{template_notificacao_persist_tipo_layout_value}}}
/// @param tipoNotificacao {{{template_notificacao_persist_tipo_notificacao_value}}}
/// @param remetente {{{template_notificacao_persist_remetente_value}}}
/// @param assunto {{{template_notificacao_persist_assunto_value}}}
/// @param templatePadrao {{{template_notificacao_persist_template_padrao_value}}}
/// 
///
/// @return PierTemplateNotificacaoDetalheResponse*
-(NSNumber*) alterarTemplateNotificacaoUsingPUTWithId: (NSNumber*) _id
    conteudo: (NSString*) conteudo
    idConfiguracaoEmail: (NSNumber*) idConfiguracaoEmail
    tipoLayout: (NSString*) tipoLayout
    tipoNotificacao: (NSString*) tipoNotificacao
    remetente: (NSString*) remetente
    assunto: (NSString*) assunto
    templatePadrao: (NSNumber*) templatePadrao
    completionHandler: (void (^)(PierTemplateNotificacaoDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_atualizar_s_m_s}}}
/// {{{notificacao_resource_atualizar_s_m_s_notes}}}
///
/// @param nsu {{{notificacao_resource_atualizar_s_m_s_param_nsu}}}
/// @param status {{{notificacao_resource_atualizar_s_m_s_param_status}}}
/// @param data {{{notificacao_resource_atualizar_s_m_s_param_data}}}
/// @param textoStatus {{{notificacao_resource_atualizar_s_m_s_param_texto_status}}}
/// @param operadora {{{notificacao_resource_atualizar_s_m_s_param_operadora}}}
/// 
///
/// @return PierNotificacaoSMSResponse*
-(NSNumber*) atualizarSMSUsingPOSTWithNsu: (NSString*) nsu
    status: (NSString*) status
    data: (NSString*) data
    textoStatus: (NSString*) textoStatus
    operadora: (NSString*) operadora
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler;


///
///
/// {{{email_resource_consultar_configuracao}}}
/// {{{email_resource_consultar_configuracao_notes}}}
///
/// @param _id {{{email_resource_consultar_configuracao_param_id}}}
/// 
///
/// @return PierConfiguracaoEmailResponse*
-(NSNumber*) consultarConfiguracaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierConfiguracaoEmailResponse* output, NSError* error)) handler;


///
///
/// {{{codigo_seguranca_resource_consultar_por_email}}}
/// {{{codigo_seguranca_resource_consultar_por_email_notes}}}
///
/// @param _id {{{codigo_seguranca_resource_consultar_por_email_param_id}}}
/// 
///
/// @return PierCodigoSegurancaResponse*
-(NSNumber*) consultarPorEmailUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCodigoSegurancaResponse* output, NSError* error)) handler;


///
///
/// {{{codigo_seguranca_resource_consultar_por_s_m_s}}}
/// {{{codigo_seguranca_resource_consultar_por_s_m_s_notes}}}
///
/// @param _id {{{codigo_seguranca_resource_consultar_por_s_m_s_param_id}}}
/// 
///
/// @return PierCodigoSegurancaResponse*
-(NSNumber*) consultarPorSMSUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCodigoSegurancaResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_consultar_template_notificacao}}}
/// {{{notificacao_resource_consultar_template_notificacao_notes}}}
///
/// @param _id {{{notificacao_resource_consultar_template_notificacao_param_id}}}
/// 
///
/// @return PierTemplateNotificacaoDetalheResponse*
-(NSNumber*) consultarTemplateNotificacaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTemplateNotificacaoDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_3d_secure}}}
/// {{{notificacao_resource_3d_secure_notes}}}
///
/// @param secure3dRequest secure3dRequest
/// 
///
/// @return NSObject*
-(NSNumber*) enviarOTPUsingPOSTWithSecure3dRequest: (PierSecure3dRequest*) secure3dRequest
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// {{{codigo_seguranca_resource_gerar_token_e_m_a_i_l}}}
/// {{{codigo_seguranca_resource_gerar_token_e_m_a_i_l_notes}}}
///
/// @param email email
/// 
///
/// @return NSString*
-(NSNumber*) gerarTokenEMAILUsingPOSTWithEmail: (NSString*) email
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


///
///
/// {{{codigo_seguranca_resource_gerar_token_s_m_s}}}
/// {{{codigo_seguranca_resource_gerar_token_s_m_s_notes}}}
///
/// @param persist persist
/// 
///
/// @return NSString*
-(NSNumber*) gerarTokenSMSUsingPOSTWithPersist: (PierCodigoSegurancaSMSPersist*) persist
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


///
///
/// {{{email_resource_listar_configuracao}}}
/// {{{email_resource_listar_configuracao_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageConfiguracaoEmailResponse*
-(NSNumber*) listarConfiguracaoUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageConfiguracaoEmailResponse* output, NSError* error)) handler;


///
///
/// {{{codigo_seguranca_resource_listar_por_email}}}
/// {{{codigo_seguranca_resource_listar_por_email_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageCodigoSegurancaResponse*
-(NSNumber*) listarPorEmailUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCodigoSegurancaResponse* output, NSError* error)) handler;


///
///
/// {{{codigo_seguranca_resource_listar_por_s_m_s}}}
/// {{{codigo_seguranca_resource_listar_por_s_m_s_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageCodigoSegurancaResponse*
-(NSNumber*) listarPorSMSUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCodigoSegurancaResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_listar_push}}}
/// {{{notificacao_resource_listar_push_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param dataEnvio {{{notificacao_push_request_data_envio_value}}}
/// @param tipoEvento {{{notificacao_push_request_tipo_evento_value}}}
/// @param status {{{notificacao_push_request_status_value}}}
/// @param plataforma {{{notificacao_push_request_plataforma_value}}}
/// @param protocolo {{{notificacao_push_request_protocolo_value}}}
/// 
///
/// @return PierPagePushResponse*
-(NSNumber*) listarPushUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataEnvio: (NSString*) dataEnvio
    tipoEvento: (NSString*) tipoEvento
    status: (NSString*) status
    plataforma: (NSString*) plataforma
    protocolo: (NSString*) protocolo
    completionHandler: (void (^)(PierPagePushResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_listar_s_m_s}}}
/// {{{notificacao_resource_listar_s_m_s_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param dataInclusao {{{notificacao_s_m_s_request_data_inclusao_value}}}
/// @param tipoEvento {{{notificacao_s_m_s_request_tipo_evento_value}}}
/// @param status {{{notificacao_s_m_s_request_status_value}}}
/// @param operadora {{{notificacao_s_m_s_request_operadora_value}}}
/// @param protocolo {{{notificacao_s_m_s_request_protocolo_value}}}
/// @param nsu {{{notificacao_s_m_s_request_nsu_value}}}
/// 
///
/// @return PierPageSMSResponse*
-(NSNumber*) listarSMSUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataInclusao: (NSString*) dataInclusao
    tipoEvento: (NSString*) tipoEvento
    status: (NSString*) status
    operadora: (NSString*) operadora
    protocolo: (NSString*) protocolo
    nsu: (NSNumber*) nsu
    completionHandler: (void (^)(PierPageSMSResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_listar_template_notificacao}}}
/// {{{notificacao_resource_listar_template_notificacao_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageTemplateNotificacaoResponse*
-(NSNumber*) listarTemplateNotificacaoUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTemplateNotificacaoResponse* output, NSError* error)) handler;


///
///
/// {{{enum_resource_listar_tipos_layouts}}}
/// {{{enum_resource_listar_tipos_layouts_notes}}}
///
/// 
///
/// @return NSArray* /* NSObject */
-(NSNumber*) listarTiposLayoutsUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_notificacao_email}}}
/// {{{notificacao_resource_notificacao_email_notes}}}
///
/// @param request request
/// 
///
/// @return NSObject*
-(NSNumber*) notificacaoEmailUsingPOSTWithRequest: (PierNotificacaoEmailRequest*) request
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// {{{codigo_seguranca_resource_reenviar_token_s_m_s}}}
/// {{{codigo_seguranca_resource_reenviar_token_s_m_s_notes}}}
///
/// @param persist persist
/// 
///
/// @return NSString*
-(NSNumber*) reenviarTokenSMSUsingPOSTWithPersist: (PierCodigoSegurancaSMSPersist*) persist
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_responder_s_m_s_get}}}
/// {{{notificacao_resource_responder_s_m_s_get_notes}}}
///
/// @param nsu {{{notificacao_resource_responder_s_m_s_get_param_nsu}}}
/// @param data {{{notificacao_resource_responder_s_m_s_get_param_data}}}
/// @param resposta {{{notificacao_resource_responder_s_m_s_get_param_resposta}}}
/// 
///
/// @return PierNotificacaoSMSResponse*
-(NSNumber*) responderSMSGetUsingGETWithNsu: (NSString*) nsu
    data: (NSString*) data
    resposta: (NSString*) resposta
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler;


///
///
/// {{{email_resource_salvar_configuracao}}}
/// {{{email_resource_salvar_configuracao_notes}}}
///
/// @param persist persist
/// 
///
/// @return PierConfiguracaoEmailResponse*
-(NSNumber*) salvarConfiguracaoUsingPOSTWithPersist: (PierConfiguracaoEmailPersist*) persist
    completionHandler: (void (^)(PierConfiguracaoEmailResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_salvar_push_f_c_m}}}
/// {{{notificacao_resource_salvar_push_f_c_m_notes}}}
///
/// @param pushPersists pushPersists
/// 
///
/// @return PierNotificacaoResponse*
-(NSNumber*) salvarPushFCMUsingPOSTWithPushPersists: (NSArray<PierPushFCMGCMPersistValue_>*) pushPersists
    completionHandler: (void (^)(PierNotificacaoResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_salvar_push_g_c_m}}}
/// {{{notificacao_resource_salvar_push_g_c_m_notes}}}
///
/// @param pushPersists pushPersists
/// 
///
/// @return PierNotificacaoResponse*
-(NSNumber*) salvarPushGCMUsingPOSTWithPushPersists: (NSArray<PierPushFCMGCMPersistValue_>*) pushPersists
    completionHandler: (void (^)(PierNotificacaoResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_salvar_push}}}
/// {{{notificacao_resource_salvar_push_notes}}}
///
/// @param pushPersists pushPersists
/// 
///
/// @return PierNotificacaoResponse*
-(NSNumber*) salvarPushUsingPOSTWithPushPersists: (NSArray<PierPushAPNSPersistValue_>*) pushPersists
    completionHandler: (void (^)(PierNotificacaoResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_salvar_s_m_s}}}
/// {{{notificacao_resource_salvar_s_m_s_notes}}}
///
/// @param listaSMS listaSMS
/// 
///
/// @return PierNotificacaoResponse*
-(NSNumber*) salvarSMSUsingPOSTWithListaSMS: (NSArray<PierSMSPersistValue_>*) listaSMS
    completionHandler: (void (^)(PierNotificacaoResponse* output, NSError* error)) handler;


///
///
/// {{{notificacao_resource_salvar_template_notificacao}}}
/// {{{notificacao_resource_salvar_template_notificacao_notes}}}
///
/// @param conteudo {{{notificacao_resource_salvar_template_notificacao_param_conteudo}}}
/// @param idConfiguracaoEmail {{{template_notificacao_persist_id_configuracao_email_value}}}
/// @param tipoLayout {{{template_notificacao_persist_tipo_layout_value}}}
/// @param tipoNotificacao {{{template_notificacao_persist_tipo_notificacao_value}}}
/// @param remetente {{{template_notificacao_persist_remetente_value}}}
/// @param assunto {{{template_notificacao_persist_assunto_value}}}
/// @param templatePadrao {{{template_notificacao_persist_template_padrao_value}}}
/// 
///
/// @return PierTemplateNotificacaoDetalheResponse*
-(NSNumber*) salvarTemplateNotificacaoUsingPOSTWithConteudo: (NSString*) conteudo
    idConfiguracaoEmail: (NSNumber*) idConfiguracaoEmail
    tipoLayout: (NSString*) tipoLayout
    tipoNotificacao: (NSString*) tipoNotificacao
    remetente: (NSString*) remetente
    assunto: (NSString*) assunto
    templatePadrao: (NSNumber*) templatePadrao
    completionHandler: (void (^)(PierTemplateNotificacaoDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{codigo_seguranca_resource_validar_token_e_m_a_i_l}}}
/// {{{codigo_seguranca_resource_validar_token_e_m_a_i_l_notes}}}
///
/// @param request request
/// 
///
/// @return NSString*
-(NSNumber*) validarTokenEMAILUsingPOSTWithRequest: (PierCodigoSegurancaEMAILPersist*) request
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


///
///
/// {{{codigo_seguranca_resource_validar_token_s_m_s}}}
/// {{{codigo_seguranca_resource_validar_token_s_m_s_notes}}}
///
/// @param request request
/// 
///
/// @return NSString*
-(NSNumber*) validarTokenSMSUsingPOSTWithRequest: (PierCodigoSegurancaSMSRequest*) request
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;



@end