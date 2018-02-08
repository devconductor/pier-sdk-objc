#import <Foundation/Foundation.h>
#import "PierOrigemComercialResponse.h"
#import "PierOrigemComercialUpdate.h"
#import "PierMaquinetaResponse.h"
#import "PierMaquinetaUpdate.h"
#import "PierOperacaoCredorUpdate.h"
#import "PierOperacaoCredorResponse.h"
#import "PierTelefoneEstabelecimentoResponse.h"
#import "PierTerminalResponse.h"
#import "PierTerminalUpdate.h"
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
#import "PierPageCampoCodificadoDescricaoResponse.h"
#import "PierPageTipoTerminalResponse.h"
#import "PierPageEstabelecimentoResponse.h"
#import "PierPageGrupoEconomicoResponse.h"
#import "PierPageMaquinetaResponse.h"
#import "PierPageMoedaResponse.h"
#import "PierPageOperacaoCredorResponse.h"
#import "PierPageTelefoneEstabelecimentoResponse.h"
#import "PierPageTerminalResponse.h"
#import "PierPageVinculoEstabelecimentoAdquirenteResponse.h"
#import "PierPageVinculoOperacaoResponse.h"
#import "PierMaquinetaPersist.h"
#import "PierOperacaoCredorPersist.h"
#import "PierTerminalPersist.h"
#import "PierVinculoEstabelecimentoAdquirentePersist.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierEstabelecimentoApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierEstabelecimentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierEstabelecimentoApi*) sharedAPI;
///
///
/// Alterar Origem Comercial
/// Altera uma origem comercial.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da origem comercial
/// @param origemComercialUpdate origemComercialUpdate
/// 
///
/// @return PierOrigemComercialResponse*
-(NSNumber*) alterarOrigemComercialUsingPUTWithId: (NSNumber*) _id
    origemComercialUpdate: (PierOrigemComercialUpdate*) origemComercialUpdate
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler;


///
///
/// Altera uma Maquineta
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o das maquinetas dos estabelecimentos.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Maquineta (id).
/// @param maquinetaUpdate maquinetaUpdate
/// 
///
/// @return PierMaquinetaResponse*
-(NSNumber*) alterarUsingPUT10WithId: (NSNumber*) _id
    maquinetaUpdate: (PierMaquinetaUpdate*) maquinetaUpdate
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler;


///
///
/// Altera uma Regra Opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o de uma regra opera\u00C3\u00A7\u00C3\u00A3o.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Regra Opera\u00C3\u00A7\u00C3\u00A3o (id).
/// @param operacaoCredorUpdate operacaoCredorUpdate
/// 
///
/// @return PierOperacaoCredorResponse*
-(NSNumber*) alterarUsingPUT11WithId: (NSNumber*) _id
    operacaoCredorUpdate: (PierOperacaoCredorUpdate*) operacaoCredorUpdate
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler;


///
///
/// Altera um Telefone do estabelecimento
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o dos telefones dos estabelecimentos.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone Estabelecimento (id).
/// @param ddd C\u00C3\u00B3digo DDD do telefone (id).
/// @param telefone N\u00C3\u00BAmero do telefone.
/// @param ramal N\u00C3\u00BAmero do ramal.
/// 
///
/// @return PierTelefoneEstabelecimentoResponse*
-(NSNumber*) alterarUsingPUT15WithId: (NSNumber*) _id
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// Altera um Terminal
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o dos Terminais.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do terminal (id).
/// @param terminalUpdate terminalUpdate
/// 
///
/// @return PierTerminalResponse*
-(NSNumber*) alterarUsingPUT17WithId: (NSNumber*) _id
    terminalUpdate: (PierTerminalUpdate*) terminalUpdate
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler;


