#import <Foundation/Foundation.h>
#import "PierOrigemComercialResponse.h"
#import "PierOrigemComercialUpdate.h"
#import "PierMaquinetaResponse.h"
#import "PierMaquinetaUpdate.h"
#import "PierOperacaoCredorUpdate.h"
#import "PierOperacaoCredorResponse.h"
#import "PierTelefoneEstabelecimentoResponse.h"
#import "PierTelefoneEstabelecimentoUpdate.h"
#import "PierTerminalUpdateValue_.h"
#import "PierTerminalResponse.h"
#import "PierEstabelecimentoUpdate.h"
#import "PierEstabelecimentoResponse.h"
#import "PierGrupoEconomicoResponse.h"
#import "PierGrupoEconomicoDTO.h"
#import "PierOrigemComercialPersist.h"
#import "PierEstabelecimentoPersist.h"
#import "PierDetalheOperacaoResponse.h"
#import "PierVinculoEstabelecimentoAdquirenteResponse.h"
#import "PierVinculoOperacaoPersist.h"
#import "PierPageOperacaoResponse.h"
#import "PierPageMCCResponse.h"
#import "PierPageOrigemComercialResponse.h"
#import "PierPageEntidadeResponse.h"
#import "PierPageTipoEstabelecimentoResponse.h"
#import "PierPageCampoCodificadoDescricaoResponse.h"
#import "PierPageTipoOrigemComercialResponse.h"
#import "PierPageTipoTerminalResponse.h"
#import "PierPageEstabelecimentoResponse.h"
#import "PierPageGrupoEconomicoResponse.h"
#import "PierPageGrupoOrigemComercialResponse.h"
#import "PierPageMaquinetaResponse.h"
#import "PierPageMoedaResponse.h"
#import "PierPageOperacaoCredorResponse.h"
#import "PierPageTelefoneEstabelecimentoResponse.h"
#import "PierPageTerminalResponse.h"
#import "PierPageVinculoEstabelecimentoAdquirenteResponse.h"
#import "PierPageVinculoOperacaoResponse.h"
#import "PierMaquinetaPersist.h"
#import "PierOperacaoCredorPersist.h"
#import "PierTelefoneEstabelecimentoPersist.h"
#import "PierTerminalPersist.h"
#import "PierVinculoEstabelecimentoAdquirentePersist.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltagestabelecimentoApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltagestabelecimentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltagestabelecimentoApi*) sharedAPI;
///
///
/// {{{origem_comercial_resource_alterar_origem_comercial}}}
/// {{{origem_comercial_resource_alterar_origem_comercial_notes}}}
///
/// @param _id {{{origem_comercial_resource_alterar_origem_comercial_param_id}}}
/// @param origemComercialUpdate origemComercialUpdate
/// 
///
/// @return PierOrigemComercialResponse*
-(NSNumber*) alterarOrigemComercialUsingPUTWithId: (NSNumber*) _id
    origemComercialUpdate: (PierOrigemComercialUpdate*) origemComercialUpdate
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler;


///
///
/// {{{maquineta_resource_alterar}}}
/// {{{maquineta_resource_alterar_notes}}}
///
/// @param _id {{{maquineta_resource_alterar_param_id}}}
/// @param maquinetaUpdate maquinetaUpdate
/// 
///
/// @return PierMaquinetaResponse*
-(NSNumber*) alterarUsingPUT10WithId: (NSNumber*) _id
    maquinetaUpdate: (PierMaquinetaUpdate*) maquinetaUpdate
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler;


///
///
/// {{{operacao_credor_resource_alterar}}}
/// {{{operacao_credor_resource_alterar_notes}}}
///
/// @param _id {{{operacao_credor_resource_alterar_param_id}}}
/// @param operacaoCredorUpdate operacaoCredorUpdate
/// 
///
/// @return PierOperacaoCredorResponse*
-(NSNumber*) alterarUsingPUT11WithId: (NSNumber*) _id
    operacaoCredorUpdate: (PierOperacaoCredorUpdate*) operacaoCredorUpdate
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler;


