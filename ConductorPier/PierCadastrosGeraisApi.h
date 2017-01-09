#import <Foundation/Foundation.h>
#import "PierEndereco.h"
#import "PierPessoa.h"
#import "PierTelefone.h"
#import "PierOrigemComercial.h"
#import "PierProduto.h"
#import "PierTipoEndereco.h"
#import "PierTipoTelefone.h"
#import "PierPageOrigensComerciais.h"
#import "PierListaProdutos.h"
#import "PierPageEnderecos.h"
#import "PierPagePessoas.h"
#import "PierPagePortador.h"
#import "PierPageTelefones.h"
#import "PierPageTiposEndereco.h"
#import "PierPageTipoTelefones.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierCadastrosGeraisApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierCadastrosGeraisApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierCadastrosGeraisApi*) sharedAPI;
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
/// @return PierEndereco*
-(NSNumber*) alterarUsingPUTWithId: (NSNumber*) _id
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
    completionHandler: (void (^)(PierEndereco* output, NSError* error)) handler;


///
///
/// Atualiza os dados de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite que seja alterado na base do emissor um registro de determinada Pessoa.
///
/// @param _id ID da Pessoa
/// @param nome Apresenta o &#39;Nome Completo da PF&#39; ou o &#39;Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)&#39;.
/// @param tipo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\&quot;PF\&quot;: Pessoa F\u00C3\u00ADsica), (\&quot;PJ\&quot;: Pessoa Jur\u00C3\u00ADdica).
/// @param cpf N\u00C3\u00BAmero do CPF, quando PF.
/// @param cnpj N\u00C3\u00BAmero do CNPJ, quando PJ.
/// @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ.
/// @param sexo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\&quot;M\&quot;: Masculino), (\&quot;F\&quot;: Feminino), (\&quot;O\&quot;: Outro), (\&quot;N\&quot;: N\u00C3\u00A3o Especificado).
/// 
///
/// @return PierPessoa*
-(NSNumber*) alterarUsingPUT1WithId: (NSNumber*) _id
    nome: (NSString*) nome
    tipo: (NSString*) tipo
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    dataNascimento: (NSDate*) dataNascimento
    sexo: (NSString*) sexo
    completionHandler: (void (^)(PierPessoa* output, NSError* error)) handler;


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
/// @return PierTelefone*
-(NSNumber*) alterarUsingPUT2WithId: (NSNumber*) _id
    idTipoTelefone: (NSNumber*) idTipoTelefone
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefone* output, NSError* error)) handler;