///
///
/// Alterar um estabelecimento
/// Altera um estabelecimento
///
/// @param _id Id
/// @param update update
/// 
///
/// @return PierEstabelecimentoResponse*
-(NSNumber*) alterarUsingPUT6WithId: (NSNumber*) _id
    update: (PierEstabelecimentoUpdate*) update
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// Alterar Grupo Econ\u00C3\u00B4mico
/// Altera um grupo econ\u00C3\u00B4mico.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do grupo econ\u00C3\u00B4mico
/// @param grupoEconomicoDTO grupoEconomicoDTO
/// 
///
/// @return PierGrupoEconomicoResponse*
-(NSNumber*) alterarUsingPUT8WithId: (NSNumber*) _id
    grupoEconomicoDTO: (PierGrupoEconomicoDTO*) grupoEconomicoDTO
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler;


///
///
/// Cadastrar Origem Comercial
/// Cadastra uma origem comercial.
///
/// @param origemComercialPersist origemComercialPersist
/// 
///
/// @return PierOrigemComercialResponse*
-(NSNumber*) cadastrarOrigemComercialUsingPOSTWithOrigemComercialPersist: (PierOrigemComercialPersist*) origemComercialPersist
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler;


///
///
/// Cadastrar um estabelecimento
/// Cadastra um novo estabelecimento
///
/// @param persist persist
/// 
///
/// @return PierEstabelecimentoResponse*
-(NSNumber*) cadastrarUsingPOST2WithPersist: (PierEstabelecimentoPersist*) persist
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// Cadastrar Grupo Econ\u00C3\u00B4mico
/// Cadastra um grupo econ\u00C3\u00B4mico.
///
/// @param grupoEconomicoDTO GrupoEconomicoDTO
/// 
///
/// @return PierGrupoEconomicoResponse*
-(NSNumber*) cadastrarUsingPOST3WithGrupoEconomicoDTO: (PierGrupoEconomicoDTO*) grupoEconomicoDTO
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler;


///
///
/// Apresenta dados de um determinado tipo de opera\u00C3\u00A7\u00C3\u00A3o
/// Este recurso permite consultar dados de um determinado tipo opera\u00C3\u00A7\u00C3\u00A3o a partir do idoperacao
///
/// @param _id C\u00C3\u00B3digo de processamento da opera\u00C3\u00A7\u00C3\u00A3o (idOperacao).
/// 
///
/// @return PierDetalheOperacaoResponse*
-(NSNumber*) consultaOperacaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierDetalheOperacaoResponse* output, NSError* error)) handler;


///
///
/// Consultar Origem Comercial
/// Consulta uma origem comercial atrav\u00C3\u00A9s do seu identificador.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da origem comercial
/// 
///
/// @return PierOrigemComercialResponse*
-(NSNumber*) consultarOrigemComercialUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler;


///
///
/// Consultar estabelecimento por id
/// Consulta os detalhes de um determinado estabelecimento
///
/// @param _id Id
/// 
///
/// @return PierEstabelecimentoResponse*
-(NSNumber*) consultarUsingGET16WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// Consultar grupo econ\u00C3\u00B4mico
/// Consulta um grupo econ\u00C3\u00B4mico atrav\u00C3\u00A9s do seu identificador.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do grupo econ\u00C3\u00B4mico
/// 
///
/// @return PierGrupoEconomicoResponse*
-(NSNumber*) consultarUsingGET18WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de uma determinada maquineta
/// Este m\u00C3\u00A9todo permite consultar uma determinada maquineta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Maquineta (id).
/// 
///
/// @return PierMaquinetaResponse*
-(NSNumber*) consultarUsingGET20WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de uma determinada Regra Opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar uma determinada regra opera\u00C3\u00A7\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Regra Opera\u00C3\u00A7\u00C3\u00A3o (id).
/// 
///
/// @return PierOperacaoCredorResponse*
-(NSNumber*) consultarUsingGET21WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado telefone de um estabelecimento
/// Este m\u00C3\u00A9todo permite consultar um determinado telefone de um estabelecimento a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone Estabelecimento (id).
/// 
///
/// @return PierTelefoneEstabelecimentoResponse*
-(NSNumber*) consultarUsingGET29WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Terminal
/// Este m\u00C3\u00A9todo permite consultar um determinado Terminal a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id).
/// 
///
/// @return PierTerminalResponse*
-(NSNumber*) consultarUsingGET31WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado V\u00C3\u00ADnculo
/// Este m\u00C3\u00A9todo permite consultar um determinado V\u00C3\u00ADnculo a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do V\u00C3\u008Dnculo (id).
/// 
///
/// @return PierVinculoEstabelecimentoAdquirenteResponse*
-(NSNumber*) consultarUsingGET43WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler;


