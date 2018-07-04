#import <Foundation/Foundation.h>
#import "PierConvenioPersist.h"
#import "PierConvenioResponse.h"
#import "PierCampanhaResponse.h"
#import "PierCampanhaUpdateValue_.h"
#import "PierConfiguracaoRegistroCobrancaResponse.h"
#import "PierConfiguracaoRegistroCobrancaPersist.h"
#import "PierConfiguracaoRotativoDetalheResponse.h"
#import "PierConfiguracaoRotativoPersist.h"
#import "PierParametroProdutoResponse.h"
#import "PierTaxaAntecipacaoRequest.h"
#import "PierProdutoDetalhesResponse.h"
#import "PierTipoAjusteResponse.h"
#import "PierPageTipoBoletoResponse.h"
#import "PierTipoEnderecoResponse.h"
#import "PierTipoOperacaoResponse.h"
#import "PierTipoTelefoneResponse.h"
#import "PierAtendimentoClienteResponse.h"
#import "PierBancoResponse.h"
#import "PierPageCampanhaResponse.h"
#import "PierPageContaDetalheResponse.h"
#import "PierPageConvenioResponse.h"
#import "PierPageCampoCodificadoDescricaoResponse.h"
#import "PierPageFantasiaBasicaResponse.h"
#import "PierHistoricoTelefoneResponse.h"
#import "PierPageTipoCampanhaResponse.h"
#import "PierPageConfiguracaoRotativoResponse.h"
#import "PierPagePortadorResponse.h"
#import "PierPageProdutoResponse.h"
#import "PierPagePromotorResponse.h"
#import "PierPageTipoAjusteResponse.h"
#import "PierPageTipoEnderecoResponse.h"
#import "PierPageTipoTelefoneResponse.h"
#import "PierPageControleVencimentoResponse.h"
#import "PierPageAtendimentoClienteResponse.h"
#import "PierPageBancoResponse.h"
#import "PierCampanhaPersist.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltagcadastrogeralApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltagcadastrogeralApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltagcadastrogeralApi*) sharedAPI;
///
///
/// Altera os dados banc\u00E1rios de um determinado conv\u00EAnio
/// Altera os dados banc\u00E1rios de um determinado conv\u00EAnio
///
/// @param _id Id
/// @param convenioPersist convenioPersist
/// 
///
/// @return PierConvenioResponse*
-(NSNumber*) alterarConvenioUsingPUTWithId: (NSNumber*) _id
    convenioPersist: (PierConvenioPersist*) convenioPersist
    completionHandler: (void (^)(PierConvenioResponse* output, NSError* error)) handler;


///
///
/// {{{campanha_resource_alterar}}}
/// {{{campanha_resource_alterar_notes}}}
///
/// @param _id {{{campanha_resource_alterar_param_id}}}
/// @param update update
/// 
///
/// @return PierCampanhaResponse*
-(NSNumber*) alterarUsingPUT1WithId: (NSNumber*) _id
    update: (PierCampanhaUpdateValue_*) update
    completionHandler: (void (^)(PierCampanhaResponse* output, NSError* error)) handler;


///
///
/// {{{configuracao_registro_cobranca_resource_alterar}}}
/// {{{configuracao_registro_cobranca_resource_alterar_notes}}}
///
/// @param _id {{{configuracao_registro_cobranca_resource_alterar_param_id}}}
/// @param configuracaoPersist configuracaoPersist
/// 
///
/// @return PierConfiguracaoRegistroCobrancaResponse*
-(NSNumber*) alterarUsingPUT2WithId: (NSNumber*) _id
    configuracaoPersist: (PierConfiguracaoRegistroCobrancaPersist*) configuracaoPersist
    completionHandler: (void (^)(PierConfiguracaoRegistroCobrancaResponse* output, NSError* error)) handler;


///
///
/// {{{configuracao_rotativo_resource_alterar}}}
/// {{{configuracao_rotativo_resource_alterar_notes}}}
///
/// @param _id {{{configuracao_rotativo_resource_alterar_param_id}}}
/// @param configuracaoRotativoPersist configuracaoRotativoPersist
/// 
///
/// @return PierConfiguracaoRotativoDetalheResponse*
-(NSNumber*) alterarUsingPUT3WithId: (NSNumber*) _id
    configuracaoRotativoPersist: (PierConfiguracaoRotativoPersist*) configuracaoRotativoPersist
    completionHandler: (void (^)(PierConfiguracaoRotativoDetalheResponse* output, NSError* error)) handler;


