#import <Foundation/Foundation.h>
#import "PierHistoricoImpressaoCartaoResponse.h"
#import "PierCartaoResponse.h"
#import "PierDadosCartaoResponse.h"
#import "PierLimiteDisponibilidadeResponse.h"
#import "PierLoteCartoesPrePagosResponse.h"
#import "PierPortadorResponse.h"
#import "PierCartaoDetalheResponse.h"
#import "PierPageLoteCartoesPrePagosResponse.h"
#import "PierPageCartaoResponse.h"
#import "PierValidaCartaoResponse.h"
#import "PierValidaSenhaCartaoResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierCartaoApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierCartaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierCartaoApi*) sharedAPI;
///
///
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o da senha de um Cart\u00C3\u00A3o
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que o portador de um determinado cart\u00C3\u00A3o possa definir uma senha a sua escolha.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// @param senha Senha para ser cadastrada ou alterada.
/// 
///
/// @return NSString*
-(NSNumber*) alterarAlterarSenhaUsingPUTWithId: (NSNumber*) _id
    senha: (NSString*) senha
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


///
///
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que uma Aplica\u00C3\u00A7\u00C3\u00A3o que realize a impress\u00C3\u00A3o de cart\u00C3\u00B5es possa indicar que um determinado idCartao fora impresso ou est\u00C3\u00A1 em processo de impress\u00C3\u00A3o. Para isso, basta informar o respectivo c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id) que deseja ter seu um determinado id_status_impressao atribu\u00C3\u00ADdo a ele. Por padr\u00C3\u00A3o, cart\u00C3\u00B5es provis\u00C3\u00B3rios ou que j\u00C3\u00A1 tenham sido inclu\u00C3\u00ADdos em um arquivo para impress\u00C3\u00A3o via gr\u00C3\u00A1fica ter\u00C3\u00A3o esta requisi\u00C3\u00A7\u00C3\u00A3o negada, se utilizada.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// @param idStatusImpressao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status Impress\u00C3\u00A3o (Id).
/// 
///
/// @return PierHistoricoImpressaoCartaoResponse*
-(NSNumber*) alterarStatusImpressaoUsingPUTWithId: (NSNumber*) _id
    idStatusImpressao: (NSNumber*) idStatusImpressao
    completionHandler: (void (^)(PierHistoricoImpressaoCartaoResponse* output, NSError* error)) handler;


///
///
/// Realiza a atribui\u00C3\u00A7\u00C3\u00A3o de um cart\u00C3\u00A3o pr\u00C3\u00A9-pago a uma pessoa
/// Esta m\u00C3\u00A9todo permite que um cart\u00C3\u00A3o pr\u00C3\u00A9-pago impresso de forma avulsa e an\u00C3\u00B4nimo seja atribu\u00C3\u00ADdo a uma pessoa para que esta passe a ser a portadora titular dele.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id)
/// @param idPessoa C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de uma Pessoa (id).
/// 
///
/// @return PierCartaoResponse*
-(NSNumber*) atribuirPessoaUsingPUTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler;


///
///
/// Realiza o bloqueio de um determinado Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite a realiza\u00C3\u00A7\u00C3\u00A3o do bloqueio (tempor\u00C3\u00A1rio) ou do cancelamento (definitivo) de um determinado cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id). Para isso, \u00C3\u00A9 preciso informar qual o motivo deste bloqueio que nada mais \u00C3\u00A9 do que atribuir um novo StatusCartao para ele dentre as op\u00C3\u00A7\u00C3\u00B5es praticadas pelo emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// @param idStatus C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Novo Status Cart\u00C3\u00A3o.
/// @param observacao Texto informando uma observa\u00C3\u00A7\u00C3\u00A3o sobre o bloqueio.
/// 
///
/// @return PierCartaoResponse*
-(NSNumber*) bloquearUsingPUTWithId: (NSNumber*) _id
    idStatus: (NSNumber*) idStatus
    observacao: (NSString*) observacao
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler;


///
///
/// Realiza o cadastro da senha de um Cart\u00C3\u00A3o
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que o portador de um determinado cart\u00C3\u00A3o possa definir uma senha a sua escolha.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// @param senha Senha para ser cadastrada ou alterada.
/// 
///
/// @return NSString*
-(NSNumber*) cadastrarAlterarSenhaUsingPOSTWithId: (NSNumber*) _id
    senha: (NSString*) senha
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