///
///
/// {{{telefone_estabelecimento_resource_alterar}}}
/// {{{telefone_estabelecimento_resource_alterar_notes}}}
///
/// @param _id {{{telefone_estabelecimento_resource_alterar_param_id}}}
/// @param telefoneEstabelecimentoUpdate telefoneEstabelecimentoUpdate
/// 
///
/// @return PierTelefoneEstabelecimentoResponse*
-(NSNumber*) alterarUsingPUT17WithId: (NSNumber*) _id
    telefoneEstabelecimentoUpdate: (PierTelefoneEstabelecimentoUpdate*) telefoneEstabelecimentoUpdate
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// {{{terminal_resource_alterar}}}
/// {{{terminal_resource_alterar_notes}}}
///
/// @param _id {{{terminal_resource_alterar_param_id}}}
/// @param terminalUpdate terminalUpdate
/// 
///
/// @return PierTerminalResponse*
-(NSNumber*) alterarUsingPUT19WithId: (NSNumber*) _id
    terminalUpdate: (PierTerminalUpdateValue_*) terminalUpdate
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler;


///
///
/// {{{estabelecimento_resource_alterar}}}
/// {{{estabelecimento_resource_alterar_notes}}}
///
/// @param _id {{{estabelecimento_resource_alterar_param_id_estabelecimento}}}
/// @param update update
/// 
///
/// @return PierEstabelecimentoResponse*
-(NSNumber*) alterarUsingPUT6WithId: (NSNumber*) _id
    update: (PierEstabelecimentoUpdate*) update
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// {{{grupo_economico_resource_alterar}}}
/// {{{grupo_economico_resource_alterar_notes}}}
///
/// @param _id {{{grupo_economico_resource_alterar_param_id}}}
/// @param grupoEconomicoDTO grupoEconomicoDTO
/// 
///
/// @return PierGrupoEconomicoResponse*
-(NSNumber*) alterarUsingPUT8WithId: (NSNumber*) _id
    grupoEconomicoDTO: (PierGrupoEconomicoDTO*) grupoEconomicoDTO
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler;


///
///
/// {{{origem_comercial_resource_cadastrar_origem_comercial}}}
/// {{{origem_comercial_resource_cadastrar_origem_comercial_notes}}}
///
/// @param origemComercialPersist origemComercialPersist
/// 
///
/// @return PierOrigemComercialResponse*
-(NSNumber*) cadastrarOrigemComercialUsingPOSTWithOrigemComercialPersist: (PierOrigemComercialPersist*) origemComercialPersist
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler;


///
///
/// {{{estabelecimento_resource_cadastrar}}}
/// {{{estabelecimento_resource_cadastrar_notes}}}
///
/// @param persist persist
/// 
///
/// @return PierEstabelecimentoResponse*
-(NSNumber*) cadastrarUsingPOST2WithPersist: (PierEstabelecimentoPersist*) persist
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// {{{grupo_economico_resource_cadastrar}}}
/// {{{grupo_economico_resource_cadastrar_notes}}}
///
/// @param grupoEconomicoDTO GrupoEconomicoDTO
/// 
///
/// @return PierGrupoEconomicoResponse*
-(NSNumber*) cadastrarUsingPOST3WithGrupoEconomicoDTO: (PierGrupoEconomicoDTO*) grupoEconomicoDTO
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler;


///
///
/// {{{operacao_resource_consulta_operacao}}}
/// {{{operacao_resource_consulta_operacao_notes}}}
///
/// @param _id {{{operacao_resource_consulta_operacao_param_id_operacao}}}
/// 
///
/// @return PierDetalheOperacaoResponse*
-(NSNumber*) consultaOperacaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierDetalheOperacaoResponse* output, NSError* error)) handler;


///
///
/// {{{origem_comercial_resource_consultar_origem_comercial}}}
/// {{{origem_comercial_resource_consultar_origem_comercial_notes}}}
///
/// @param _id {{{origem_comercial_resource_consultar_origem_comercial_param_id}}}
/// 
///
/// @return PierOrigemComercialResponse*
-(NSNumber*) consultarOrigemComercialUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler;


///
///
/// {{{estabelecimento_resource_consultar}}}
/// {{{estabelecimento_resource_consultar_notes}}}
///
/// @param _id {{{estabelecimento_resource_consultar_param_id_estabelecimento}}}
/// 
///
/// @return PierEstabelecimentoResponse*
-(NSNumber*) consultarUsingGET19WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// {{{grupo_economico_resource_consultar}}}
/// {{{grupo_economico_resource_consultar_notes}}}
///
/// @param _id {{{grupo_economico_resource_consultar_param_id}}}
/// 
///
/// @return PierGrupoEconomicoResponse*
-(NSNumber*) consultarUsingGET21WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler;


