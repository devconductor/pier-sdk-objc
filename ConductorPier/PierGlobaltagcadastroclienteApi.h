#import <Foundation/Foundation.h>
#import "PierAdicionalDetalheResponse.h"
#import "PierAdicionalUpdate.h"
#import "PierPessoaDetalheResponse.h"
#import "PierPessoaResponse.h"
#import "PierTelefoneResponse.h"
#import "PierEnderecoResponse.h"
#import "PierAtribuirAssinaturaClientePersist.h"
#import "PierIntegracaoEmissorPersist.h"
#import "PierIntegracaoEmissorResponse.h"
#import "PierAdicionalContaResponse.h"
#import "PierAdicionalContaPersist.h"
#import "PierAdicionalPersist.h"
#import "PierPagePessoaResponse.h"
#import "PierAdicionalResponse.h"
#import "PierPageEnderecoResponse.h"
#import "PierPagePessoaDetalheResponse.h"
#import "PierPageTelefoneResponse.h"
#import "PierPessoaFisicaAprovadaResponse.h"
#import "PierPessoaFisicaAprovadaPersistValue_.h"
#import "PierPessoaJuridicaAprovadaResponse.h"
#import "PierPessoaJuridicaAprovadaPersist.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltagcadastroclienteApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltagcadastroclienteApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltagcadastroclienteApi*) sharedAPI;
///
///
/// {{{adicional_resource_alterar}}}
/// {{{adicional_resource_alterar_notes}}}
///
/// @param _id {{{adicional_resource_alterar_param_id_conta}}}
/// @param idPessoa {{{adicional_resource_alterar_param_id_pessoa}}}
/// @param adicionalUpdate adicionalUpdate
/// 
///
/// @return PierAdicionalDetalheResponse*
-(NSNumber*) alterarUsingPUTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    adicionalUpdate: (PierAdicionalUpdate*) adicionalUpdate
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_detalhe_resource_alterar}}}
/// {{{pessoa_detalhe_resource_alterar_notes}}}
///
/// @param _id {{{pessoa_detalhe_resource_alterar_param_id}}}
/// @param nomeMae {{{pessoa_detalhe_update_nome_mae_value}}}
/// @param idEstadoCivil {{{pessoa_detalhe_update_id_estado_civil_value}}}
/// @param idProfissao {{{pessoa_detalhe_update_id_profissao_value}}}
/// @param idNaturezaOcupacao {{{pessoa_detalhe_update_id_natureza_ocupacao_value}}}
/// @param idNacionalidade {{{pessoa_detalhe_update_id_nacionalidade_value}}}
/// @param numeroBanco {{{pessoa_detalhe_update_numero_banco_value}}}
/// @param numeroAgencia {{{pessoa_detalhe_update_numero_agencia_value}}}
/// @param numeroContaCorrente {{{pessoa_detalhe_update_numero_conta_corrente_value}}}
/// @param email {{{pessoa_detalhe_update_email_value}}}
/// @param nomeEmpresa {{{pessoa_detalhe_update_nome_empresa_value}}}
/// 
///
/// @return PierPessoaDetalheResponse*
-(NSNumber*) alterarUsingPUT15WithId: (NSNumber*) _id
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    idProfissao: (NSString*) idProfissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroBanco: (NSNumber*) numeroBanco
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_resource_alterar}}}
/// {{{pessoa_resource_alterar_notes}}}
///
/// @param _id {{{pessoa_resource_alterar_param_id}}}
/// @param nome {{{pessoa_persist_nome_value}}}
/// @param tipo {{{pessoa_persist_tipo_value}}}
/// @param dataNascimento {{{pessoa_persist_data_nascimento_value}}}
/// @param cpf {{{pessoa_persist_cpf_value}}}
/// @param cnpj {{{pessoa_persist_cnpj_value}}}
/// @param sexo {{{pessoa_persist_sexo_value}}}
/// @param numeroIdentidade {{{pessoa_persist_numero_identidade_value}}}
/// @param orgaoExpedidorIdentidade {{{pessoa_persist_orgao_expedidor_identidade_value}}}
/// @param unidadeFederativaIdentidade {{{pessoa_persist_unidade_federativa_identidade_value}}}
/// @param dataEmissaoIdentidade {{{pessoa_persist_data_emissao_identidade_value}}}
/// 
///
/// @return PierPessoaResponse*
-(NSNumber*) alterarUsingPUT16WithId: (NSNumber*) _id
    nome: (NSString*) nome
    tipo: (NSString*) tipo
    dataNascimento: (NSString*) dataNascimento
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    sexo: (NSString*) sexo
    numeroIdentidade: (NSString*) numeroIdentidade
    orgaoExpedidorIdentidade: (NSString*) orgaoExpedidorIdentidade
    unidadeFederativaIdentidade: (NSString*) unidadeFederativaIdentidade
    dataEmissaoIdentidade: (NSString*) dataEmissaoIdentidade
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler;