///
///
/// Consultar Detalhes do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que seja consultado os dados necessarios de um cart\u00C3\u00A3o para executar servi\u00C3\u00A7os de autoriza\u00C3\u00A7\u00C3\u00A3o.
///
/// @param _id id
/// 
///
/// @return PierDadosCartaoResponse*
-(NSNumber*) consultarDadosReaisCartaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierDadosCartaoResponse* output, NSError* error)) handler;


///
///
/// Apresenta os limites do Portador do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar os Limites configurados para o Portador de um determinado Cart\u00C3\u00A3o, seja ele o titular da conta ou um adicional, a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// 
///
/// @return PierLimiteDisponibilidadeResponse*
-(NSNumber*) consultarLimiteDisponibilidadeUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler;


///
///
/// Permite consultar um determinado Lote de Cart\u00C3\u00B5es Pr\u00C3\u00A9-Pago
/// Este m\u00C3\u00A9todo permite consultar os cart\u00C3\u00B5es pr\u00C3\u00A9-pagos existentes na base do emissor atrav\u00C3\u00A9s do id do lote.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do lote de cart\u00C3\u00B5es (id)
/// 
///
/// @return PierLoteCartoesPrePagosResponse*
-(NSNumber*) consultarLotesCartoesPrePagosUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierLoteCartoesPrePagosResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados do Portador do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es do Portador de um determinado Cart\u00C3\u00A3o a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// 
///
/// @return PierPortadorResponse*
-(NSNumber*) consultarPortadorUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPortadorResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es b\u00C3\u00A1sicas de um determinado Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// 
///
/// @return PierCartaoDetalheResponse*
-(NSNumber*) consultarUsingGET3WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCartaoDetalheResponse* output, NSError* error)) handler;


///
///
/// Realiza o desbloqueio de um cart\u00C3\u00A3o bloqueado por tentativas de senha incorretas
/// Este m\u00C3\u00A9todo permite que seja desbloqueado um determinado cart\u00C3\u00A3o que foi bloqueado por tentativas de senha incorretas, a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// 
///
/// @return PierCartaoResponse*
-(NSNumber*) desbloquearSenhaIncorretaUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler;


///
///
/// Realiza o desbloqueio de um determinado Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que seja desbloqueado um determinado cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// 
///
/// @return PierCartaoResponse*
-(NSNumber*) desbloquearUsingPUTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler;


///
///
/// Permite gerar um novo Lote de Cart\u00C3\u00B5es Pr\u00C3\u00A9-Pago
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores gerem uma determinada quantidade de Cart\u00C3\u00B5es Pr\u00C3\u00A9-Pagos, de forma n\u00C3\u00A3o nominal, os quais poder\u00C3\u00A3o ser comercializados e posteriormente vinculados a um cliente que o adquirir. Para isso, al\u00C3\u00A9m de definir quantos cart\u00C3\u00B5es dever\u00C3\u00A3o ser gerados, ser\u00C3\u00A1 poss\u00C3\u00ADvel definir qual a Origem Comercial, o Produto, o Tipo do Cart\u00C3\u00A3o, a Imagem e o Endere\u00C3\u00A7o para entrega dos Cart\u00C3\u00B5es presentes no lote gerado. Por padr\u00C3\u00A3o, todos os cart\u00C3\u00B5es ser\u00C3\u00A3o associados a um idPessoa fict\u00C3\u00ADcio e receber\u00C3\u00A1 um idConta \u00C3\u00BAnico para cada um deles. Feito isso, os Cart\u00C3\u00B5es gerados por esta opera\u00C3\u00A7\u00C3\u00A3o seguir\u00C3\u00A3o os mesmos processos de impress\u00C3\u00A3o via gr\u00C3\u00A1fica previamente definidos entre o Emissor e a Conductor.
///
/// @param idOrigemComercial C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id).
/// @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id).
/// @param idTipoCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Cart\u00C3\u00A3o (id).
/// @param idImagem C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Imagem (id).
/// @param idEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Endere\u00C3\u00A7o (id).
/// @param quantidadeCartoes N\u00C3\u00BAmero de cart\u00C3\u00B5es existentes no Lote.
/// 
///
/// @return PierLoteCartoesPrePagosResponse*
-(NSNumber*) gerarLotesCartoesPrePagosUsingPOSTWithIdOrigemComercial: (NSNumber*) idOrigemComercial
    idProduto: (NSNumber*) idProduto
    idTipoCartao: (NSNumber*) idTipoCartao
    idImagem: (NSNumber*) idImagem
    idEndereco: (NSNumber*) idEndereco
    quantidadeCartoes: (NSNumber*) quantidadeCartoes
    completionHandler: (void (^)(PierLoteCartoesPrePagosResponse* output, NSError* error)) handler;