///
///
/// {{{maquineta_resource_consultar}}}
/// {{{maquineta_resource_consultar_notes}}}
///
/// @param _id {{{maquineta_resource_consultar_param_id}}}
/// 
///
/// @return PierMaquinetaResponse*
-(NSNumber*) consultarUsingGET23WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler;


///
///
/// {{{operacao_credor_resource_consultar}}}
/// {{{operacao_credor_resource_consultar_notes}}}
///
/// @param _id {{{operacao_credor_resource_consultar_param_id}}}
/// 
///
/// @return PierOperacaoCredorResponse*
-(NSNumber*) consultarUsingGET24WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler;


///
///
/// {{{telefone_estabelecimento_resource_consultar}}}
/// {{{telefone_estabelecimento_resource_consultar_notes}}}
///
/// @param _id {{{telefone_estabelecimento_resource_consultar_param_id}}}
/// 
///
/// @return PierTelefoneEstabelecimentoResponse*
-(NSNumber*) consultarUsingGET37WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// {{{terminal_resource_consultar}}}
/// {{{terminal_resource_consultar_notes}}}
///
/// @param _id {{{terminal_resource_consultar_param_id}}}
/// 
///
/// @return PierTerminalResponse*
-(NSNumber*) consultarUsingGET39WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler;


///
///
/// {{{vinculo_estabelecimento_adquirente_resource_consultar}}}
/// {{{vinculo_estabelecimento_adquirente_resource_consultar_notes}}}
///
/// @param _id {{{vinculo_estabelecimento_adquirente_resource_consultar_param_id}}}
/// 
///
/// @return PierVinculoEstabelecimentoAdquirenteResponse*
-(NSNumber*) consultarUsingGET51WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler;


///
///
/// {{{vinculo_estabelecimento_adquirente_resource_desabilitar_vinculo}}}
/// {{{vinculo_estabelecimento_adquirente_resource_desabilitar_vinculo_notes}}}
///
/// @param _id {{{vinculo_estabelecimento_adquirente_resource_desabilitar_vinculo_param_id}}}
/// 
///
/// @return NSObject*
-(NSNumber*) desabilitarVinculoUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// {{{vinculo_operacao_resource_desabilitar_vinculo}}}
/// {{{vinculo_operacao_resource_desabilitar_vinculo_notes}}}
///
/// @param _id {{{vinculo_operacao_resource_desabilitar_vinculo_param_id}}}
/// @param vinculoOperacaoPersist vinculoOperacaoPersist
/// 
///
/// @return NSObject*
-(NSNumber*) desabilitarVinculoUsingPOST1WithId: (NSNumber*) _id
    vinculoOperacaoPersist: (PierVinculoOperacaoPersist*) vinculoOperacaoPersist
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// {{{vinculo_estabelecimento_adquirente_resource_habilitar_vinculo}}}
/// {{{vinculo_estabelecimento_adquirente_resource_habilitar_vinculo_notes}}}
///
/// @param _id {{{vinculo_estabelecimento_adquirente_resource_habilitar_vinculo_param_id}}}
/// 
///
/// @return NSObject*
-(NSNumber*) habilitarVinculoUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// {{{vinculo_operacao_resource_habilitar_vinculo}}}
/// {{{vinculo_operacao_resource_habilitar_vinculo_notes}}}
///
/// @param _id {{{vinculo_operacao_resource_habilitar_vinculo_param_id}}}
/// @param vinculoOperacaoPersist vinculoOperacaoPersist
/// 
///
/// @return NSObject*
-(NSNumber*) habilitarVinculoUsingPOST1WithId: (NSNumber*) _id
    vinculoOperacaoPersist: (PierVinculoOperacaoPersist*) vinculoOperacaoPersist
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// {{{operacao_resource_lista_operacao}}}
/// {{{operacao_resource_lista_operacao_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idOperacao {{{operacao_request_id_operacao_value}}}
/// @param codigoProcessamento {{{operacao_request_codigo_processamento_value}}}
/// 
///
/// @return PierPageOperacaoResponse*
-(NSNumber*) listaOperacaoUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idOperacao: (NSNumber*) idOperacao
    codigoProcessamento: (NSString*) codigoProcessamento
    completionHandler: (void (^)(PierPageOperacaoResponse* output, NSError* error)) handler;


///
///
/// {{{m_c_c_resource_listar_m_c_c}}}
/// {{{m_c_c_resource_listar_m_c_c_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageMCCResponse*
-(NSNumber*) listarMCCUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageMCCResponse* output, NSError* error)) handler;


