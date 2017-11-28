#import <Foundation/Foundation.h>
#import "PierAdicionalDetalheResponse.h"
#import "PierAdicionalUpdate.h"
#import "PierPessoaResponse.h"
#import "PierTelefoneResponse.h"
#import "PierEnderecoResponse.h"
#import "PierPessoaDetalheResponse.h"
#import "PierAtribuirAssinaturaClientePersist.h"
#import "PierIntegracaoEmissorPersist.h"
#import "PierIntegracaoEmissorResponse.h"
#import "PierAdicionalPersist.h"
#import "PierPagePessoaResponse.h"
#import "PierAdicionalResponse.h"
#import "PierPageEnderecoResponse.h"
#import "PierPagePessoaDetalheResponse.h"
#import "PierPageTelefoneResponse.h"
#import "PierPessoaFisicaAprovadaPersist.h"
#import "PierPessoaFisicaAprovadaResponse.h"
#import "PierPessoaJuridicaAprovadaResponse.h"
#import "PierPessoaJuridicaAprovadaPersist.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierCadastroClienteApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierCadastroClienteApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierCadastroClienteApi*) sharedAPI;
///
///
/// Altera Adicional de uma Conta
/// Este m\u00C3\u00A9todo permite que seja alterado um portador Adicional de uma determinada Conta.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da pessoa (id).
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
/// Atualiza os dados de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite que seja alterado na base do emissor um registro de determinada Pessoa.
///
/// @param _id ID da Pessoa
/// @param nome Apresenta o &#39;Nome Completo da PF&#39; ou o &#39;Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)&#39;.
/// @param tipo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\&quot;PF\&quot;: Pessoa F\u00C3\u00ADsica), (\&quot;PJ\&quot;: Pessoa Jur\u00C3\u00ADdica).
/// @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. Essa data deve ser informada no formato aaaa-MM-dd.
/// @param cpf N\u00C3\u00BAmero do CPF, quando PF.
/// @param cnpj N\u00C3\u00BAmero do CNPJ, quando PJ.
/// @param sexo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\&quot;M\&quot;: Masculino), (\&quot;F\&quot;: Feminino), (\&quot;O\&quot;: Outro), (\&quot;N\&quot;: N\u00C3\u00A3o Especificado).
/// @param numeroIdentidade N\u00C3\u00BAmero da Identidade.
/// @param orgaoExpedidorIdentidade Org\u00C3\u00A3o expedidor do Identidade.
/// @param unidadeFederativaIdentidade Sigla da Unidade Federativa de onde foi expedido a Identidade
/// @param dataEmissaoIdentidade Data emiss\u00C3\u00A3o da Identidade.
/// 
///
/// @return PierPessoaResponse*
-(NSNumber*) alterarUsingPUT11WithId: (NSNumber*) _id
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
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o de um determinado Telefone
/// Este m\u00C3\u00A9todo permite que seja alterado um determinado Telefone na base de dados do Emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone (id).
/// @param idTipoTelefone C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id).
/// @param ddd C\u00C3\u00B3digo DDD do telefone (id).
/// @param telefone N\u00C3\u00BAmero do telefone.
/// @param ramal N\u00C3\u00BAmero do ramal.
/// 
///
/// @return PierTelefoneResponse*
-(NSNumber*) alterarUsingPUT12WithId: (NSNumber*) _id
    idTipoTelefone: (NSNumber*) idTipoTelefone
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler;