///
///
/// Adiciona novo conv\u00EAnio para o emissor
/// Adiciona novo conv\u00EAnio para o emissor
///
/// @param convenioPersist convenioPersist
/// 
///
/// @return PierConvenioResponse*
-(NSNumber*) cadastrarConvenioUsingPOSTWithConvenioPersist: (PierConvenioPersist*) convenioPersist
    completionHandler: (void (^)(PierConvenioResponse* output, NSError* error)) handler;


///
///
/// {{{configuracao_registro_cobranca_resource_cadastrar}}}
/// {{{configuracao_registro_cobranca_resource_cadastrar_notes}}}
///
/// @param configuracaoPersist configuracaoPersist
/// 
///
/// @return PierConfiguracaoRegistroCobrancaResponse*
-(NSNumber*) cadastrarUsingPOST1WithConfiguracaoPersist: (PierConfiguracaoRegistroCobrancaPersist*) configuracaoPersist
    completionHandler: (void (^)(PierConfiguracaoRegistroCobrancaResponse* output, NSError* error)) handler;


///
///
/// {{{produto_resource_configurar_taxa_antecipacao}}}
/// {{{produto_resource_configurar_taxa_antecipacao_notes}}}
///
/// @param _id {{{produto_resource_configurar_taxa_antecipacao_param_id}}}
/// @param taxaAntecipacaoRequest taxaAntecipacaoRequest
/// 
///
/// @return PierParametroProdutoResponse*
-(NSNumber*) configurarTaxaAntecipacaoUsingPOSTWithId: (NSNumber*) _id
    taxaAntecipacaoRequest: (PierTaxaAntecipacaoRequest*) taxaAntecipacaoRequest
    completionHandler: (void (^)(PierParametroProdutoResponse* output, NSError* error)) handler;


///
///
/// {{{campanha_resource_consultar_campanha}}}
/// {{{campanha_resource_consultar_campanha_notes}}}
///
/// @param _id {{{campanha_resource_consultar_campanha_param_id_campanha}}}
/// 
///
/// @return PierCampanhaResponse*
-(NSNumber*) consultarCampanhaUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCampanhaResponse* output, NSError* error)) handler;


///
///
/// Consultar dados banc\u00E1rios pelo id do conv\u00EAnio
/// Consultar dados banc\u00E1rios de um determinado conv\u00EAnio
///
/// @param _id Id
/// 
///
/// @return PierConvenioResponse*
-(NSNumber*) consultarConvenioUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierConvenioResponse* output, NSError* error)) handler;


///
///
/// {{{produto_resource_consultar_taxa_antecipacao}}}
/// {{{produto_resource_consultar_taxa_antecipacao_notes}}}
///
/// @param _id {{{produto_resource_consultar_taxa_antecipacao_param_id}}}
/// @param tipoTransacao {{{produto_resource_consultar_taxa_antecipacao_param_tipo_transacao}}}
/// 
///
/// @return PierParametroProdutoResponse*
-(NSNumber*) consultarTaxaAntecipacaoUsingGETWithId: (NSNumber*) _id
    tipoTransacao: (NSString*) tipoTransacao
    completionHandler: (void (^)(PierParametroProdutoResponse* output, NSError* error)) handler;


///
///
/// {{{configuracao_registro_cobranca_resource_consultar}}}
/// {{{configuracao_registro_cobranca_resource_consultar_notes}}}
///
/// @param _id {{{configuracao_registro_cobranca_resource_consultar_param_id}}}
/// 
///
/// @return PierConfiguracaoRegistroCobrancaResponse*
-(NSNumber*) consultarUsingGET10WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierConfiguracaoRegistroCobrancaResponse* output, NSError* error)) handler;


///
///
/// {{{configuracao_rotativo_resource_consultar}}}
/// {{{configuracao_rotativo_resource_consultar_notes}}}
///
/// @param _id {{{configuracao_rotativo_resource_consultar_param_id}}}
/// 
///
/// @return PierConfiguracaoRotativoDetalheResponse*
-(NSNumber*) consultarUsingGET11WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierConfiguracaoRotativoDetalheResponse* output, NSError* error)) handler;