///
///
/// {{{origem_comercial_resource_listar_origens_comerciais}}}
/// {{{origem_comercial_resource_listar_origens_comerciais_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{origem_comercial_request_id_value}}}
/// @param nome {{{origem_comercial_request_nome_value}}}
/// @param status {{{origem_comercial_request_status_value}}}
/// @param idEstabelecimento {{{origem_comercial_request_id_estabelecimento_value}}}
/// @param idProduto {{{origem_comercial_request_id_produto_value}}}
/// @param descricao {{{origem_comercial_request_descricao_value}}}
/// @param idTipoOrigemComercial {{{origem_comercial_request_id_tipo_origem_comercial_value}}}
/// @param idGrupoOrigemComercial {{{origem_comercial_request_id_grupo_origem_comercial_value}}}
/// @param flagPreAprovado {{{origem_comercial_request_flag_pre_aprovado_value}}}
/// @param flagAprovacaoImediata {{{origem_comercial_request_flag_aprovacao_imediata_value}}}
/// @param nomeFantasiaPlastico {{{origem_comercial_request_nome_fantasia_plastico_value}}}
/// @param flagCartaoProvisorio {{{origem_comercial_request_flag_cartao_provisorio_value}}}
/// @param flagCartaoDefinitivo {{{origem_comercial_request_flag_cartao_definitivo_value}}}
/// @param usuario {{{origem_comercial_request_usuario_value}}}
/// @param senha {{{origem_comercial_request_senha_value}}}
/// @param flagOrigemExterna {{{origem_comercial_request_flag_origem_externa_value}}}
/// @param flagModificado {{{origem_comercial_request_flag_modificado_value}}}
/// @param flagEnviaFaturaUsuario {{{origem_comercial_request_flag_envia_fatura_usuario_value}}}
/// @param flagCreditoFaturamento {{{origem_comercial_request_flag_credito_faturamento_value}}}
/// @param flagConcedeLimiteProvisorio {{{origem_comercial_request_flag_concede_limite_provisorio_value}}}
/// @param flagDigitalizarDoc {{{origem_comercial_request_flag_digitalizar_doc_value}}}
/// @param flagEmbossingLoja {{{origem_comercial_request_flag_embossing_loja_value}}}
/// @param flagConsultaPrevia {{{origem_comercial_request_flag_consulta_previa_value}}}
/// @param tipoPessoa {{{origem_comercial_request_tipo_pessoa_value}}}
/// 
///
/// @return PierPageOrigemComercialResponse*
-(NSNumber*) listarOrigensComerciaisUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    status: (NSNumber*) status
    idEstabelecimento: (NSNumber*) idEstabelecimento
    idProduto: (NSNumber*) idProduto
    descricao: (NSString*) descricao
    idTipoOrigemComercial: (NSNumber*) idTipoOrigemComercial
    idGrupoOrigemComercial: (NSNumber*) idGrupoOrigemComercial
    flagPreAprovado: (NSNumber*) flagPreAprovado
    flagAprovacaoImediata: (NSNumber*) flagAprovacaoImediata
    nomeFantasiaPlastico: (NSString*) nomeFantasiaPlastico
    flagCartaoProvisorio: (NSNumber*) flagCartaoProvisorio
    flagCartaoDefinitivo: (NSNumber*) flagCartaoDefinitivo
    usuario: (NSString*) usuario
    senha: (NSString*) senha
    flagOrigemExterna: (NSNumber*) flagOrigemExterna
    flagModificado: (NSNumber*) flagModificado
    flagEnviaFaturaUsuario: (NSNumber*) flagEnviaFaturaUsuario
    flagCreditoFaturamento: (NSNumber*) flagCreditoFaturamento
    flagConcedeLimiteProvisorio: (NSNumber*) flagConcedeLimiteProvisorio
    flagDigitalizarDoc: (NSNumber*) flagDigitalizarDoc
    flagEmbossingLoja: (NSNumber*) flagEmbossingLoja
    flagConsultaPrevia: (NSNumber*) flagConsultaPrevia
    tipoPessoa: (NSString*) tipoPessoa
    completionHandler: (void (^)(PierPageOrigemComercialResponse* output, NSError* error)) handler;


