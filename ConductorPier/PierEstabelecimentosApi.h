#import <Foundation/Foundation.h>
#import "PierTerminalResponse.h"
#import "PierEstabelecimentoResponse.h"
#import "PierPageEstabelecimentoResponse.h"
#import "PierPageTerminalResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierEstabelecimentosApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierEstabelecimentosApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierEstabelecimentosApi*) sharedAPI;
///
///
/// Apresenta os dados de um determinado Terminal
/// Este m\u00C3\u00A9todo permite consultar um determinado Terminal a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id).
/// 
///
/// @return PierTerminalResponse*
-(NSNumber*) consultarUsingGET16WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler;


///
///
/// Consultar estabelecimento por id
/// Consulta os detalhes de um determinado estabelecimento
///
/// @param _id Id
/// 
///
/// @return PierEstabelecimentoResponse*
-(NSNumber*) consultarUsingGET6WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// Lista Estabelecimentos
/// Lista todas os Estabelecimentos
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id).
/// @param numeroReceitaFederal Apresenta o n\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento na Receita Federal.
/// @param nome Nome do Estabelecimento.
/// @param descricao Raz\u00C3\u00A3o Social do Estabelecimento.
/// @param nomeFantasia T\u00C3\u00ADtulo Comercial do Estabelecimento.
/// @param cep C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP).
/// @param nomeLogradouro Nome do Logradouro.
/// @param numeroEndereco N\u00C3\u00BAmero do endere\u00C3\u00A7o.
/// @param complemento Descri\u00C3\u00A7\u00C3\u00B5es complementares referente ao endere\u00C3\u00A7o.
/// @param bairro Nome do bairro do endere\u00C3\u00A7o.
/// @param cidade Nome da cidade do endere\u00C3\u00A7o.
/// @param uf Sigla de identifica\u00C3\u00A7\u00C3\u00A3o da Unidade Federativa do endere\u00C3\u00A7o.
/// @param pais Nome do pa\u00C3\u00ADs.
/// @param dataCadastramento Data de Cadastro do Estabelecimento, no formato yyyy-MM-dd.
/// @param contato Nome da pessoa para contato com o Estabelecimento.
/// @param email E-mail da pessoa para contato com o Estabelecimento.
/// @param flagArquivoSecrFazenda Indica se o estabelecimento ser\u00C3\u00A1 inclu\u00C3\u00ADdo no arquivo de registro para a Secretaria da Fazenda Estadual.
/// @param flagCartaoDigitado Indica se o estabelecimento poder\u00C3\u00A1 originar transa\u00C3\u00A7\u00C3\u00B5es sem a leitura da tarja ou do chip do cart\u00C3\u00A3o.
/// @param inativo Indica se o estabelecimento est\u00C3\u00A1 inativo.
/// 
///
/// @return PierPageEstabelecimentoResponse*
-(NSNumber*) listarUsingGET10WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    numeroReceitaFederal: (NSNumber*) numeroReceitaFederal
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
    completionHandler: (void (^)(PierPageEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// Lista os Terminais cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os terminais existentes na base de dados do Emissor.
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id).
/// @param terminal C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do terminal.
/// @param numeroEstabelecimento N\u00C3\u00BAmero do estabelecimento a qual o terminal pertence.
/// @param idEstabelecimento N\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento a qual o terminal pertence.
/// 
///
/// @return PierPageTerminalResponse*
-(NSNumber*) listarUsingGET23WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    terminal: (NSString*) terminal
    numeroEstabelecimento: (NSNumber*) numeroEstabelecimento
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTerminalResponse* output, NSError* error)) handler;



@end