///
///
/// Atualiza os dados de um determinado Endere\u00C3\u00A7o
/// Este m\u00C3\u00A9todo permite que seja alterado na base do emissor um ou mais registros ligados a um determinado Endere\u00C3\u00A7o.
///
/// @param _id id
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o endere\u00C3\u00A7o pertence (id)
/// @param idTipoEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Tipo Endere\u00C3\u00A7o (id)
/// @param cep Apresenta o C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP) no formaro &#39;58800000&#39;
/// @param logradouro Apresenta o nome do Logradouro
/// @param numero Apresenta o n\u00C3\u00BAmero do endere\u00C3\u00A7o
/// @param complemento Apresenta descri\u00C3\u00A7oes complementares referente ao endere\u00C3\u00A7o
/// @param pontoReferencia Apresenta a descri\u00C3\u00A7\u00C3\u00A3o de ponto de refer\u00C3\u00AAncia do endere\u00C3\u00A7o
/// @param bairro Apresenta nome do bairro
/// @param cidade Apresenta nome da cidade
/// @param uf Apresenta sigla da Unidade Federativa
/// @param pais Apresenta nome do Pais
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
/// Atualiza os detalhes de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite que seja alterado na base do emissor os detalhes de uma determinada Pessoa.
///
/// @param _id ID da Pessoa
/// @param nomeMae Apresenta o nome da m\u00C3\u00A3e da pessoa fisica
/// @param idEstadoCivil Id Estado civil da pessoa fisica
/// @param idProfissao Profiss\u00C3\u00A3o da pessoa fisica
/// @param idNaturezaOcupacao Id Natureza Ocupa\u00C3\u00A7\u00C3\u00A3o da pessoa fisica
/// @param idNacionalidade Id Nacionalidade da pessoa fisica
/// @param numeroAgencia N\u00C3\u00BAmero da ag\u00C3\u00AAncia.
/// @param numeroContaCorrente N\u00C3\u00BAmero da conta corrente.
/// @param email Email da pessoa fisica
/// @param nomeEmpresa Nome que deve ser impresso no cart\u00C3\u00A3o
/// 
///
/// @return PierPessoaDetalheResponse*
-(NSNumber*) alterarUsingPUT9WithId: (NSNumber*) _id
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    idProfissao: (NSString*) idProfissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler;


///
///
/// Permite atribuir um documento para uma Conta
/// Este m\u00C3\u00A9todo permite que seja atribu\u00C3\u00ADdo a uma determinada Conta um documento que esteja armazenado no PIER Cloud, informando qual o tipo do documento e o seu respectivo id.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta
/// @param body C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Arquivo
/// 
///
/// @return NSObject*
-(NSNumber*) atribuirAssinaturaClienteUsingPOSTWithId: (NSNumber*) _id
    body: (PierAtribuirAssinaturaClientePersist*) body
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// Atualiza conta integrada com o emissor
/// Este recurso permite a atualiza\u00C3\u00A7\u00C3\u00A3o de uma conta integrada com o emissor.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param body Descri\u00C3\u00A7\u00C3\u00A3o do canal de entrada
/// 
///
/// @return PierIntegracaoEmissorResponse*
-(NSNumber*) atualizarUsingPOSTWithId: (NSNumber*) _id
    body: (PierIntegracaoEmissorPersist*) body
    completionHandler: (void (^)(PierIntegracaoEmissorResponse* output, NSError* error)) handler;


///
///
/// Realiza o cadastro de Adicionais para uma Conta
/// Este m\u00C3\u00A9todo permite que sejam cadastrados um portador Adicional para uma determinada Conta.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param persist persist
/// 
///
/// @return PierAdicionalDetalheResponse*
-(NSNumber*) cadastrarUsingPOSTWithId: (NSNumber*) _id
    persist: (PierAdicionalPersist*) persist
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler;


///
///
/// Consulta Adicional de uma Conta
/// Este m\u00C3\u00A9todo permite que seja consultado um portador Adicional de uma determinada Conta.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da pessoa (id).
/// 
///
/// @return PierAdicionalDetalheResponse*
-(NSNumber*) consultarUsingGETWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Endere\u00C3\u00A7o
/// Este m\u00C3\u00A9todo permite consultar um determinado Endere\u00C3\u00A7o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Endere\u00C3\u00A7o (id).
/// 
///
/// @return PierEnderecoResponse*
-(NSNumber*) consultarUsingGET13WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler;


///
///
/// Apresenta os detalhes de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite a consulta dos detalhes de uma Pessoa existentes na base de dados do Emissor.
///
/// @param _id ID da Pessoa
/// 
///
/// @return PierPessoaDetalheResponse*
-(NSNumber*) consultarUsingGET18WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///
/// @param _id ID da Pessoa
/// 
///
/// @return PierPessoaResponse*
-(NSNumber*) consultarUsingGET20WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Telefone
/// Este m\u00C3\u00A9todo permite consultar um determinado Telefone a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone (id).
/// 
///
/// @return PierTelefoneResponse*
-(NSNumber*) consultarUsingGET25WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler;


///
///
/// Inativa Adicional de uma Conta
/// Este m\u00C3\u00A9todo permite que seja inativado um portador Adicional de uma determinada Conta.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da pessoa (id).
/// 
///
/// @return NSString*
-(NSNumber*) inativarUsingPOSTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