///
///
/// {{{produto_resource_consultar}}}
/// {{{produto_resource_consultar_notes}}}
///
/// @param _id {{{produto_resource_consultar_param_id}}}
/// 
///
/// @return PierProdutoDetalhesResponse*
-(NSNumber*) consultarUsingGET31WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierProdutoDetalhesResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_transacoes_ajuste_resource_consultar}}}
/// {{{tipo_transacoes_ajuste_resource_consultar_notes}}}
///
/// @param _id {{{tipo_transacoes_ajuste_resource_consultar_param_id}}}
/// 
///
/// @return PierTipoAjusteResponse*
-(NSNumber*) consultarUsingGET40WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoAjusteResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_boleto_resource_consultar}}}
/// {{{tipo_boleto_resource_consultar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{tipo_boleto_request_id_value}}}
/// @param descricao {{{tipo_boleto_request_descricao_value}}}
/// @param banco {{{tipo_boleto_request_banco_value}}}
/// 
///
/// @return PierPageTipoBoletoResponse*
-(NSNumber*) consultarUsingGET41WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    descricao: (NSString*) descricao
    banco: (NSNumber*) banco
    completionHandler: (void (^)(PierPageTipoBoletoResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_endereco_resource_consultar}}}
/// {{{tipo_endereco_resource_consultar_notes}}}
///
/// @param _id {{{tipo_endereco_resource_consultar_param_id}}}
/// 
///
/// @return PierTipoEnderecoResponse*
-(NSNumber*) consultarUsingGET42WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoEnderecoResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_operacao_resource_consultar}}}
/// {{{tipo_operacao_resource_consultar_notes}}}
///
/// @param idCartao {{{tipo_operacao_resource_consultar_param_id_cartao}}}
/// @param idEstabelecimento {{{tipo_operacao_resource_consultar_param_id_estabelecimento}}}
/// @param codigoProcessamento {{{tipo_operacao_resource_consultar_param_codigo_processamento}}}
/// 
///
/// @return PierTipoOperacaoResponse*
-(NSNumber*) consultarUsingGET43WithIdCartao: (NSNumber*) idCartao
    idEstabelecimento: (NSNumber*) idEstabelecimento
    codigoProcessamento: (NSString*) codigoProcessamento
    completionHandler: (void (^)(PierTipoOperacaoResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_telefone_resource_consultar}}}
/// {{{tipo_telefone_resource_consultar_notes}}}
///
/// @param _id {{{tipo_telefone_resource_consultar_param_id}}}
/// 
///
/// @return PierTipoTelefoneResponse*
-(NSNumber*) consultarUsingGET45WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoTelefoneResponse* output, NSError* error)) handler;


///
///
/// {{{atendimento_cliente_resource_consultar}}}
/// {{{atendimento_cliente_resource_consultar_notes}}}
///
/// @param _id {{{atendimento_cliente_resource_consultar_param_id_atendimento}}}
/// 
///
/// @return PierAtendimentoClienteResponse*
-(NSNumber*) consultarUsingGET5WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAtendimentoClienteResponse* output, NSError* error)) handler;


///
///
/// {{{banco_resource_consultar}}}
/// {{{banco_resource_consultar_notes}}}
///
/// @param _id {{{banco_resource_consultar_param_id}}}
/// 
///
/// @return PierBancoResponse*
-(NSNumber*) consultarUsingGET7WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierBancoResponse* output, NSError* error)) handler;


///
///
/// {{{campanha_resource_listar_campanhas}}}
/// {{{campanha_resource_listar_campanhas_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idTipoCampanha {{{campanha_request_id_tipo_campanha_value}}}
/// 
///
/// @return PierPageCampanhaResponse*
-(NSNumber*) listarCampanhasUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoCampanha: (NSNumber*) idTipoCampanha
    completionHandler: (void (^)(PierPageCampanhaResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_resource_listar_contas_por_pessoa}}}