///
///
/// Desabilitar um V\u00C3\u00ADnculo
/// Este m\u00C3\u00A9todo realiza a desativa\u00C3\u00A7\u00C3\u00A3o de um v\u00C3\u00ADnculo.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do V\u00C3\u00ADnculo (id).
/// 
///
/// @return NSObject*
-(NSNumber*) desabilitarVinculoUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// Desabilitar um v\u00C3\u00ADnculo opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite desabilitar um v\u00C3\u00ADnculo.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id).
/// @param vinculoOperacaoPersist vinculoOperacaoPersist
/// 
///
/// @return NSObject*
-(NSNumber*) desabilitarVinculoUsingPOST1WithId: (NSNumber*) _id
    vinculoOperacaoPersist: (PierVinculoOperacaoPersist*) vinculoOperacaoPersist
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// Habilitar um V\u00C3\u00ADnculo
/// Este m\u00C3\u00A9todo realiza a ativa\u00C3\u00A7\u00C3\u00A3o de um v\u00C3\u00ADnculo.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do V\u00C3\u00ADnculo (id).
/// 
///
/// @return NSObject*
-(NSNumber*) habilitarVinculoUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// Habilitar um v\u00C3\u00ADnculo opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite habilitar um v\u00C3\u00ADnculo.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id).
/// @param vinculoOperacaoPersist vinculoOperacaoPersist
/// 
///
/// @return NSObject*
-(NSNumber*) habilitarVinculoUsingPOST1WithId: (NSNumber*) _id
    vinculoOperacaoPersist: (PierVinculoOperacaoPersist*) vinculoOperacaoPersist
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// Apresenta dados de opera\u00C3\u00A7\u00C3\u00B5es em uma lista
/// Este recurso permite listar as opera\u00C3\u00A7\u00C3\u00A3o
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idOperacao C\u00C3\u00B3digo que identifica a opera\u00C3\u00A7\u00C3\u00A3o
/// @param codigoProcessamento C\u00C3\u00B3digo de processamento usado em transa\u00C3\u00A7\u00C3\u00B5es com o autorizador
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
/// Lista os MCCs
/// Este m\u00C3\u00A9todo permite que sejam listados os MCCs existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageMCCResponse*
-(NSNumber*) listarMCCUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageMCCResponse* output, NSError* error)) handler;


///
///
/// Listar Origens Comerciais
/// Lista origens comerciais cadastradas.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id Id da origem comercial
/// @param nome Nome da origem comercial
/// @param status Indica o status da origem comercial
/// @param idEstabelecimento Identificador do estabelecimento
/// @param idProduto Identificador do produto
/// @param descricao Descri\u00C3\u00A7\u00C3\u00A3o da origem comercial
/// @param idTipoOrigemComercial Identificador do tipo de origem comercial
/// @param idGrupoOrigemComercial Identificador do grupo de origem comercial
/// @param flagPreAprovado Indica se permite pr\u00C3\u00A9 aprova\u00C3\u00A7\u00C3\u00A3o
/// @param flagAprovacaoImediata Indica se permite aprova\u00C3\u00A7\u00C3\u00A3o imediata
/// @param nomeFantasiaPlastico Nome fantasia impresso no pl\u00C3\u00A1stico
/// @param flagCartaoProvisorio Indica se permite cart\u00C3\u00A3o provis\u00C3\u00B3rio
/// @param flagCartaoDefinitivo Indica se permite cart\u00C3\u00A3o definitivo
/// @param usuario Usu\u00C3\u00A1rio para autentica\u00C3\u00A7\u00C3\u00A3o
/// @param senha Senha para autentica\u00C3\u00A7\u00C3\u00A3o
/// @param flagOrigemExterna Indica se \u00C3\u00A9 origem externa
/// @param flagModificado Indica se h\u00C3\u00A1 modifica\u00C3\u00A7\u00C3\u00A3o
/// @param flagEnviaFaturaUsuario Indica se envia fatura
/// @param flagCreditoFaturamento Indica se permite cr\u00C3\u00A9dito de faturamento
/// @param flagConcedeLimiteProvisorio Indica se concede limite provis\u00C3\u00B3rio
/// @param flagDigitalizarDoc Indica se digitaliza documento
/// @param flagEmbossingLoja Indica se realiza embossing em loja
/// @param flagConsultaPrevia Indica se realiza consulta pr\u00C3\u00A9via
/// @param tipoPessoa Tipo de pessoa
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
/// Lista os Tipos de adquirentes
/// Este m\u00C3\u00A9todo permite que sejam listados os tipos de adquirentes.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageEntidadeResponse*
-(NSNumber*) listarTiposAdquirentesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageEntidadeResponse* output, NSError* error)) handler;