///
///
/// Listar s\u00C3\u00B3cios de uma pessoa jur\u00C3\u00ADdica
/// Lista os s\u00C3\u00B3cios vinculados \u00C3\u00A0 uma Pessoa Jur\u00C3\u00ADdica cadastrada.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa Jur\u00C3\u00ADdica
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
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
/// Lista os Adicionais de uma Conta
/// Este m\u00C3\u00A9todo permite que sejam listados portadores Adicionais de uma determinada Conta.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierAdicionalResponse*
-(NSNumber*) listarUsingGETWithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierAdicionalResponse* output, NSError* error)) handler;


///
///
/// Lista os Endere\u00C3\u00A7os cadastrados para o Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Endere\u00C3\u00A7os existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Endere\u00C3\u00A7o (id).
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o endere\u00C3\u00A7o pertence (id)
/// @param idTipoEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Tipo Endere\u00C3\u00A7o (id)
/// @param cep Apresenta o C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP)
/// @param logradouro Apresenta o nome do Logradouro
/// @param numero Apresenta o n\u00C3\u00BAmero do endere\u00C3\u00A7o
/// @param complemento Apresenta descri\u00C3\u00A7oes complementares referente ao endere\u00C3\u00A7o
/// @param pontoReferencia Apresenta a descri\u00C3\u00A7\u00C3\u00A3o de ponto de refer\u00C3\u00AAncia do endere\u00C3\u00A7o
/// @param bairro Apresenta nome do bairro
/// @param cidade Apresenta nome da cidade
/// @param uf Apresenta sigla da Unidade Federativa
/// @param pais Apresenta nome do Pais
/// @param dataInclusao Apresenta a data em que fora cadastrado o Endere\u00C3\u00A7o
/// @param dataUltimaAtualizacao Data em que fora realizada a \u00C3\u00BAltima mudan\u00C3\u00A7a neste registro de endere\u00C3\u00A7o. Quando n\u00C3\u00A3o tiver ocorrido mudan\u00C3\u00A7a, conter\u00C3\u00A1 a mesma informa\u00C3\u00A7\u00C3\u00A3o que o campo dataInclusao
/// 
///
/// @return PierPageEnderecoResponse*
-(NSNumber*) listarUsingGET17WithSort: (NSArray* /* NSString */) sort
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
/// Lista os Detalhes das Pessoas cadastradas no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listadas od detalhes das Pessoas existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idPessoa C\u00C3\u00B3digo identificador da pessoa
/// @param nomeMae Apresenta o nome da m\u00C3\u00A3e da pessoa fisica
/// @param idEstadoCivil Id Estado civil da pessoa fisica
/// @param idProfissao Profiss\u00C3\u00A3o da pessoa fisica
/// @param idNaturezaOcupacao Id Natureza Ocupa\u00C3\u00A7\u00C3\u00A3o da pessoa fisica
/// @param idNacionalidade Id Nacionalidade da pessoa fisica
/// @param numeroAgencia N\u00C3\u00BAmero da ag\u00C3\u00AAncia.
/// @param numeroContaCorrente N\u00C3\u00BAmero da conta corrente.
/// @param email Email da pessoa fisica
/// @param nomeEmpresa Nome que deve ser impresso no cart\u00C3\u00A3o
/// 
///
/// @return PierPagePessoaDetalheResponse*
-(NSNumber*) listarUsingGET22WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idPessoa: (NSNumber*) idPessoa
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    idProfissao: (NSString*) idProfissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPagePessoaDetalheResponse* output, NSError* error)) handler;