/// {{{pessoa_resource_listar_contas_por_pessoa_notes}}}
///
/// @param numeroReceitaFederal {{{pessoa_resource_listar_contas_por_pessoa_param_numero_receita_federal}}}
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageContaDetalheResponse*
-(NSNumber*) listarContasPorPessoaUsingGETWithNumeroReceitaFederal: (NSString*) numeroReceitaFederal
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageContaDetalheResponse* output, NSError* error)) handler;


///
///
/// Lista os dados banc\u00E1rios dos conv\u00EAnios existentes
/// Lista os dados banc\u00E1rios dos conv\u00EAnios existentes
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param banco Identifica\u00E7\u00E3o do banco.
/// @param agencia N\u00FAmero da ag\u00EAncia.
/// @param contaCorrente Conta corrente.
/// @param numeroConvenio C\u00F3digo de identifica\u00E7\u00E3o do conv\u00EAnio.
/// 
///
/// @return PierPageConvenioResponse*
-(NSNumber*) listarConveniosUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    banco: (NSNumber*) banco
    agencia: (NSNumber*) agencia
    contaCorrente: (NSString*) contaCorrente
    numeroConvenio: (NSNumber*) numeroConvenio
    completionHandler: (void (^)(PierPageConvenioResponse* output, NSError* error)) handler;


///
///
/// {{{campo_codificado_resource_listar_estados_civis}}}
/// {{{campo_codificado_resource_listar_estados_civis_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageCampoCodificadoDescricaoResponse*
-(NSNumber*) listarEstadosCivisUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler;


///
///
/// {{{fantasia_basica_resource_listar_fantasias_basicas}}}
/// {{{fantasia_basica_resource_listar_fantasias_basicas_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageFantasiaBasicaResponse*
-(NSNumber*) listarFantasiasBasicasUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageFantasiaBasicaResponse* output, NSError* error)) handler;


///
///
/// {{{pessoa_resource_listar_historico_telefones}}}
/// {{{pessoa_resource_listar_historico_telefones_notes}}}
///
/// @param _id {{{pessoa_resource_listar_historico_telefones_param_id_pessoa}}}
/// 
///
/// @return PierHistoricoTelefoneResponse*
-(NSNumber*) listarHistoricoTelefonesUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierHistoricoTelefoneResponse* output, NSError* error)) handler;


///
///
/// {{{campo_codificado_resource_listar_nacionalidades}}}
/// {{{campo_codificado_resource_listar_nacionalidades_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageCampoCodificadoDescricaoResponse*
-(NSNumber*) listarNacionalidadesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler;


///
///
/// {{{campo_codificado_resource_listar_naturezas_ocupacoes}}}
/// {{{campo_codificado_resource_listar_naturezas_ocupacoes_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageCampoCodificadoDescricaoResponse*
-(NSNumber*) listarNaturezasOcupacoesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler;


///
///
/// {{{campo_codificado_resource_listar_parentescos}}}
/// {{{campo_codificado_resource_listar_parentescos_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageCampoCodificadoDescricaoResponse*
-(NSNumber*) listarParentescosUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler;


///
///
/// {{{campo_codificado_resource_listar_profissoes}}}
/// {{{campo_codificado_resource_listar_profissoes_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageCampoCodificadoDescricaoResponse*
-(NSNumber*) listarProfissoesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_campanha_resource_listar_tipos_campanhas}}}
/// {{{tipo_campanha_resource_listar_tipos_campanhas_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageTipoCampanhaResponse*
-(NSNumber*) listarTiposCampanhasUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTipoCampanhaResponse* output, NSError* error)) handler;


///
///
/// {{{configuracao_registro_cobranca_resource_listar}}}
/// {{{configuracao_registro_cobranca_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierConfiguracaoRegistroCobrancaResponse*
-(NSNumber*) listarUsingGET14WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierConfiguracaoRegistroCobrancaResponse* output, NSError* error)) handler;


///
///
/// {{{configuracao_rotativo_resource_listar}}}
/// {{{configuracao_rotativo_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idProduto {{{configuracao_rotativo_request_id_produto_value}}}
/// 
///
/// @return PierPageConfiguracaoRotativoResponse*
-(NSNumber*) listarUsingGET15WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idProduto: (NSNumber*) idProduto
    completionHandler: (void (^)(PierPageConfiguracaoRotativoResponse* output, NSError* error)) handler;