///
///
/// Lista os Tipos de  Maquinetas
/// Este m\u00C3\u00A9todo permite que sejam listadas os Tipos de maquinetas existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageCampoCodificadoDescricaoResponse*
-(NSNumber*) listarTiposMaquinetasUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler;


///
///
/// Lista os Tipos Terminais
/// Este m\u00C3\u00A9todo permite que sejam listados os tipos de terminais existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageTipoTerminalResponse*
-(NSNumber*) listarTiposTerminaisUsingGET1WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTipoTerminalResponse* output, NSError* error)) handler;


///
///
/// Lista Estabelecimentos
/// Lista todas os Estabelecimentos
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id).
/// @param idCredor Apresenta o n\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do Credor.
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
/// @param idPais Identificador de Pa\u00C3\u00ADs.
/// @param mcc C\u00C3\u00B3digo de Categoria de Mercado
/// @param idTipoEstabelecimento C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento.
/// @param idMoeda C\u00C3\u00B3digo identificador da moeda.
/// @param tipoPagamento Tipo do regime de pagamento do estabelecimento.
/// @param numeroEstabelecimento N\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento na Conductor.
/// @param cep2 C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP).
/// @param nomeLogradouro2 Nome do Logradouro.
/// @param numeroEndereco2 N\u00C3\u00BAmero do endere\u00C3\u00A7o.
/// @param complemento2 Descri\u00C3\u00A7\u00C3\u00B5es complementares referente ao endere\u00C3\u00A7o.
/// @param bairro2 Nome do bairro do endere\u00C3\u00A7o.
/// @param cidade2 Nome da cidade do endere\u00C3\u00A7o.
/// @param uf2 Sigla de identifica\u00C3\u00A7\u00C3\u00A3o da Unidade Federativa do endere\u00C3\u00A7o.
/// @param flagMatriz Indica se \u00C3\u00A9 matriz ou filial.
/// 
///
/// @return PierPageEstabelecimentoResponse*
-(NSNumber*) listarUsingGET21WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    idCredor: (NSNumber*) idCredor
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
/// Listar grupos econ\u00C3\u00B4micos
/// Lista grupos econ\u00C3\u00B4micos cadastrados. 
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param razaoSocial Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica
/// @param nomeCredor Nome do credor
/// @param numeroReceitaFederal N\u00C3\u00BAmero da Receita Federal
/// @param inscricaoEstadual N\u00C3\u00BAmero da inscri\u00C3\u00A7\u00C3\u00A3o estadual
/// @param contato Nome da pessoa para entrar em contato
/// @param banco C\u00C3\u00B3digo do banco
/// @param agencia Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica
/// @param digitoAgencia D\u00C3\u00ADgito Verificador da ag\u00C3\u00AAncia
/// @param contaCorrente C\u00C3\u00B3digo da Conta Corrente
/// @param digitoContaCorrente D\u00C3\u00ADgito Verificador da Conta Corrente
/// @param periodicidade Periodicidade do pagamento
/// @param pagamentoSemanal Dia para pagamento semanal
/// @param pagamentoMensal Dia da data para o pagamento mensal
/// @param pagamentoDecendialPrimeiro Dia da data para o primeiro pagamento decendial
/// @param pagamentoDecendialSegundo Dia da data para o segundo pagamento decendial
/// @param pagamentoDecendialTerceiro Dia da data para o terceiro pagamento decendial
/// @param pagamentoQuinzenalPrimeiro Dia da data para o primeiro pagamento quinzenal
/// @param pagamentoQuinzenalSegundo Dia da data para o segundo pagamento quinzenal
/// @param percentualRAV Valor percentual do RAV do credor
/// @param recebeRAV Indica se o credor recebe RAV e o tipo
/// @param percentualMultiplica Percentual Multiplica
/// @param taxaAdm Taxa Administrativa
/// @param taxaBanco Taxa do Banco
/// @param limiteRAV Valor limite do RAV
/// @param idCredorRAV C\u00C3\u00B3digo identificador do credor RAV
/// 
///
/// @return PierPageGrupoEconomicoResponse*
-(NSNumber*) listarUsingGET23WithSort: (NSArray* /* NSString */) sort
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
/// Lista as Maquinetas
/// Este m\u00C3\u00A9todo permite que sejam listadas as maquinetas existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Estabelecimento (id).
/// 
///
/// @return PierPageMaquinetaResponse*
-(NSNumber*) listarUsingGET25WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageMaquinetaResponse* output, NSError* error)) handler;