///
///
/// Lista as Pessoas cadastradas no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id).
/// @param nome Apresenta o &#39;Nome Completo da PF&#39; ou o &#39;Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)&#39;.
/// @param tipo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\&quot;PF\&quot;: Pessoa F\u00C3\u00ADsica), (\&quot;PJ\&quot;: Pessoa Jur\u00C3\u00ADdica).
/// @param cpf N\u00C3\u00BAmero do CPF, quando PF.
/// @param cnpj N\u00C3\u00BAmero do CNPJ, quando PJ.
/// @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ.
/// @param sexo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\&quot;M\&quot;: Masculino), (\&quot;F\&quot;: Feminino), (\&quot;O\&quot;: Outro), (\&quot;N\&quot;: N\u00C3\u00A3o Especificado).
/// @param numeroIdentidade N\u00C3\u00BAmero da Identidade
/// @param orgaoExpedidorIdentidade Org\u00C3\u00A3o expedidor do RG.
/// @param unidadeFederativaIdentidade Sigla da Unidade Federativa de onde foi expedido a Identidade
/// @param dataEmissaoIdentidade Data emiss\u00C3\u00A3o da identidade no formato aaaa-MM-dd
/// 
///
/// @return PierPagePessoaResponse*
-(NSNumber*) listarUsingGET24WithSort: (NSArray* /* NSString */) sort
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
/// Lista os Telefones cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Telefones existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone (id).
/// @param idTipoTelefone C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id).
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id) a qual o telefone pertence.
/// @param ddd C\u00C3\u00B3digo DDD do telefone (id).
/// @param telefone N\u00C3\u00BAmero do telefone.
/// @param ramal N\u00C3\u00BAmero do ramal.
/// @param status Apresenta o Status do Telefone, onde: &#39;0&#39;: Inativo e &#39;1&#39;: Ativo
/// 
///
/// @return PierPageTelefoneResponse*
-(NSNumber*) listarUsingGET32WithSort: (NSArray* /* NSString */) sort
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
/// Cadastro de Conta e Pessoa Fisica
/// Permite realizar o cadastro de uma Conta para um cliente do tipo Pessoa F\u00C3\u00ADsica, recebendo nesta opera\u00C3\u00A7\u00C3\u00A3o todos os dados cadastrais que se fazem necess\u00C3\u00A1rios para isso. Uma vez criado, poder\u00C3\u00A1 ser acionado o m\u00C3\u00A9todo de 'Gera\u00C3\u00A7\u00C3\u00A3o de Cart\u00C3\u00A3o' para o cliente e seus adicionais.
///
/// @param pessoaPersist pessoaPersist
/// 
///
/// @return PierPessoaFisicaAprovadaResponse*
-(NSNumber*) salvarPessoaFisicaAprovadaUsingPOSTWithPessoaPersist: (PierPessoaFisicaAprovadaPersist*) pessoaPersist
    completionHandler: (void (^)(PierPessoaFisicaAprovadaResponse* output, NSError* error)) handler;


///
///
/// Cadastro de Conta e Pessoa Jur\u00C3\u00ADdica
/// Cadastro de Conta e Pessoa Jur\u00C3\u00ADdica Permite realizar o cadastro de uma Conta para um cliente do tipo Pessoa Jur\u00C3\u00ADdica, recebendo nesta opera\u00C3\u00A7\u00C3\u00A3o todos os dados cadastrais que se fazem necess\u00C3\u00A1rios para isso, inclu\u00C3\u00ADndo o registro de cada um dos s\u00C3\u00B3cios. Uma vez criado, poder\u00C3\u00A1 ser acionado o m\u00C3\u00A9todo de 'Gera\u00C3\u00A7\u00C3\u00A3o de Cart\u00C3\u00A3o' para o cliente e cada um dos s\u00C3\u00B3cios vinculados.
///
/// @param pessoaPersist pessoaPersist
/// 
///
/// @return PierPessoaJuridicaAprovadaResponse*
-(NSNumber*) salvarPessoaJuridicaAprovadaUsingPOSTWithPessoaPersist: (PierPessoaJuridicaAprovadaPersist*) pessoaPersist
    completionHandler: (void (^)(PierPessoaJuridicaAprovadaResponse* output, NSError* error)) handler;