///
///
/// {{{portador_resource_listar}}}
/// {{{portador_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idConta {{{portador_request_id_conta_value}}}
/// @param idProduto {{{portador_request_id_produto_value}}}
/// @param idPessoa {{{portador_request_id_pessoa_value}}}
/// @param idParentesco {{{portador_request_id_parentesco_value}}}
/// @param tipoPortador {{{portador_request_tipo_portador_value}}}
/// @param nomeImpresso {{{portador_request_nome_impresso_value}}}
/// @param idTipoCartao {{{portador_request_id_tipo_cartao_value}}}
/// @param flagAtivo {{{portador_request_flag_ativo_value}}}
/// @param dataCadastroPortador {{{portador_request_data_cadastro_portador_value}}}
/// @param dataCancelamentoPortador {{{portador_request_data_cancelamento_portador_value}}}
/// 
///
/// @return PierPagePortadorResponse*
-(NSNumber*) listarUsingGET41WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idConta: (NSNumber*) idConta
    idProduto: (NSNumber*) idProduto
    idPessoa: (NSNumber*) idPessoa
    idParentesco: (NSNumber*) idParentesco
    tipoPortador: (NSString*) tipoPortador
    nomeImpresso: (NSString*) nomeImpresso
    idTipoCartao: (NSNumber*) idTipoCartao
    flagAtivo: (NSNumber*) flagAtivo
    dataCadastroPortador: (NSString*) dataCadastroPortador
    dataCancelamentoPortador: (NSString*) dataCancelamentoPortador
    completionHandler: (void (^)(PierPagePortadorResponse* output, NSError* error)) handler;


///
///
/// {{{produto_resource_listar}}}
/// {{{produto_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param nome {{{produto_request_nome_value}}}
/// @param status {{{produto_request_status_value}}}
/// @param idFantasiaBasica {{{produto_request_id_fantasia_basica_value}}}
/// 
///
/// @return PierPageProdutoResponse*
-(NSNumber*) listarUsingGET42WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    status: (NSNumber*) status
    idFantasiaBasica: (NSNumber*) idFantasiaBasica
    completionHandler: (void (^)(PierPageProdutoResponse* output, NSError* error)) handler;


///
///
/// {{{promotor_resource_listar}}}
/// {{{promotor_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{promotor_request_id_value}}}
/// @param nome {{{promotor_request_nome_value}}}
/// @param dataCadastro {{{promotor_request_data_cadastro_value}}}
/// @param idEstabelecimento {{{promotor_request_id_estabelecimento_value}}}
/// @param idUsuario {{{promotor_request_id_usuario_value}}}
/// 
///
/// @return PierPagePromotorResponse*
-(NSNumber*) listarUsingGET43WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    dataCadastro: (NSString*) dataCadastro
    idEstabelecimento: (NSNumber*) idEstabelecimento
    idUsuario: (NSNumber*) idUsuario
    completionHandler: (void (^)(PierPagePromotorResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_ajuste_resource_consultar}}}
/// {{{tipo_ajuste_resource_consultar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{tipo_ajuste_request_id_value}}}
/// @param descricao {{{tipo_ajuste_request_descricao_value}}}
/// 
///
/// @return PierPageTipoAjusteResponse*
-(NSNumber*) listarUsingGET52WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageTipoAjusteResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_endereco_resource_listar}}}
/// {{{tipo_endereco_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{tipo_endereco_request_id_value}}}
/// @param nome {{{tipo_endereco_request_nome_value}}}
/// 
///
/// @return PierPageTipoEnderecoResponse*
-(NSNumber*) listarUsingGET54WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageTipoEnderecoResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_telefone_resource_listar}}}
/// {{{tipo_telefone_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param _id {{{tipo_telefone_request_id_value}}}
/// @param nome {{{tipo_telefone_request_nome_value}}}
/// 
///
/// @return PierPageTipoTelefoneResponse*
-(NSNumber*) listarUsingGET56WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageTipoTelefoneResponse* output, NSError* error)) handler;


///
///
/// {{{vencimento_resource_listar}}}
/// {{{vencimento_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param dataVencimento {{{controle_vencimento_request_data_vencimento_value}}}
/// 
///
/// @return PierPageControleVencimentoResponse*
-(NSNumber*) listarUsingGET63WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierPageControleVencimentoResponse* output, NSError* error)) handler;