///
///
/// Lista os tipos de moedas do emissor 
/// Este recurso permite que sejam listados os tipos de moedas existentes na base de dados do emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param codigoMoeda C\u00C3\u00B3digo identificador do tipo de moeda.
/// @param simbolo S\u00C3\u00ADmbolo da Moeda.
/// @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do tipo da moeda.
/// 
///
/// @return PierPageMoedaResponse*
-(NSNumber*) listarUsingGET26WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    codigoMoeda: (NSString*) codigoMoeda
    simbolo: (NSString*) simbolo
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageMoedaResponse* output, NSError* error)) handler;


///
///
/// Lista as Regras Opera\u00C3\u00A7\u00C3\u00B5es
/// Este m\u00C3\u00A9todo permite que sejam listados as Regras opera\u00C3\u00A7\u00C3\u00B5es existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idOperacao Apresenta o id da Opera\u00C3\u00A7\u00C3\u00A3o.
/// @param idCredor Apresenta o id do Credor.
/// @param idProduto Apresenta o id do produto que vai ser alterado.
/// 
///
/// @return PierPageOperacaoCredorResponse*
-(NSNumber*) listarUsingGET27WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idOperacao: (NSNumber*) idOperacao
    idCredor: (NSNumber*) idCredor
    idProduto: (NSNumber*) idProduto
    completionHandler: (void (^)(PierPageOperacaoCredorResponse* output, NSError* error)) handler;


///
///
/// Lista os Telefones Estabelecimentos
/// Este m\u00C3\u00A9todo permite que sejam listados os telefones dos estabelecimentos existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Estabelecimento (id).
/// 
///
/// @return PierPageTelefoneEstabelecimentoResponse*
-(NSNumber*) listarUsingGET38WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTelefoneEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// Lista os Terminais cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os terminais existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id).
/// @param terminal C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do terminal.
/// @param numeroEstabelecimento N\u00C3\u00BAmero do estabelecimento a qual o terminal pertence.
/// @param idEstabelecimento N\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento a qual o terminal pertence.
/// 
///
/// @return PierPageTerminalResponse*
-(NSNumber*) listarUsingGET40WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    terminal: (NSString*) terminal
    numeroEstabelecimento: (NSNumber*) numeroEstabelecimento
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTerminalResponse* output, NSError* error)) handler;