///
///
/// {{{telefone_resource_alterar}}}
/// {{{telefone_resource_alterar_notes}}}
///
/// @param _id {{{telefone_alterar_persist_id_value}}}
/// @param idTipoTelefone {{{telefone_alterar_persist_id_tipo_telefone_value}}}
/// @param ddd {{{telefone_alterar_persist_ddd_value}}}
/// @param telefone {{{telefone_alterar_persist_telefone_value}}}
/// @param ramal {{{telefone_alterar_persist_ramal_value}}}
/// 
///
/// @return PierTelefoneResponse*
-(NSNumber*) alterarUsingPUT18WithId: (NSNumber*) _id
    idTipoTelefone: (NSNumber*) idTipoTelefone
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler;


///
///
/// {{{endereco_resource_alterar}}}
/// {{{endereco_resource_alterar_notes}}}
///
/// @param _id id
/// @param idPessoa {{{endereco_persist_id_pessoa_value}}}
/// @param idTipoEndereco {{{endereco_persist_id_tipo_endereco_value}}}
/// @param cep {{{endereco_persist_cep_value}}}
/// @param logradouro {{{endereco_persist_logradouro_value}}}
/// @param numero {{{endereco_persist_numero_value}}}
/// @param complemento {{{endereco_persist_complemento_value}}}
/// @param pontoReferencia {{{endereco_persist_ponto_referencia_value}}}
/// @param bairro {{{endereco_persist_bairro_value}}}
/// @param cidade {{{endereco_persist_cidade_value}}}
/// @param uf {{{endereco_persist_uf_value}}}
/// @param pais {{{endereco_persist_pais_value}}}
/// 
///
/// @return PierEnderecoResponse*
-(NSNumber*) alterarUsingPUT5WithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    idTipoEndereco: (NSNumber*) idTipoEndereco
    cep: (NSString*) cep
    logradouro: (NSString*) logradouro
    numero: (NSNumber*) numero
    complemento: (NSString*) complemento
    pontoReferencia: (NSString*) pontoReferencia
    bairro: (NSString*) bairro
    cidade: (NSString*) cidade
    uf: (NSString*) uf
    pais: (NSString*) pais
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler;


///
///
/// {{{conta_pessoa_resource_atribuir_assinatura_cliente}}}
/// {{{conta_pessoa_resource_atribuir_assinatura_cliente_notes}}}
///
/// @param _id {{{conta_pessoa_resource_atribuir_assinatura_cliente_param_id}}}
/// @param body {{{conta_pessoa_resource_atribuir_assinatura_cliente_param_body}}}
/// 
///
/// @return NSObject*
-(NSNumber*) atribuirAssinaturaClienteUsingPOSTWithId: (NSNumber*) _id
    body: (PierAtribuirAssinaturaClientePersist*) body
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// {{{endereco_resource_atualizar_correspondencia}}}
/// {{{endereco_resource_atualizar_correspondencia_notes}}}
///
/// @param _id {{{endereco_resource_atualizar_correspondencia_param_id}}}
/// @param idConta {{{endereco_resource_atualizar_correspondencia_param_idConta}}}
/// 
///
/// @return PierEnderecoResponse*
-(NSNumber*) atualizarEnderecoDeCorrespondenciaUsingPUTWithId: (NSNumber*) _id
    idConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler;