///
///
/// {{{vinculo_estabelecimento_adquirente_resource_listar_tipos_adquirentes}}}
/// {{{vinculo_estabelecimento_adquirente_resource_listar_tipos_adquirentes_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageEntidadeResponse*
-(NSNumber*) listarTiposAdquirentesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageEntidadeResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_estabelecimento_resource_listar_tipos_estabelecimentos}}}
/// {{{tipo_estabelecimento_resource_listar_tipos_estabelecimentos_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param descricao {{{tipo_estabelecimento_request_descricao_value}}}
/// 
///
/// @return PierPageTipoEstabelecimentoResponse*
-(NSNumber*) listarTiposEstabelecimentosUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageTipoEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// {{{maquineta_resource_listar_tipos_maquinetas}}}
/// {{{maquineta_resource_listar_tipos_maquinetas_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageCampoCodificadoDescricaoResponse*
-(NSNumber*) listarTiposMaquinetasUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_origem_comercial_resource_listar_tipos_origens_comerciais}}}
/// {{{tipo_origem_comercial_resource_listar_tipos_origens_comerciais_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param nome {{{tipo_origem_comercial_request_nome_value}}}
/// 
///
/// @return PierPageTipoOrigemComercialResponse*
-(NSNumber*) listarTiposOrigensComerciaisUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageTipoOrigemComercialResponse* output, NSError* error)) handler;


///
///
/// {{{terminal_resource_listar_tipos_terminais}}}
/// {{{terminal_resource_listar_tipos_terminais_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageTipoTerminalResponse*
-(NSNumber*) listarTiposTerminaisUsingGET1WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTipoTerminalResponse* output, NSError* error)) handler;