///
///
/// Opera\u00C3\u00A7\u00C3\u00A3o utilizada para consultar uma determinada Origem Comercial
/// Este m\u00C3\u00A9todo permite que sejam listados os registros de uma determinada Origem Comercial existente na base do emissor. Para isso, \u00C3\u00A9 preciso informar o seu respectivo c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param idOrigemComercial ID da Origem Comercial
/// 
///
/// @return PierOrigemComercial*
-(NSNumber*) consultarOrigemComercialUsingGETWithIdOrigemComercial: (NSNumber*) idOrigemComercial
    completionHandler: (void (^)(PierOrigemComercial* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Produto
/// Este m\u00C3\u00A9todo permite consultar um determinado Produto a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id)
/// 
///
/// @return PierProduto*
-(NSNumber*) consultarProdutoUsingGETWithIdProduto: (NSNumber*) idProduto
    completionHandler: (void (^)(PierProduto* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Endere\u00C3\u00A7o
/// Este m\u00C3\u00A9todo permite consultar um determinado Endere\u00C3\u00A7o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param idEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Endere\u00C3\u00A7o (id).
/// 
///
/// @return PierEndereco*
-(NSNumber*) consultarUsingGET2WithIdEndereco: (NSNumber*) idEndereco
    completionHandler: (void (^)(PierEndereco* output, NSError* error)) handler;


///
///
/// Apresenta os dados de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///
/// @param idPessoa ID da Pessoa
/// 
///
/// @return PierPessoa*
-(NSNumber*) consultarUsingGET3WithIdPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierPessoa* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Telefone
/// Este m\u00C3\u00A9todo permite consultar um determinado Telefone a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param idTelefone C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone (id).
/// 
///
/// @return PierTelefone*
-(NSNumber*) consultarUsingGET6WithIdTelefone: (NSNumber*) idTelefone
    completionHandler: (void (^)(PierTelefone* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Tipo de Endere\u00C3\u00A7o
/// Este m\u00C3\u00A9todo permite consultar um determinado Tipo de Endere\u00C3\u00A7o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param idTipoEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Endere\u00C3\u00A7o (id)
/// 
///
/// @return PierTipoEndereco*
-(NSNumber*) consultarUsingGET7WithIdTipoEndereco: (NSNumber*) idTipoEndereco
    completionHandler: (void (^)(PierTipoEndereco* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Tipo de Telefone
/// Este m\u00C3\u00A9todo permite consultar um determinado Tipo de Telefone a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param idTipoTelefone C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id)
/// 
///
/// @return PierTipoTelefone*
-(NSNumber*) consultarUsingGET8WithIdTipoTelefone: (NSNumber*) idTipoTelefone
    completionHandler: (void (^)(PierTipoTelefone* output, NSError* error)) handler;


///
///
/// Opera\u00C3\u00A7\u00C3\u00A3o utilizada para listar Origens Comerciais
/// Este m\u00C3\u00A9todo permite que sejam listadas as Origens Comerciais existentes na base do emissor.
///
/// @param _id Id da origem comercial
/// @param nome Nome da origem comercial
/// @param status Status da origem comercial
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierPageOrigensComerciais*
-(NSNumber*) listarOrigensComerciaisUsingGETWithId: (NSNumber*) _id
    nome: (NSString*) nome
    status: (NSNumber*) status
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageOrigensComerciais* output, NSError* error)) handler;


///
///
/// Lista os Produtos do Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Produtos existentes na base de dados do Emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id).
/// @param nome Descri\u00C3\u00A7\u00C3\u00A3o do Nome do Produto.
/// @param status Representa o Status do Produto, onde: (\&quot;0\&quot;: Inativo), (\&quot;1\&quot;: Ativo).
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierListaProdutos*
-(NSNumber*) listarProdutosUsingGETWithId: (NSNumber*) _id
    nome: (NSString*) nome
    status: (NSNumber*) status
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierListaProdutos* output, NSError* error)) handler;


///
///
/// Lista os Endere\u00C3\u00A7os cadastrados para o Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Endere\u00C3\u00A7os existentes na base de dados do Emissor.
///
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
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierPageEnderecos*
-(NSNumber*) listarUsingGET2WithId: (NSNumber*) _id
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
    dataInclusao: (NSDate*) dataInclusao
    dataUltimaAtualizacao: (NSDate*) dataUltimaAtualizacao
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageEnderecos* output, NSError* error)) handler;


///
///
/// Lista as Pessoas cadastradas no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id).
/// @param nome Apresenta o &#39;Nome Completo da PF&#39; ou o &#39;Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)&#39;.
/// @param tipo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\&quot;PF\&quot;: Pessoa F\u00C3\u00ADsica), (\&quot;PJ\&quot;: Pessoa Jur\u00C3\u00ADdica).
/// @param cpf N\u00C3\u00BAmero do CPF, quando PF.
/// @param cnpj N\u00C3\u00BAmero do CNPJ, quando PJ.
/// @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ.
/// @param sexo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\&quot;M\&quot;: Masculino), (\&quot;F\&quot;: Feminino), (\&quot;O\&quot;: Outro), (\&quot;N\&quot;: N\u00C3\u00A3o Especificado).
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierPagePessoas*
-(NSNumber*) listarUsingGET3WithId: (NSNumber*) _id
    nome: (NSString*) nome
    tipo: (NSString*) tipo
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    dataNascimento: (NSDate*) dataNascimento
    sexo: (NSString*) sexo
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPagePessoas* output, NSError* error)) handler;


///
///
/// Lista os Portadores existentes
/// Este m\u00C3\u00A9todo permite que sejam listados os portadores cadastrados na base do emissor.
///
/// @param idConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id).
/// @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id).
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id).
/// @param idParentesco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Parentesco (id)
/// @param tipoPortador Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: (&#39;T&#39;: Titular, &#39;A&#39;: Adicional).
/// @param nomeImpresso Apresenta o nome a ser impresso no cart\u00C3\u00A3o.
/// @param idImagem Apresenta o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da imagem do cart\u00C3\u00A3o.
/// @param idTipoCartao Apresenta o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do cart\u00C3\u00A3o (id), que ser\u00C3\u00A1 utilizado para gerar os cart\u00C3\u00B5es deste portador, vinculados a sua respectiva conta atrav\u00C3\u00A9s do campo idConta.
/// @param flagAtivo Quanto ativa, indica que o cadastro do Portador est\u00C3\u00A1 ativo, em emissores que realizam este tipo de gest\u00C3\u00A3o.
/// @param dataCadastroPortador Apresenta a data em que o Portador fora cadastrado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o.
/// @param dataCancelamentoPortador Apresenta a data em que o Portador fora cancelado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierPagePortador*
-(NSNumber*) listarUsingGET4WithIdConta: (NSNumber*) idConta
    idProduto: (NSNumber*) idProduto
    idPessoa: (NSNumber*) idPessoa
    idParentesco: (NSNumber*) idParentesco
    tipoPortador: (NSString*) tipoPortador
    nomeImpresso: (NSString*) nomeImpresso
    idImagem: (NSNumber*) idImagem
    idTipoCartao: (NSNumber*) idTipoCartao
    flagAtivo: (NSNumber*) flagAtivo
    dataCadastroPortador: (NSDate*) dataCadastroPortador
    dataCancelamentoPortador: (NSDate*) dataCancelamentoPortador
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPagePortador* output, NSError* error)) handler;