///
///
/// Gerar uma nova via de Cart\u00C3\u00A3o
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores ou seus clientes possam solicitar a gera\u00C3\u00A7\u00C3\u00A3o de uma nova via de Cart\u00C3\u00A3o que ser\u00C3\u00A1 encaminhando para impress\u00C3\u00A3o e postagem de acordo com os fluxos padr\u00C3\u00B5es j\u00C3\u00A1 definidos pelo emissor. Para isso, \u00C3\u00A9 preciso que o cliente j\u00C3\u00A1 possua um cart\u00C3\u00A3o gerado e informar o C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o deste (idCartao) para que ele possa utilizar esta opera\u00C3\u00A7\u00C3\u00A3o. Assim, esta funcionalidade se aplica apenas para a gera\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00B5es f\u00C3\u00ADsicos.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id)
/// 
///
/// @return PierCartaoResponse*
-(NSNumber*) gerarNovaViaUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler;


///
///
/// Permite listar os Lotes de Cart\u00C3\u00B5es Pr\u00C3\u00A9-Pago
/// Este m\u00C3\u00A9todo permite que sejam listados os cart\u00C3\u00B5es pr\u00C3\u00A9-pagos existentes na base do emissor.
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idOrigemComercial C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id).
/// @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id).
/// @param idTipoCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Cart\u00C3\u00A3o (id).
/// @param idImagem C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Imagem (id).
/// @param idEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Endere\u00C3\u00A7o (id).
/// @param quantidadeCartoes N\u00C3\u00BAmero de cart\u00C3\u00B5es existentes no Lote.
/// @param dataCadastro Data de Cadastro do Lote de Cart\u00C3\u00B5es N\u00C3\u00A3o Nominais.
/// @param usuarioCadastro Nome do Usu\u00C3\u00A1rio que criou o Lote.
/// @param statusProcessamento Indica o Status de Processamento do Lote.
/// 
///
/// @return PierPageLoteCartoesPrePagosResponse*
-(NSNumber*) listarLotesCartoesPrePagosUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idOrigemComercial: (NSNumber*) idOrigemComercial
    idProduto: (NSNumber*) idProduto
    idTipoCartao: (NSNumber*) idTipoCartao
    idImagem: (NSNumber*) idImagem
    idEndereco: (NSNumber*) idEndereco
    quantidadeCartoes: (NSNumber*) quantidadeCartoes
    dataCadastro: (NSString*) dataCadastro
    usuarioCadastro: (NSString*) usuarioCadastro
    statusProcessamento: (NSNumber*) statusProcessamento
    completionHandler: (void (^)(PierPageLoteCartoesPrePagosResponse* output, NSError* error)) handler;