///
///
/// {{{estabelecimento_resource_listar}}}
/// {{{estabelecimento_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{estabelecimento_request_id_value}}}
/// @param idGrupoEconomico {{{estabelecimento_request_id_grupo_economico_value}}}
/// @param numeroReceitaFederal {{{estabelecimento_request_numero_receita_federal_value}}}
/// @param nome {{{estabelecimento_request_nome_value}}}
/// @param descricao {{{estabelecimento_request_descricao_value}}}
/// @param nomeFantasia {{{estabelecimento_request_nome_fantasia_value}}}
/// @param cep {{{estabelecimento_request_cep_value}}}
/// @param nomeLogradouro {{{estabelecimento_request_nome_logradouro_value}}}
/// @param numeroEndereco {{{estabelecimento_request_numero_endereco_value}}}
/// @param complemento {{{estabelecimento_request_complemento_value}}}
/// @param bairro {{{estabelecimento_request_bairro_value}}}
/// @param cidade {{{estabelecimento_request_cidade_value}}}
/// @param uf {{{estabelecimento_request_uf_value}}}
/// @param pais {{{estabelecimento_request_pais_value}}}
/// @param dataCadastramento {{{estabelecimento_request_data_cadastramento_value}}}
/// @param contato {{{estabelecimento_request_contato_value}}}
/// @param email {{{estabelecimento_request_email_value}}}
/// @param flagArquivoSecrFazenda {{{estabelecimento_request_flag_arquivo_secr_fazenda_value}}}
/// @param flagCartaoDigitado {{{estabelecimento_request_flag_cartao_digitado_value}}}
/// @param inativo {{{estabelecimento_request_inativo_value}}}
/// @param idPais {{{estabelecimento_request_id_pais_value}}}
/// @param mcc {{{estabelecimento_request_mcc_value}}}
/// @param idTipoEstabelecimento {{{estabelecimento_request_id_tipo_estabelecimento_value}}}
/// @param correspondencia {{{estabelecimento_request_correspondencia_value}}}
/// @param idMoeda {{{estabelecimento_request_id_moeda_value}}}
/// @param tipoPagamento {{{estabelecimento_request_tipo_pagamento_value}}}
/// @param numeroEstabelecimento {{{estabelecimento_request_numero_estabelecimento_value}}}
/// @param cep2 {{{estabelecimento_request_cep2_value}}}
/// @param nomeLogradouro2 {{{estabelecimento_request_nome_logradouro2_value}}}
/// @param numeroEndereco2 {{{estabelecimento_request_numero_endereco2_value}}}
/// @param complemento2 {{{estabelecimento_request_complemento2_value}}}
/// @param bairro2 {{{estabelecimento_request_bairro2_value}}}
/// @param cidade2 {{{estabelecimento_request_cidade2_value}}}
/// @param uf2 {{{estabelecimento_request_uf2_value}}}
/// @param flagMatriz {{{estabelecimento_request_flag_matriz_value}}}
/// 
///
/// @return PierPageEstabelecimentoResponse*
-(NSNumber*) listarUsingGET25WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    idGrupoEconomico: (NSNumber*) idGrupoEconomico
    numeroReceitaFederal: (NSString*) numeroReceitaFederal
    nome: (NSString*) nome
    descricao: (NSString*) descricao
    nomeFantasia: (NSString*) nomeFantasia
    cep: (NSString*) cep
    nomeLogradouro: (NSString*) nomeLogradouro
    numeroEndereco: (NSNumber*) numeroEndereco
    complemento: (NSString*) complemento
    bairro: (NSString*) bairro
    cidade: (NSString*) cidade
    uf: (NSString*) uf
    pais: (NSString*) pais
    dataCadastramento: (NSString*) dataCadastramento
    contato: (NSString*) contato
    email: (NSString*) email
    flagArquivoSecrFazenda: (NSNumber*) flagArquivoSecrFazenda
    flagCartaoDigitado: (NSNumber*) flagCartaoDigitado
    inativo: (NSNumber*) inativo
    idPais: (NSNumber*) idPais
    mcc: (NSNumber*) mcc
    idTipoEstabelecimento: (NSNumber*) idTipoEstabelecimento
    correspondencia: (NSNumber*) correspondencia
    idMoeda: (NSNumber*) idMoeda
    tipoPagamento: (NSString*) tipoPagamento
    numeroEstabelecimento: (NSString*) numeroEstabelecimento
    cep2: (NSString*) cep2
    nomeLogradouro2: (NSString*) nomeLogradouro2
    numeroEndereco2: (NSNumber*) numeroEndereco2
    complemento2: (NSString*) complemento2
    bairro2: (NSString*) bairro2
    cidade2: (NSString*) cidade2
    uf2: (NSString*) uf2
    flagMatriz: (NSNumber*) flagMatriz
    completionHandler: (void (^)(PierPageEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// {{{grupo_economico_resource_listar}}}
/// {{{grupo_economico_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param razaoSocial {{{grupo_economico_request_razao_social_value}}}
/// @param nomeCredor {{{grupo_economico_request_nome_credor_value}}}
/// @param numeroReceitaFederal {{{grupo_economico_request_numero_receita_federal_value}}}
/// @param inscricaoEstadual {{{grupo_economico_request_inscricao_estadual_value}}}
/// @param contato {{{grupo_economico_request_contato_value}}}
/// @param banco {{{grupo_economico_request_banco_value}}}
/// @param agencia {{{grupo_economico_request_agencia_value}}}
/// @param digitoAgencia {{{grupo_economico_request_digito_agencia_value}}}
/// @param contaCorrente {{{grupo_economico_request_conta_corrente_value}}}
/// @param digitoContaCorrente {{{grupo_economico_request_digito_conta_corrente_value}}}
/// @param periodicidade {{{grupo_economico_request_periodicidade_value}}}
/// @param pagamentoSemanal {{{grupo_economico_request_pagamento_semanal_value}}}
/// @param pagamentoMensal {{{grupo_economico_request_pagamento_mensal_value}}}
/// @param pagamentoDecendialPrimeiro {{{grupo_economico_request_pagamento_decendial_primeiro_value}}}
/// @param pagamentoDecendialSegundo {{{grupo_economico_request_pagamento_decendial_segundo_value}}}
/// @param pagamentoDecendialTerceiro {{{grupo_economico_request_pagamento_decendial_terceiro_value}}}
/// @param pagamentoQuinzenalPrimeiro {{{grupo_economico_request_pagamento_quinzenal_primeiro_value}}}
/// @param pagamentoQuinzenalSegundo {{{grupo_economico_request_pagamento_quinzenal_segundo_value}}}
/// @param percentualRAV {{{grupo_economico_request_percentual_r_a_v_value}}}
/// @param recebeRAV {{{grupo_economico_request_recebe_r_a_v_value}}}
/// @param percentualMultiplica {{{grupo_economico_request_percentual_multiplica_value}}}
/// @param taxaAdm {{{grupo_economico_request_taxa_adm_value}}}
/// @param taxaBanco {{{grupo_economico_request_taxa_banco_value}}}
/// @param limiteRAV {{{grupo_economico_request_limite_r_a_v_value}}}
/// @param idCredorRAV {{{grupo_economico_request_id_credor_r_a_v_value}}}
/// 
///
/// @return PierPageGrupoEconomicoResponse*
-(NSNumber*) listarUsingGET28WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    razaoSocial: (NSString*) razaoSocial
    nomeCredor: (NSString*) nomeCredor
    numeroReceitaFederal: (NSString*) numeroReceitaFederal
    inscricaoEstadual: (NSString*) inscricaoEstadual
    contato: (NSString*) contato
    banco: (NSNumber*) banco
    agencia: (NSNumber*) agencia
    digitoAgencia: (NSString*) digitoAgencia
    contaCorrente: (NSString*) contaCorrente
    digitoContaCorrente: (NSString*) digitoContaCorrente
    periodicidade: (NSString*) periodicidade
    pagamentoSemanal: (NSString*) pagamentoSemanal
    pagamentoMensal: (NSNumber*) pagamentoMensal
    pagamentoDecendialPrimeiro: (NSNumber*) pagamentoDecendialPrimeiro
    pagamentoDecendialSegundo: (NSNumber*) pagamentoDecendialSegundo
    pagamentoDecendialTerceiro: (NSNumber*) pagamentoDecendialTerceiro
    pagamentoQuinzenalPrimeiro: (NSNumber*) pagamentoQuinzenalPrimeiro
    pagamentoQuinzenalSegundo: (NSNumber*) pagamentoQuinzenalSegundo
    percentualRAV: (NSNumber*) percentualRAV
    recebeRAV: (NSString*) recebeRAV
    percentualMultiplica: (NSNumber*) percentualMultiplica
    taxaAdm: (NSNumber*) taxaAdm
    taxaBanco: (NSNumber*) taxaBanco
    limiteRAV: (NSNumber*) limiteRAV
    idCredorRAV: (NSNumber*) idCredorRAV
    completionHandler: (void (^)(PierPageGrupoEconomicoResponse* output, NSError* error)) handler;


///
///
/// {{{grupo_origem_comercial_resource_listar}}}
/// {{{grupo_origem_comercial_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param nome {{{grupo_origem_comercial_request_nome_value}}}
/// 
///
/// @return PierPageGrupoOrigemComercialResponse*
-(NSNumber*) listarUsingGET29WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageGrupoOrigemComercialResponse* output, NSError* error)) handler;