///
///
/// {{{integracao_emissor_resource_atualizar}}}
/// {{{integracao_emissor_resource_atualizar_notes}}}
///
/// @param _id {{{integracao_emissor_resource_atualizar_param_id_conta}}}
/// @param body {{{integracao_emissor_resource_atualizar_param_body}}}
/// 
///
/// @return PierIntegracaoEmissorResponse*
-(NSNumber*) atualizarUsingPOSTWithId: (NSNumber*) _id
    body: (PierIntegracaoEmissorPersist*) body
    completionHandler: (void (^)(PierIntegracaoEmissorResponse* output, NSError* error)) handler;


///
///
/// {{{adicional_resource_cadastrar_adicional}}}
/// {{{adicional_resource_cadastrar_adicional_notes}}}
///
/// @param _id {{{adicional_resource_cadastrar_adicional_param_id_conta}}}
/// @param adicionalContaPersist adicionalContaPersist
/// 
///
/// @return PierAdicionalContaResponse*
-(NSNumber*) cadastrarAdicionalUsingPOSTWithId: (NSNumber*) _id
    adicionalContaPersist: (PierAdicionalContaPersist*) adicionalContaPersist
    completionHandler: (void (^)(PierAdicionalContaResponse* output, NSError* error)) handler;


///
///
/// {{{adicional_resource_cadastrar}}}
/// {{{adicional_resource_cadastrar_notes}}}
///
/// @param _id {{{adicional_resource_cadastrar_param_id_conta}}}
/// @param persist persist
/// 
///
/// @return PierAdicionalDetalheResponse*
-(NSNumber*) cadastrarUsingPOST1WithId: (NSNumber*) _id
    persist: (PierAdicionalPersist*) persist
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{adicional_resource_consultar}}}
/// {{{adicional_resource_consultar_notes}}}
///
/// @param _id {{{adicional_resource_consultar_param_id_conta}}}
/// @param idPessoa {{{adicional_resource_consultar_param_id_pessoa}}}
/// 
///
/// @return PierAdicionalDetalheResponse*
-(NSNumber*) consultarUsingGET2WithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{endereco_resource_consultar}}}
/// {{{endereco_resource_consultar_notes}}}
///
/// @param _id {{{endereco_resource_consultar_param_id}}}
/// 
///
/// @return PierEnderecoResponse*
-(NSNumber*) consultarUsingGET21WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_detalhe_resource_consultar}}}
/// {{{pessoa_detalhe_resource_consultar_notes}}}
///
/// @param _id {{{pessoa_detalhe_resource_consultar_param_id}}}
/// 
///
/// @return PierPessoaDetalheResponse*
-(NSNumber*) consultarUsingGET32WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_resource_consultar}}}
/// {{{pessoa_resource_consultar_notes}}}
///
/// @param _id {{{pessoa_resource_consultar_param_id}}}
/// 
///
/// @return PierPessoaResponse*
-(NSNumber*) consultarUsingGET33WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler;


///
///
/// {{{telefone_resource_consultar}}}
/// {{{telefone_resource_consultar_notes}}}
///
/// @param _id {{{telefone_resource_consultar_param_id}}}
/// 
///
/// @return PierTelefoneResponse*
-(NSNumber*) consultarUsingGET41WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler;


///
///
/// {{{adicional_resource_inativar}}}
/// {{{adicional_resource_inativar_notes}}}
///
/// @param _id {{{adicional_resource_inativar_param_id_conta}}}
/// @param idPessoa {{{adicional_resource_inativar_param_id_pessoa}}}
/// 
///
/// @return NSString*
-(NSNumber*) inativarUsingPOSTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


///
///
/// {{{conta_pessoa_resource_listar_socios}}}
/// {{{conta_pessoa_resource_listar_socios_notes}}}
///
/// @param _id {{{conta_pessoa_resource_listar_socios_param_id}}}
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPagePessoaResponse*
-(NSNumber*) listarSociosUsingGETWithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPagePessoaResponse* output, NSError* error)) handler;


///
///
/// {{{adicional_resource_listar}}}
/// {{{adicional_resource_listar_notes}}}
///
/// @param _id {{{adicional_resource_listar_param_id_conta}}}
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierAdicionalResponse*
-(NSNumber*) listarUsingGET1WithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierAdicionalResponse* output, NSError* error)) handler;