///
///
/// {{{atendimento_cliente_resource_listar}}}
/// {{{atendimento_cliente_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idTipoAtendimento {{{atendimento_cliente_request_id_tipo_atendimento_value}}}
/// @param idConta {{{atendimento_cliente_request_id_conta_value}}}
/// @param nomeAtendente {{{atendimento_cliente_request_nome_atendente_value}}}
/// @param dataAtendimento {{{atendimento_cliente_request_data_atendimento_value}}}
/// 
///
/// @return PierPageAtendimentoClienteResponse*
-(NSNumber*) listarUsingGET7WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoAtendimento: (NSNumber*) idTipoAtendimento
    idConta: (NSNumber*) idConta
    nomeAtendente: (NSString*) nomeAtendente
    dataAtendimento: (NSString*) dataAtendimento
    completionHandler: (void (^)(PierPageAtendimentoClienteResponse* output, NSError* error)) handler;


///
///
/// {{{banco_resource_listar}}}
/// {{{banco_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// 
///
/// @return PierPageBancoResponse*
-(NSNumber*) listarUsingGET9WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageBancoResponse* output, NSError* error)) handler;


///
///
/// {{{atendimento_cliente_resource_salvar}}}
/// {{{atendimento_cliente_resource_salvar_notes}}}
///
/// @param idConta {{{atendimento_cliente_persist_id_conta_value}}}
/// @param conteudoAtendimento {{{atendimento_cliente_persist_conteudo_atendimento_value}}}
/// @param detalhesAtendimento {{{atendimento_cliente_persist_detalhes_atendimento_value}}}
/// @param nomeAtendente {{{atendimento_cliente_persist_nome_atendente_value}}}
/// @param dataAtendimento {{{atendimento_cliente_persist_data_atendimento_value}}}
/// @param dataAgendamento {{{atendimento_cliente_persist_data_agendamento_value}}}
/// @param dataHoraInicioAtendimento {{{atendimento_cliente_persist_data_hora_inicio_atendimento_value}}}
/// @param dataHoraFimAtendimento {{{atendimento_cliente_persist_data_hora_fim_atendimento_value}}}
/// @param flagFilaFraude {{{atendimento_cliente_persist_flag_fila_fraude_value}}}
/// 
///
/// @return PierAtendimentoClienteResponse*
-(NSNumber*) salvarUsingPOST2WithIdConta: (NSNumber*) idConta
    conteudoAtendimento: (NSString*) conteudoAtendimento
    detalhesAtendimento: (NSString*) detalhesAtendimento
    nomeAtendente: (NSString*) nomeAtendente
    dataAtendimento: (NSString*) dataAtendimento
    dataAgendamento: (NSString*) dataAgendamento
    dataHoraInicioAtendimento: (NSString*) dataHoraInicioAtendimento
    dataHoraFimAtendimento: (NSString*) dataHoraFimAtendimento
    flagFilaFraude: (NSNumber*) flagFilaFraude
    completionHandler: (void (^)(PierAtendimentoClienteResponse* output, NSError* error)) handler;


///
///
/// {{{campanha_resource_salvar}}}
/// {{{campanha_resource_salvar_notes}}}
///
/// @param campanhaPersist campanhaPersist
/// 
///
/// @return PierCampanhaResponse*
-(NSNumber*) salvarUsingPOST4WithCampanhaPersist: (PierCampanhaPersist*) campanhaPersist
    completionHandler: (void (^)(PierCampanhaResponse* output, NSError* error)) handler;


///
///
/// {{{configuracao_rotativo_resource_salvar}}}
/// {{{configuracao_rotativo_resource_salvar_notes}}}
///
/// @param configuracaoRotativoPersist configuracaoRotativoPersist
/// 
///
/// @return PierConfiguracaoRotativoDetalheResponse*
-(NSNumber*) salvarUsingPOST6WithConfiguracaoRotativoPersist: (PierConfiguracaoRotativoPersist*) configuracaoRotativoPersist
    completionHandler: (void (^)(PierConfiguracaoRotativoDetalheResponse* output, NSError* error)) handler;



@end