///
///
/// {{{maquineta_resource_listar}}}
/// {{{maquineta_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idEstabelecimento {{{maquineta_request_id_estabelecimento_value}}}
/// 
///
/// @return PierPageMaquinetaResponse*
-(NSNumber*) listarUsingGET32WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageMaquinetaResponse* output, NSError* error)) handler;


///
///
/// {{{moeda_resource_listar}}}
/// {{{moeda_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param codigoMoeda {{{moeda_request_codigo_moeda_value}}}
/// @param simbolo {{{moeda_request_simbolo_value}}}
/// @param descricao {{{moeda_request_descricao_value}}}
/// 
///
/// @return PierPageMoedaResponse*
-(NSNumber*) listarUsingGET33WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    codigoMoeda: (NSString*) codigoMoeda
    simbolo: (NSString*) simbolo
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageMoedaResponse* output, NSError* error)) handler;


///
///
/// {{{operacao_credor_resource_listar}}}
/// {{{operacao_credor_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idOperacao {{{operacao_credor_request_id_operacao_value}}}
/// @param idCredor {{{operacao_credor_request_id_credor_value}}}
/// @param idProduto {{{operacao_credor_request_id_produto_value}}}
/// 
///
/// @return PierPageOperacaoCredorResponse*
-(NSNumber*) listarUsingGET34WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idOperacao: (NSNumber*) idOperacao
    idCredor: (NSNumber*) idCredor
    idProduto: (NSNumber*) idProduto
    completionHandler: (void (^)(PierPageOperacaoCredorResponse* output, NSError* error)) handler;


///
///
/// {{{telefone_estabelecimento_resource_listar}}}
/// {{{telefone_estabelecimento_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idEstabelecimento {{{telefone_estabelecimento_request_id_estabelecimento_value}}}
/// 
///
/// @return PierPageTelefoneEstabelecimentoResponse*
-(NSNumber*) listarUsingGET49WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTelefoneEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// {{{terminal_resource_listar}}}
/// {{{terminal_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{terminal_request_id_value}}}
/// @param terminal {{{terminal_request_terminal_value}}}
/// @param numeroEstabelecimento {{{terminal_request_numero_estabelecimento_value}}}
/// @param idEstabelecimento {{{terminal_request_id_estabelecimento_value}}}
/// 
///
/// @return PierPageTerminalResponse*
-(NSNumber*) listarUsingGET51WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    terminal: (NSString*) terminal
    numeroEstabelecimento: (NSNumber*) numeroEstabelecimento
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTerminalResponse* output, NSError* error)) handler;