///
///
/// {{{endereco_resource_listar}}}
/// {{{endereco_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{endereco_request_id_value}}}
/// @param idPessoa {{{endereco_request_id_pessoa_value}}}
/// @param idTipoEndereco {{{endereco_request_id_tipo_endereco_value}}}
/// @param cep {{{endereco_request_cep_value}}}
/// @param logradouro {{{endereco_request_logradouro_value}}}
/// @param numero {{{endereco_request_numero_value}}}
/// @param complemento {{{endereco_request_complemento_value}}}
/// @param pontoReferencia {{{endereco_request_ponto_referencia_value}}}
/// @param bairro {{{endereco_request_bairro_value}}}
/// @param cidade {{{endereco_request_cidade_value}}}
/// @param uf {{{endereco_request_uf_value}}}
/// @param pais {{{endereco_request_pais_value}}}
/// @param dataInclusao {{{endereco_request_data_inclusao_value}}}
/// @param dataUltimaAtualizacao {{{endereco_request_data_ultima_atualizacao_value}}}
/// 
///
/// @return PierPageEnderecoResponse*
-(NSNumber*) listarUsingGET25WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    idTipoEndereco: (NSNumber*) idTipoEndereco
    cep: (NSString*) cep
    logradouro: (NSString*) logradouro
    numero: (NSNumber*) numero
    complemento: (NSString*) complemento
    pontoReferencia: (NSString*) pontoReferencia
    bairro: (NSString*) bairro
    cidade: (NSString*) cidade
    uf: (NSString*) uf
    pais: (NSString*) pais
    dataInclusao: (NSString*) dataInclusao
    dataUltimaAtualizacao: (NSString*) dataUltimaAtualizacao
    completionHandler: (void (^)(PierPageEnderecoResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_detalhe_resource_listar}}}
/// {{{pessoa_detalhe_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idPessoa {{{pessoa_detalhe_request_id_pessoa_value}}}
/// @param nomeMae {{{pessoa_detalhe_request_nome_mae_value}}}
/// @param idEstadoCivil {{{pessoa_detalhe_request_id_estado_civil_value}}}
/// @param idProfissao {{{pessoa_detalhe_request_id_profissao_value}}}
/// @param idNaturezaOcupacao {{{pessoa_detalhe_request_id_natureza_ocupacao_value}}}
/// @param idNacionalidade {{{pessoa_detalhe_request_id_nacionalidade_value}}}
/// @param numeroBanco {{{pessoa_detalhe_request_numero_banco_value}}}
/// @param numeroAgencia {{{pessoa_detalhe_request_numero_agencia_value}}}
/// @param numeroContaCorrente {{{pessoa_detalhe_request_numero_conta_corrente_value}}}
/// @param email {{{pessoa_detalhe_request_email_value}}}
/// @param nomeEmpresa {{{pessoa_detalhe_request_nome_empresa_value}}}
/// 
///
/// @return PierPagePessoaDetalheResponse*
-(NSNumber*) listarUsingGET40WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idPessoa: (NSNumber*) idPessoa
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    idProfissao: (NSString*) idProfissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroBanco: (NSNumber*) numeroBanco
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPagePessoaDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_resource_listar}}}
/// {{{pessoa_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{pessoa_request_id_value}}}
/// @param nome {{{pessoa_request_nome_value}}}
/// @param tipo {{{pessoa_request_tipo_value}}}
/// @param cpf {{{pessoa_request_cpf_value}}}
/// @param cnpj {{{pessoa_request_cnpj_value}}}
/// @param dataNascimento {{{pessoa_request_data_nascimento_value}}}
/// @param sexo {{{pessoa_request_sexo_value}}}
/// @param numeroIdentidade {{{pessoa_request_numero_identidade_value}}}
/// @param orgaoExpedidorIdentidade {{{pessoa_request_orgao_expedidor_identidade_value}}}
/// @param unidadeFederativaIdentidade {{{pessoa_request_unidade_federativa_identidade_value}}}
/// @param dataEmissaoIdentidade {{{pessoa_request_data_emissao_identidade_value}}}
/// 
///
/// @return PierPagePessoaResponse*
-(NSNumber*) listarUsingGET41WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    tipo: (NSString*) tipo
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    dataNascimento: (NSString*) dataNascimento
    sexo: (NSString*) sexo
    numeroIdentidade: (NSString*) numeroIdentidade
    orgaoExpedidorIdentidade: (NSString*) orgaoExpedidorIdentidade
    unidadeFederativaIdentidade: (NSString*) unidadeFederativaIdentidade
    dataEmissaoIdentidade: (NSString*) dataEmissaoIdentidade
    completionHandler: (void (^)(PierPagePessoaResponse* output, NSError* error)) handler;