///
///
/// Lista os Cart\u00C3\u00B5es gerados pelo Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os cart\u00C3\u00B5es existentes na base do emissor.
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idStatusCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id).
/// @param idEstagioCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// @param idConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta a qual o cart\u00C3\u00A3o pertence (id).
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o cart\u00C3\u00A3o pertence (id)
/// @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id).
/// @param tipoPortador Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: (&#39;T&#39;: Titular, &#39;A&#39;: Adicional).
/// @param numeroCartao Apresenta o n\u00C3\u00BAmero do cart\u00C3\u00A3o.
/// @param nomeImpresso Apresenta o nome impresso no cart\u00C3\u00A3o.
/// @param dataGeracao Apresenta a data em que o cart\u00C3\u00A3o foi gerado.
/// @param dataStatusCartao Apresenta a data em que o idStatusCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver.
/// @param dataEstagioCartao Apresenta a data em que o idEstagioCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver.
/// @param dataValidade Apresenta a data de validade do cart\u00C3\u00A3o em formato yyyy-MM, quando houver.
/// @param dataImpressao Apresenta a data em que o cart\u00C3\u00A3o fora impresso, caso impress\u00C3\u00A3o em loja, ou a data em que ele fora inclu\u00C3\u00ADdo no arquivo para impress\u00C3\u00A3o via gr\u00C3\u00A1fica.
/// @param arquivoImpressao Apresenta o nome do arquivo onde o cart\u00C3\u00A3o fora inclu\u00C3\u00ADdo para impress\u00C3\u00A3o por uma gr\u00C3\u00A1fica, quando houver.
/// @param flagImpressaoOrigemComercial Quando ativa, indica que o cart\u00C3\u00A3o fora impresso na Origem Comercial.
/// @param flagProvisorio Quando ativa, indica que o cart\u00C3\u00A3o \u00C3\u00A9 provis\u00C3\u00B3rio. Ou seja, \u00C3\u00A9 um cart\u00C3\u00A3o para uso tempor\u00C3\u00A1rio quando se deseja permitir que o cliente transacione sem que ele tenha recebido um cart\u00C3\u00A3o definitivo.
/// @param codigoDesbloqueio Apresenta um c\u00C3\u00B3digo espec\u00C3\u00ADfico para ser utilizado como vari\u00C3\u00A1vel no processo de desbloqueio do cart\u00C3\u00A3o para emissores que querem usar esta funcionalidade.
/// @param sequencialCartao N\u00C3\u00BAmero sequencial do cart\u00C3\u00A3o
/// 
///
/// @return PierPageCartaoResponse*
-(NSNumber*) listarUsingGET5WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idStatusCartao: (NSNumber*) idStatusCartao
    idEstagioCartao: (NSNumber*) idEstagioCartao
    idConta: (NSNumber*) idConta
    idPessoa: (NSNumber*) idPessoa
    idProduto: (NSNumber*) idProduto
    tipoPortador: (NSString*) tipoPortador
    numeroCartao: (NSString*) numeroCartao
    nomeImpresso: (NSString*) nomeImpresso
    dataGeracao: (NSString*) dataGeracao
    dataStatusCartao: (NSString*) dataStatusCartao
    dataEstagioCartao: (NSString*) dataEstagioCartao
    dataValidade: (NSString*) dataValidade
    dataImpressao: (NSString*) dataImpressao
    arquivoImpressao: (NSString*) arquivoImpressao
    flagImpressaoOrigemComercial: (NSNumber*) flagImpressaoOrigemComercial
    flagProvisorio: (NSNumber*) flagProvisorio
    codigoDesbloqueio: (NSString*) codigoDesbloqueio
    sequencialCartao: (NSNumber*) sequencialCartao
    completionHandler: (void (^)(PierPageCartaoResponse* output, NSError* error)) handler;


///
///
/// Permite validar os dados impressos em um cart\u00C3\u00A3o bandeirado
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores validem a autenticidade de um determinado Cart\u00C3\u00A3o a partir do envio dos dados sens\u00C3\u00ADveis impressos nele. A utiliza\u00C3\u00A7\u00C3\u00A3o desde m\u00C3\u00A9todo tem diversas aplica\u00C3\u00A7\u00C3\u00B5es, sendo a principal delas a de Identifica\u00C3\u00A7\u00C3\u00A3o Positiva do Cart\u00C3\u00A3o para a realiza\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00B5es e-commerce ou por meio de Centrais de Atendimento Eletr\u00C3\u00B4nico (URA), dentre outras.
///
/// @param numeroCartao N\u00C3\u00BAmero do cart\u00C3\u00A3o a ser validado.
/// @param nomePortador Nome do portador do cart\u00C3\u00A3o
/// @param dataValidade Data de validade do cart\u00C3\u00A3o no formato yyyy-MM
/// @param codigoSeguranca C\u00C3\u00B3digo de seguran\u00C3\u00A7a do cart\u00C3\u00A3o com tr\u00C3\u00AAs n\u00C3\u00BAmeros
/// 
///
/// @return PierValidaCartaoResponse*
-(NSNumber*) validarDadosImpressosBandeiradoUsingGETWithNumeroCartao: (NSString*) numeroCartao
    nomePortador: (NSString*) nomePortador
    dataValidade: (NSString*) dataValidade
    codigoSeguranca: (NSString*) codigoSeguranca
    completionHandler: (void (^)(PierValidaCartaoResponse* output, NSError* error)) handler;


