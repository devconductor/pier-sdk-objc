#import "PierStatusCartoApi.h"
#import "PierQueryParamCollection.h"
#import "PierStatusCartO.h"
#import "PierListaDeStatusCartEs.h"


@interface PierStatusCartoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierStatusCartoApi

static PierStatusCartoApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        PierConfiguration *config = [PierConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[PierApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(PierApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(PierStatusCartoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierStatusCartoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierStatusCartoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierStatusCartoApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [PierApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Apresenta os dados de um determinado Status Cart\u00C3\u00A3o 
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).  
///  @param idStatusCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
///
///  @returns PierStatusCartO*
///
-(NSNumber*) consultarStatusCartaoUsingGETWithIdStatusCartao: (NSNumber*) idStatusCartao
    completionHandler: (void (^)(PierStatusCartO* output, NSError* error)) handler {

    
    // verify the required parameter 'idStatusCartao' is set
    if (idStatusCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idStatusCartao` when calling `consultarStatusCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-cartoes/{id_status_cartao}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idStatusCartao != nil) {
        pathParams[@"id_status_cartao"] = idStatusCartao;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [PierApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierStatusCartO*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusCartO*)data, error);
                           }
          ];
}

///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o 
/// Este m\u00C3\u00A9todo permite que sejam listadas as possibilidades de Status que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///  @param idStatusCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id). (optional)
///
///  @param nome Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
///
///  @param flagAlteraStatus Quanto ativa, indica que Cart\u00C3\u00B5es que tiverem este idStatusCartao atribu\u00C3\u00ADdo n\u00C3\u00A3o ter\u00C3\u00A3o seu idStatusCartao Alterado, fazendo com que o Cart\u00C3\u00A3o atual possa continuar sendo utilizado at\u00C3\u00A9 o desbloqueio de um novo cart\u00C3\u00A3o. (optional)
///
///  @param flagDesbloqueio Quando ativa, indica que Cart\u00C3\u00B5es com este idStatusCartao poder\u00C3\u00A3o ser Desbloqueados. (optional)
///
///  @param flagReversaoDesbloqueio Quando ativa, indica que o cart\u00C3\u00A3o, mesmo tendo sido bloqueado, poder\u00C3\u00A1 ter o processo desfeito. (optional)
///
///  @param idStatusDestinoDesbloqueio Indica qual o idStatusCartao que deve ser atribu\u00C3\u00ADdo a um idCartao quando ele for desbloqueado. (optional)
///
///  @param flagCancelaCartao Quando ativa, indica que Cart\u00C3\u00B5es que tiverem este idStatusCartao atribu\u00C3\u00ADdo ter\u00C3\u00A3o o cart\u00C3\u00A3o Cancelado.  (optional)
///
///  @param flagReversaoCancelamento Quando ativa, indica que o cart\u00C3\u00A3o, mesmo tendo sido cancelado, poder\u00C3\u00A1 ter o processo desfeito. (optional)
///
///  @param flagEmiteProvisorio Quando ativa, indica que os portadores que tiverem seus cart\u00C3\u00B5es associados a idStatusCartao com esta flag poder\u00C3\u00A3o solicitar a emiss\u00C3\u00A3o de um cart\u00C3\u00A3o provis\u00C3\u00B3rio at\u00C3\u00A9 que um novo cart\u00C3\u00A3o definitivo seja recebido.  (optional)
///
///  @param flagCancelaConta Quando ativa, indica que Cart\u00C3\u00B5es que tiverem este idStatusCartao atribu\u00C3\u00ADdo ter\u00C3\u00A3o a conta Cancelada. (optional)
///
///  @param idStatusDestinoConta Indica qual o idStatusConta que ser\u00C3\u00A1 atribu\u00C3\u00ADdo ao idConta que tiver o Cartao do titular da mesma cancelado por um idStatusCartao que recomenda o cancelamento da conta. (optional)
///
///  @param flagReemiteCartao Quando ativa, indica que Cart\u00C3\u00B5es que tiverem este idStatusCartao atribu\u00C3\u00ADdo ter\u00C3\u00A3o um novo cart\u00C3\u00A3o automaticamente gerado. (optional)
///
///  @param flagCobraTarifa Quando ativa, indica que Cart\u00C3\u00B5es que tiverem este idStatusCartao atribu\u00C3\u00ADdo ter\u00C3\u00A3o a cobran\u00C3\u00A7a de tarifa lan\u00C3\u00A7ada junto a gera\u00C3\u00A7\u00C3\u00A3o do novo cart\u00C3\u00A3o, desde que o Produto ao qual o cart\u00C3\u00A3o pertence possua o respectivo par\u00C3\u00A2metro configurado. (optional)
///
///  @param flagOrigemTransferencia Quando ativa, indica que Cart\u00C3\u00B5es com este idStatusCartao podem realizar a transfer\u00C3\u00AAncia de cr\u00C3\u00A9ditos/d\u00C3\u00A9bitos para outros cart\u00C3\u00B5es. (optional)
///
///  @param flagDestinoTransferencia Quando ativa, indica que Cart\u00C3\u00B5es com este idStatusCartao podem receber transfer\u00C3\u00AAncias de cr\u00C3\u00A9ditos/d\u00C3\u00A9bitos oriundos de outros cart\u00C3\u00B5es. (optional)
///
///  @param flagCadastroSenha Quando ativa, indica se poder\u00C3\u00A1 ser realizado o cadastro de uma senha para o Cart\u00C3\u00A3o. (optional)
///
///  @param flagCadastroNovaSenha Quando ativa, indica que os Cart\u00C3\u00B5es que tiverem este idStatusCartao atribu\u00C3\u00ADdo ter\u00C3\u00A3o a senha atual exclu\u00C3\u00ADda. (optional)
///
///  @param flagExcecaoBandeira Quando ativa, indica que os Cart\u00C3\u00B5es que tiverem este idStatusCartao atribu\u00C3\u00ADdo dever\u00C3\u00A3o ter a respectiva informa\u00C3\u00A7\u00C3\u00A3o de mudan\u00C3\u00A7a de status inclu\u00C3\u00ADda no arquivo de exce\u00C3\u00A7\u00C3\u00A3o da Bandeira, a fim de manter atualizado o cadastro do cart\u00C3\u00A3o nela para nortear o que fazer com as transa\u00C3\u00A7\u00C3\u00B5es quando o autorizador estiver indispon\u00C3\u00ADvel. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @returns PierListaDeStatusCartEs*
///
-(NSNumber*) listarStatusCartoesUsingGETWithIdStatusCartao: (NSNumber*) idStatusCartao
    nome: (NSString*) nome
    flagAlteraStatus: (NSString*) flagAlteraStatus
    flagDesbloqueio: (NSString*) flagDesbloqueio
    flagReversaoDesbloqueio: (NSString*) flagReversaoDesbloqueio
    idStatusDestinoDesbloqueio: (NSNumber*) idStatusDestinoDesbloqueio
    flagCancelaCartao: (NSString*) flagCancelaCartao
    flagReversaoCancelamento: (NSString*) flagReversaoCancelamento
    flagEmiteProvisorio: (NSString*) flagEmiteProvisorio
    flagCancelaConta: (NSString*) flagCancelaConta
    idStatusDestinoConta: (NSNumber*) idStatusDestinoConta
    flagReemiteCartao: (NSString*) flagReemiteCartao
    flagCobraTarifa: (NSString*) flagCobraTarifa
    flagOrigemTransferencia: (NSString*) flagOrigemTransferencia
    flagDestinoTransferencia: (NSString*) flagDestinoTransferencia
    flagCadastroSenha: (NSString*) flagCadastroSenha
    flagCadastroNovaSenha: (NSString*) flagCadastroNovaSenha
    flagExcecaoBandeira: (NSString*) flagExcecaoBandeira
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierListaDeStatusCartEs* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-cartoes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idStatusCartao != nil) {
        
        queryParams[@"id_status_cartao"] = idStatusCartao;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (flagAlteraStatus != nil) {
        
        queryParams[@"flag_altera_status"] = flagAlteraStatus;
    }
    if (flagDesbloqueio != nil) {
        
        queryParams[@"flag_desbloqueio"] = flagDesbloqueio;
    }
    if (flagReversaoDesbloqueio != nil) {
        
        queryParams[@"flag_reversao_desbloqueio"] = flagReversaoDesbloqueio;
    }
    if (idStatusDestinoDesbloqueio != nil) {
        
        queryParams[@"id_status_destino_desbloqueio"] = idStatusDestinoDesbloqueio;
    }
    if (flagCancelaCartao != nil) {
        
        queryParams[@"flag_cancela_cartao"] = flagCancelaCartao;
    }
    if (flagReversaoCancelamento != nil) {
        
        queryParams[@"flag_reversao_cancelamento"] = flagReversaoCancelamento;
    }
    if (flagEmiteProvisorio != nil) {
        
        queryParams[@"flag_emite_provisorio"] = flagEmiteProvisorio;
    }
    if (flagCancelaConta != nil) {
        
        queryParams[@"flag_cancela_conta"] = flagCancelaConta;
    }
    if (idStatusDestinoConta != nil) {
        
        queryParams[@"id_status_destino_conta"] = idStatusDestinoConta;
    }
    if (flagReemiteCartao != nil) {
        
        queryParams[@"flag_reemite_cartao"] = flagReemiteCartao;
    }
    if (flagCobraTarifa != nil) {
        
        queryParams[@"flag_cobra_tarifa"] = flagCobraTarifa;
    }
    if (flagOrigemTransferencia != nil) {
        
        queryParams[@"flag_origem_transferencia"] = flagOrigemTransferencia;
    }
    if (flagDestinoTransferencia != nil) {
        
        queryParams[@"flag_destino_transferencia"] = flagDestinoTransferencia;
    }
    if (flagCadastroSenha != nil) {
        
        queryParams[@"flag_cadastro_senha"] = flagCadastroSenha;
    }
    if (flagCadastroNovaSenha != nil) {
        
        queryParams[@"flag_cadastro_nova_senha"] = flagCadastroNovaSenha;
    }
    if (flagExcecaoBandeira != nil) {
        
        queryParams[@"flag_excecao_bandeira"] = flagExcecaoBandeira;
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [PierApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierListaDeStatusCartEs*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierListaDeStatusCartEs*)data, error);
                           }
          ];
}



@end