///
///
/// {{{telefone_resource_listar}}}
/// {{{telefone_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{telefone_request_id_value}}}
/// @param idTipoTelefone {{{telefone_request_id_tipo_telefone_value}}}
/// @param idPessoa {{{telefone_request_id_pessoa_value}}}
/// @param ddd {{{telefone_request_ddd_value}}}
/// @param telefone {{{telefone_request_telefone_value}}}
/// @param ramal {{{telefone_request_ramal_value}}}
/// @param status {{{telefone_request_status_value}}}
/// 
///
/// @return PierPageTelefoneResponse*
-(NSNumber*) listarUsingGET53WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    idTipoTelefone: (NSNumber*) idTipoTelefone
    idPessoa: (NSNumber*) idPessoa
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    status: (NSNumber*) status
    completionHandler: (void (^)(PierPageTelefoneResponse* output, NSError* error)) handler;


///
///
/// {{{conta_pessoa_resource_salvar_pessoa_fisica_aprovada}}}
/// {{{conta_pessoa_resource_salvar_pessoa_fisica_aprovada_notes}}}
///
/// @param pessoaPersist pessoaPersist
/// 
///
/// @return PierPessoaFisicaAprovadaResponse*
-(NSNumber*) salvarPessoaFisicaAprovadaUsingPOSTWithPessoaPersist: (PierPessoaFisicaAprovadaPersistValue_*) pessoaPersist
    completionHandler: (void (^)(PierPessoaFisicaAprovadaResponse* output, NSError* error)) handler;


///
///
/// {{{conta_pessoa_resource_salvar_pessoa_juridica_aprovada}}}
/// {{{conta_pessoa_resource_salvar_pessoa_juridica_aprovada_notes}}}
///
/// @param pessoaPersist pessoaPersist
/// 
///
/// @return PierPessoaJuridicaAprovadaResponse*
-(NSNumber*) salvarPessoaJuridicaAprovadaUsingPOSTWithPessoaPersist: (PierPessoaJuridicaAprovadaPersist*) pessoaPersist
    completionHandler: (void (^)(PierPessoaJuridicaAprovadaResponse* output, NSError* error)) handler;


///
///
/// {{{endereco_resource_salvar}}}
/// {{{endereco_resource_salvar_notes}}}
///
/// @param idPessoa {{{endereco_persist_id_pessoa_value}}}
/// @param idTipoEndereco {{{endereco_persist_id_tipo_endereco_value}}}
/// @param cep {{{endereco_persist_cep_value}}}
/// @param logradouro {{{endereco_persist_logradouro_value}}}
/// @param numero {{{endereco_persist_numero_value}}}
/// @param complemento {{{endereco_persist_complemento_value}}}
/// @param pontoReferencia {{{endereco_persist_ponto_referencia_value}}}
/// @param bairro {{{endereco_persist_bairro_value}}}
/// @param cidade {{{endereco_persist_cidade_value}}}
/// @param uf {{{endereco_persist_uf_value}}}
/// @param pais {{{endereco_persist_pais_value}}}
/// 
///
/// @return PierEnderecoResponse*
-(NSNumber*) salvarUsingPOST14WithIdPessoa: (NSNumber*) idPessoa
    idTipoEndereco: (NSNumber*) idTipoEndereco
    cep: (NSString*) cep
    logradouro: (NSString*) logradouro
    numero: (NSNumber*) numero
    complemento: (NSString*) complemento
    pontoReferencia: (NSString*) pontoReferencia
    bairro: (NSString*) bairro
    cidade: (NSString*) cidade
    uf: (NSString*) uf
    pais: (NSString*) pais
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler;