///
///
/// Permite validar os dados impressos de um cartao n\u00C3\u00A3o bandeirado
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores validem a autenticidade de um determinado Cart\u00C3\u00A3o a partir do envio dos dados sens\u00C3\u00ADveis impressos nele. A utiliza\u00C3\u00A7\u00C3\u00A3o desde m\u00C3\u00A9todo tem diversas aplica\u00C3\u00A7\u00C3\u00B5es, sendo a principal delas a de Identifica\u00C3\u00A7\u00C3\u00A3o Positiva do Cart\u00C3\u00A3o para a realiza\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00B5es e-commerce ou por meio de Centrais de Atendimento Eletr\u00C3\u00B4nico (URA), dentre outras.
///
/// @param numeroCartao N\u00C3\u00BAmero do cart\u00C3\u00A3o a ser validado.
/// @param nomePortador Nome do portador do cart\u00C3\u00A3o
/// @param dataValidade Data de validade do cart\u00C3\u00A3o no formato yyyy-MM
/// @param codigoSeguranca C\u00C3\u00B3digo de seguran\u00C3\u00A7a do cart\u00C3\u00A3o com tr\u00C3\u00AAs n\u00C3\u00BAmeros
/// 
///
/// @return PierValidaCartaoResponse*
-(NSNumber*) validarDadosImpressosNaoBandeiradoUsingGETWithNumeroCartao: (NSString*) numeroCartao
    nomePortador: (NSString*) nomePortador
    dataValidade: (NSString*) dataValidade
    codigoSeguranca: (NSString*) codigoSeguranca
    completionHandler: (void (^)(PierValidaCartaoResponse* output, NSError* error)) handler;


///
///
/// Permite validar um Cart\u00C3\u00A3o com bandeira Mastercard a partir do de55
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores validem o DE55 gerado a partir da leitura de um chip EMV de um Cart\u00C3\u00A3o com bandeira Mastercard a fim de verificar a sua autenticidade. A utiliza\u00C3\u00A7\u00C3\u00A3o desde m\u00C3\u00A9todo tem diversas aplica\u00C3\u00A7\u00C3\u00B5es, sendo a principal delas a de Identifica\u00C3\u00A7\u00C3\u00A3o Positiva do Cart\u00C3\u00A3o antes de permitir que o portador realize transa\u00C3\u00A7\u00C3\u00B5es diversas, como as de compra e saque na modalidade d\u00C3\u00A9bito em conta corrente, dentre outras.
///
/// @param numeroCartao N\u00C3\u00BAmero do cart\u00C3\u00A3o a ser validado.
/// @param criptograma Criptograma do cart\u00C3\u00A3o no formato de55
/// 
///
/// @return PierValidaCartaoResponse*
-(NSNumber*) validarDe55CartaoMastercardUsingGETWithNumeroCartao: (NSString*) numeroCartao
    criptograma: (NSString*) criptograma
    completionHandler: (void (^)(PierValidaCartaoResponse* output, NSError* error)) handler;


///
///
/// Permite validar a senha de um Cart\u00C3\u00A3o
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir validar que a senha informada pelo portador de um determinado cart\u00C3\u00A3o est\u00C3\u00A1 correta.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// @param senha Senha para ser validada.
/// 
///
/// @return PierValidaSenhaCartaoResponse*
-(NSNumber*) validarSenhaUsingGETWithId: (NSNumber*) _id
    senha: (NSString*) senha
    completionHandler: (void (^)(PierValidaSenhaCartaoResponse* output, NSError* error)) handler;


///
///
/// Permite validar um Cart\u00C3\u00A3o Bandeirado a partir da Tarja
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores validem a autenticidade de um determinado Cart\u00C3\u00A3o a partir da leitura da tarja magn\u00C3\u00A9tica do mesmo. A utiliza\u00C3\u00A7\u00C3\u00A3o desde m\u00C3\u00A9todo tem diversas aplica\u00C3\u00A7\u00C3\u00B5es, sendo a principal delas a de Identifica\u00C3\u00A7\u00C3\u00A3o Positiva do Cart\u00C3\u00A3o antes de permitir que o portador realize transa\u00C3\u00A7\u00C3\u00B5es diversas, como as de compra e saque na modalidade d\u00C3\u00A9bito em conta corrente, dentre outras.
///
/// @param numeroCartao N\u00C3\u00BAmero do cart\u00C3\u00A3o a ser validado.
/// @param trilha1 Trilha 1 do cart\u00C3\u00A3o a ser validado
/// @param trilha2 Trilha 2 do cart\u00C3\u00A3o a ser validado
/// 
///
/// @return PierValidaCartaoResponse*
-(NSNumber*) validarTarjaUsingGETWithNumeroCartao: (NSString*) numeroCartao
    trilha1: (NSString*) trilha1
    trilha2: (NSString*) trilha2
    completionHandler: (void (^)(PierValidaCartaoResponse* output, NSError* error)) handler;



@end