///
///
/// Lista os Telefones cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Telefones existentes na base de dados do Emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone (id).
/// @param idTipoTelefone C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id).
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id) a qual o telefone pertence.
/// @param ddd C\u00C3\u00B3digo DDD do telefone (id).
/// @param telefone N\u00C3\u00BAmero do telefone.
/// @param ramal N\u00C3\u00BAmero do ramal.
/// @param status Apresenta o Status do Telefone, onde: &#39;0&#39;: Inativo e &#39;1&#39;: Ativo
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierPageTelefones*
-(NSNumber*) listarUsingGET7WithId: (NSNumber*) _id
    idTipoTelefone: (NSNumber*) idTipoTelefone
    idPessoa: (NSNumber*) idPessoa
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    status: (NSNumber*) status
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTelefones* output, NSError* error)) handler;


///
///
/// Lista as op\u00C3\u00B5es de Tipos de Endere\u00C3\u00A7os do Emissor 
/// Este m\u00C3\u00A9todo permite que sejam listados os Tipos de Endere\u00C3\u00A7os existentes na base de dados do Emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Endere\u00C3\u00A7o (id)
/// @param nome Nome do Tipo do Endere\u00C3\u00A7o
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierPageTiposEndereco*
-(NSNumber*) listarUsingGET8WithId: (NSNumber*) _id
    nome: (NSString*) nome
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTiposEndereco* output, NSError* error)) handler;


///
///
/// Lista os Tipos de Telefones
/// Este m\u00C3\u00A9todo permite que sejam listados os Tipos de Telefones existentes na base de dados do Emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id).
/// @param nome Nome do Tipo do Telefone
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierPageTipoTelefones*
-(NSNumber*) listarUsingGET9WithId: (NSNumber*) _id
    nome: (NSString*) nome
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTipoTelefones* output, NSError* error)) handler;


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
/// @return PierEndereco*
-(NSNumber*) salvarUsingPOSTWithIdPessoa: (NSNumber*) idPessoa
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
    completionHandler: (void (^)(PierEndereco* output, NSError* error)) handler;


///
///
/// Realiza o cadastro de um nova Pessoa
/// Este m\u00C3\u00A9todo permite que seja cadastrado uma nova Pessoa na base de dados do Emissor.
///
/// @param nome Apresenta o &#39;Nome Completo da PF&#39; ou o &#39;Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)&#39;.
/// @param tipo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\&quot;PF\&quot;: Pessoa F\u00C3\u00ADsica), (\&quot;PJ\&quot;: Pessoa Jur\u00C3\u00ADdica).
/// @param cpf N\u00C3\u00BAmero do CPF, quando PF.
/// @param cnpj N\u00C3\u00BAmero do CNPJ, quando PJ.
/// @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ.
/// @param sexo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\&quot;M\&quot;: Masculino), (\&quot;F\&quot;: Feminino), (\&quot;O\&quot;: Outro), (\&quot;N\&quot;: N\u00C3\u00A3o Especificado).
/// 
///
/// @return PierPessoa*
-(NSNumber*) salvarUsingPOST1WithNome: (NSString*) nome
    tipo: (NSString*) tipo
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    dataNascimento: (NSDate*) dataNascimento
    sexo: (NSString*) sexo
    completionHandler: (void (^)(PierPessoa* output, NSError* error)) handler;


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
/// @return PierTelefone*
-(NSNumber*) salvarUsingPOST2WithIdTipoTelefone: (NSNumber*) idTipoTelefone
    idPessoa: (NSNumber*) idPessoa
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefone* output, NSError* error)) handler;



@end