///
///
/// Lista os V\u00C3\u00ADnculos dos estabelecimento com os adquirentes
/// Este m\u00C3\u00A9todo permite que sejam listados os V\u00C3\u00ADnculos dos estabelecimento com os adquirentes.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idAdquirente C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do adquirente (id).
/// @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento.
/// @param codigoEstabelecimentoAdquirente C\u00C3\u00B3digo do v\u00C3\u00ADnculo entre o estabelecimento e o adquirente.
/// 
///
/// @return PierPageVinculoEstabelecimentoAdquirenteResponse*
-(NSNumber*) listarUsingGET51WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idAdquirente: (NSNumber*) idAdquirente
    idEstabelecimento: (NSNumber*) idEstabelecimento
    codigoEstabelecimentoAdquirente: (NSString*) codigoEstabelecimentoAdquirente
    completionHandler: (void (^)(PierPageVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler;


///
///
/// Lista os v\u00C3\u00ADnculos cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os v\u00C3\u00ADnculos opera\u00C3\u00A7\u00C3\u00B5es existentes na base de dados do Emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id).
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id).
/// @param idOperacao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Opera\u00C3\u00A7\u00C3\u00A3o (id).
/// @param codigoMCC C\u00C3\u00B3digo MCC.
/// 
///
/// @return PierPageVinculoOperacaoResponse*
-(NSNumber*) listarUsingGET52WithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idProduto: (NSNumber*) idProduto
    idOperacao: (NSNumber*) idOperacao
    codigoMCC: (NSNumber*) codigoMCC
    completionHandler: (void (^)(PierPageVinculoOperacaoResponse* output, NSError* error)) handler;


///
///
/// Realiza o cadastro de uma nova maquineta para um estabelecimento 
/// Este m\u00C3\u00A9todo permite que seja cadastrada uma nova maquineta para um estabelecimento.
///
/// @param maquinetaPersist maquinetaPersist
/// 
///
/// @return PierMaquinetaResponse*
-(NSNumber*) salvarUsingPOST16WithMaquinetaPersist: (PierMaquinetaPersist*) maquinetaPersist
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler;


///
///
/// Realiza o cadastro de uma nova Regra Opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que seja cadastrada uma nova Regra Opera\u00C3\u00A7\u00C3\u00A3o.
///
/// @param oprecaoCredorPersist oprecaoCredorPersist
/// 
///
/// @return PierOperacaoCredorResponse*
-(NSNumber*) salvarUsingPOST17WithOprecaoCredorPersist: (PierOperacaoCredorPersist*) oprecaoCredorPersist
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler;


///
///
/// Realiza o cadastro de um novo telefone para um estabelecimento 
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo telefone para um estabelecimento.
///
/// @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento (id).
/// @param ddd C\u00C3\u00B3digo DDD do telefone (id).
/// @param telefone N\u00C3\u00BAmero do telefone.
/// @param ramal N\u00C3\u00BAmero do ramal.
/// 
///
/// @return PierTelefoneEstabelecimentoResponse*
-(NSNumber*) salvarUsingPOST22WithIdEstabelecimento: (NSNumber*) idEstabelecimento
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler;


///
///
/// Realiza o cadastro de um novo Terminal
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo Terminal.
///
/// @param terminalPersist terminalPersist
/// 
///
/// @return PierTerminalResponse*
-(NSNumber*) salvarUsingPOST24WithTerminalPersist: (PierTerminalPersist*) terminalPersist
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler;


///
///
/// Realiza o cadastro de um novo VinculoEstabelecimentoAdquirente
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo VinculoEstabelecimentoAdquirente.
///
/// @param vinculoEstabelecimentoAdquirentePersist vinculoEstabelecimentoAdquirentePersist
/// 
///
/// @return PierVinculoEstabelecimentoAdquirenteResponse*
-(NSNumber*) salvarUsingPOST29WithVinculoEstabelecimentoAdquirentePersist: (PierVinculoEstabelecimentoAdquirentePersist*) vinculoEstabelecimentoAdquirentePersist
    completionHandler: (void (^)(PierVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler;



@end