///
///
/// {{{integracao_emissor_resource_salvar}}}
/// {{{integracao_emissor_resource_salvar_notes}}}
///
/// @param _id {{{integracao_emissor_resource_salvar_param_id_conta}}}
/// @param body {{{integracao_emissor_resource_salvar_param_body}}}
/// 
///
/// @return PierIntegracaoEmissorResponse*
-(NSNumber*) salvarUsingPOST17WithId: (NSNumber*) _id
    body: (PierIntegracaoEmissorPersist*) body
    completionHandler: (void (^)(PierIntegracaoEmissorResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_detalhe_resource_salvar}}}
/// {{{pessoa_detalhe_resource_salvar_notes}}}
///
/// @param idPessoa {{{pessoa_detalhe_persist_id_pessoa_value}}}
/// @param nomeMae {{{pessoa_detalhe_persist_nome_mae_value}}}
/// @param idEstadoCivil {{{pessoa_detalhe_persist_id_estado_civil_value}}}
/// @param idProfissao {{{pessoa_detalhe_persist_id_profissao_value}}}
/// @param idNaturezaOcupacao {{{pessoa_detalhe_persist_id_natureza_ocupacao_value}}}
/// @param idNacionalidade {{{pessoa_detalhe_persist_id_nacionalidade_value}}}
/// @param numeroBanco {{{pessoa_detalhe_persist_numero_banco_value}}}
/// @param numeroAgencia {{{pessoa_detalhe_persist_numero_agencia_value}}}
/// @param numeroContaCorrente {{{pessoa_detalhe_persist_numero_conta_corrente_value}}}
/// @param email {{{pessoa_detalhe_persist_email_value}}}
/// @param nomeEmpresa {{{pessoa_detalhe_persist_nome_empresa_value}}}
/// 
///
/// @return PierPessoaDetalheResponse*
-(NSNumber*) salvarUsingPOST25WithIdPessoa: (NSNumber*) idPessoa
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    idProfissao: (NSString*) idProfissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroBanco: (NSNumber*) numeroBanco
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_resource_salvar}}}
/// {{{pessoa_resource_salvar_notes}}}
///
/// @param nome {{{pessoa_persist_nome_value}}}
/// @param tipo {{{pessoa_persist_tipo_value}}}
/// @param dataNascimento {{{pessoa_persist_data_nascimento_value}}}
/// @param cpf {{{pessoa_persist_cpf_value}}}
/// @param cnpj {{{pessoa_persist_cnpj_value}}}
/// @param sexo {{{pessoa_persist_sexo_value}}}
/// @param numeroIdentidade {{{pessoa_persist_numero_identidade_value}}}
/// @param orgaoExpedidorIdentidade {{{pessoa_persist_orgao_expedidor_identidade_value}}}
/// @param unidadeFederativaIdentidade {{{pessoa_persist_unidade_federativa_identidade_value}}}
/// @param dataEmissaoIdentidade {{{pessoa_persist_data_emissao_identidade_value}}}
/// 
///
/// @return PierPessoaResponse*
-(NSNumber*) salvarUsingPOST26WithNome: (NSString*) nome
    tipo: (NSString*) tipo
    dataNascimento: (NSString*) dataNascimento
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    sexo: (NSString*) sexo
    numeroIdentidade: (NSString*) numeroIdentidade
    orgaoExpedidorIdentidade: (NSString*) orgaoExpedidorIdentidade
    unidadeFederativaIdentidade: (NSString*) unidadeFederativaIdentidade
    dataEmissaoIdentidade: (NSString*) dataEmissaoIdentidade
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler;


///
///
/// {{{telefone_resource_salvar}}}
/// {{{telefone_resource_salvar_notes}}}
///
/// @param idTipoTelefone {{{telefone_persist_id_tipo_telefone_value}}}
/// @param idPessoa {{{telefone_persist_id_pessoa_value}}}
/// @param ddd {{{telefone_persist_ddd_value}}}
/// @param telefone {{{telefone_persist_telefone_value}}}
/// @param ramal {{{telefone_persist_ramal_value}}}
/// 
///
/// @return PierTelefoneResponse*
-(NSNumber*) salvarUsingPOST29WithIdTipoTelefone: (NSNumber*) idTipoTelefone
    idPessoa: (NSNumber*) idPessoa
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler;



@end