///
///
/// {{{vinculo_estabelecimento_adquirente_resource_listar}}}
/// {{{vinculo_estabelecimento_adquirente_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idAdquirente {{{vinculo_estabelecimento_adquirente_request_id_adquirente_value}}}
/// @param idEstabelecimento {{{vinculo_estabelecimento_adquirente_request_id_estabelecimento_value}}}
/// @param codigoEstabelecimentoAdquirente {{{vinculo_estabelecimento_adquirente_request_codigo_estabelecimento_adquirente_value}}}
/// 
///
/// @return PierPageVinculoEstabelecimentoAdquirenteResponse*
-(NSNumber*) listarUsingGET64WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idAdquirente: (NSNumber*) idAdquirente
    idEstabelecimento: (NSNumber*) idEstabelecimento
    codigoEstabelecimentoAdquirente: (NSString*) codigoEstabelecimentoAdquirente
    completionHandler: (void (^)(PierPageVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler;


///
///
/// {{{vinculo_operacao_resource_listar}}}
/// {{{vinculo_operacao_resource_listar_notes}}}
///
/// @param _id {{{vinculo_operacao_resource_listar_param_id}}}
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idProduto {{{vinculo_operacao_request_id_produto_value}}}
/// @param idOperacao {{{vinculo_operacao_request_id_operacao_value}}}
/// @param codigoMCC {{{vinculo_operacao_request_codigo_m_c_c_value}}}
/// 
///
/// @return PierPageVinculoOperacaoResponse*
-(NSNumber*) listarUsingGET65WithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idProduto: (NSNumber*) idProduto
    idOperacao: (NSNumber*) idOperacao
    codigoMCC: (NSNumber*) codigoMCC
    completionHandler: (void (^)(PierPageVinculoOperacaoResponse* output, NSError* error)) handler;


///
///
/// {{{maquineta_resource_salvar}}}
/// {{{maquineta_resource_salvar_notes}}}
///
/// @param maquinetaPersist maquinetaPersist
/// 
///
/// @return PierMaquinetaResponse*
-(NSNumber*) salvarUsingPOST19WithMaquinetaPersist: (PierMaquinetaPersist*) maquinetaPersist
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler;


///
///
/// {{{operacao_credor_resource_salvar}}}
/// {{{operacao_credor_resource_salvar_notes}}}
///
/// @param operacaoCredorPersist operacaoCredorPersist
/// 
///
/// @return PierOperacaoCredorResponse*
-(NSNumber*) salvarUsingPOST20WithOperacaoCredorPersist: (PierOperacaoCredorPersist*) operacaoCredorPersist
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler;


///
///
/// {{{telefone_estabelecimento_resource_salvar}}}
/// {{{telefone_estabelecimento_resource_salvar_notes}}}
///
/// @param telefoneEstabelecimentoPersist telefoneEstabelecimentoPersist
/// 
///
/// @return PierTelefoneEstabelecimentoResponse*
-(NSNumber*) salvarUsingPOST27WithTelefoneEstabelecimentoPersist: (PierTelefoneEstabelecimentoPersist*) telefoneEstabelecimentoPersist
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// {{{terminal_resource_salvar}}}
/// {{{terminal_resource_salvar_notes}}}
///
/// @param terminalPersist terminalPersist
/// 
///
/// @return PierTerminalResponse*
-(NSNumber*) salvarUsingPOST29WithTerminalPersist: (PierTerminalPersist*) terminalPersist
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler;


///
///
/// {{{vinculo_estabelecimento_adquirente_resource_salvar}}}
/// {{{vinculo_estabelecimento_adquirente_resource_salvar_notes}}}
///
/// @param vinculoEstabelecimentoAdquirentePersist vinculoEstabelecimentoAdquirentePersist
/// 
///
/// @return PierVinculoEstabelecimentoAdquirenteResponse*
-(NSNumber*) salvarUsingPOST34WithVinculoEstabelecimentoAdquirentePersist: (PierVinculoEstabelecimentoAdquirentePersist*) vinculoEstabelecimentoAdquirentePersist
    completionHandler: (void (^)(PierVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler;



@end