///
///
/// Realiza o cadastro de um novo Endere\u00C3\u00A7o
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo Endere\u00C3\u00A7o na base de dados do Emissor.
///
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o endere\u00C3\u00A7o pertence (id)
/// @param idTipoEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Tipo Endere\u00C3\u00A7o (id)
/// @param cep Apresenta o C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP) no formaro &#39;58800000&#39;
/// @param logradouro Apresenta o nome do Logradouro
/// @param numero Apresenta o n\u00C3\u00BAmero do endere\u00C3\u00A7o
/// @param complemento Apresenta descri\u00C3\u00A7oes complementares referente ao endere\u00C3\u00A7o
/// @param pontoReferencia Apresenta a descri\u00C3\u00A7\u00C3\u00A3o de ponto de refer\u00C3\u00AAncia do endere\u00C3\u00A7o
/// @param bairro Apresenta nome do bairro
/// @param cidade Apresenta nome da cidade
/// @param uf Apresenta sigla da Unidade Federativa
/// @param pais Apresenta nome do Pais
/// 
///
/// @return PierEnderecoResponse*
-(NSNumber*) salvarUsingPOST11WithIdPessoa: (NSNumber*) idPessoa
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
/// Inclui a conta como registro para integra\u00C3\u00A7\u00C3\u00A3o
/// Este recurso permite incluir uma conta como registro para integra\u00C3\u00A7\u00C3\u00A3o.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param body Descri\u00C3\u00A7\u00C3\u00A3o do canal de entrada
/// 
///
/// @return PierIntegracaoEmissorResponse*
-(NSNumber*) salvarUsingPOST13WithId: (NSNumber*) _id
    body: (PierIntegracaoEmissorPersist*) body
    completionHandler: (void (^)(PierIntegracaoEmissorResponse* output, NSError* error)) handler;


///
///
/// Salvar os detalhes de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite que seja incluido na base do emissor os detalhes de uma determinada Pessoa.
///
/// @param idPessoa Apresenta o c\u00C3\u00B3digo identificador da pessoa
/// @param nomeMae Apresenta o nome da m\u00C3\u00A3e da pessoa fisica
/// @param idEstadoCivil Id Estado civil da pessoa fisica
/// @param idProfissao Profiss\u00C3\u00A3o da pessoa fisica
/// @param idNaturezaOcupacao Id Natureza Ocupa\u00C3\u00A7\u00C3\u00A3o da pessoa fisica
/// @param idNacionalidade Id Nacionalidade da pessoa fisica
/// @param numeroAgencia N\u00C3\u00BAmero da ag\u00C3\u00AAncia.
/// @param numeroContaCorrente N\u00C3\u00BAmero da conta corrente.
/// @param email Email da pessoa fisica
/// @param nomeEmpresa Nome que deve ser impresso no cart\u00C3\u00A3o
/// 
///
/// @return PierPessoaDetalheResponse*
-(NSNumber*) salvarUsingPOST16WithIdPessoa: (NSNumber*) idPessoa
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    idProfissao: (NSString*) idProfissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler;


///
///
/// Realiza o cadastro de um nova Pessoa
/// Este m\u00C3\u00A9todo permite que seja cadastrado uma nova Pessoa na base de dados do Emissor.
///
/// @param nome Apresenta o &#39;Nome Completo da PF&#39; ou o &#39;Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)&#39;.
/// @param tipo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\&quot;PF\&quot;: Pessoa F\u00C3\u00ADsica), (\&quot;PJ\&quot;: Pessoa Jur\u00C3\u00ADdica).
/// @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. Essa data deve ser informada no formato aaaa-MM-dd.
/// @param cpf N\u00C3\u00BAmero do CPF, quando PF.
/// @param cnpj N\u00C3\u00BAmero do CNPJ, quando PJ.
/// @param sexo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\&quot;M\&quot;: Masculino), (\&quot;F\&quot;: Feminino), (\&quot;O\&quot;: Outro), (\&quot;N\&quot;: N\u00C3\u00A3o Especificado).
/// @param numeroIdentidade N\u00C3\u00BAmero da Identidade.
/// @param orgaoExpedidorIdentidade Org\u00C3\u00A3o expedidor do Identidade.
/// @param unidadeFederativaIdentidade Sigla da Unidade Federativa de onde foi expedido a Identidade
/// @param dataEmissaoIdentidade Data emiss\u00C3\u00A3o da Identidade.
/// 
///
/// @return PierPessoaResponse*
-(NSNumber*) salvarUsingPOST17WithNome: (NSString*) nome
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
/// Realiza o cadastro de um novo Telefone
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo Telefone na base de dados do Emissor.
///
/// @param idTipoTelefone C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id).
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id) a qual o telefone pertence.
/// @param ddd C\u00C3\u00B3digo DDD do telefone (id).
/// @param telefone N\u00C3\u00BAmero do telefone.
/// @param ramal N\u00C3\u00BAmero do ramal.
/// 
///
/// @return PierTelefoneResponse*
-(NSNumber*) salvarUsingPOST19WithIdTipoTelefone: (NSNumber*) idTipoTelefone
    idPessoa: (NSNumber*) idPessoa
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler;



@end
