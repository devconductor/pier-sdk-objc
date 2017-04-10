#import "PierCartaoApi.h"
#import "PierQueryParamCollection.h"
#import "PierHistoricoImpressaoCartao.h"
#import "PierCartao.h"
#import "PierLimiteDisponibilidade.h"
#import "PierLoteCartoesPrePagos.h"
#import "PierPortador.h"
#import "PierLinkTransferenciaBancariaResponse_.h"
#import "PierPageLoteCartoesPrePagosResponse.h"
#import "PierLinkPageTransferenciaBancariaResponse_.h"
#import "PierPageCartoes.h"
#import "PierValidaCartao.h"


@interface PierCartaoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierCartaoApi

static PierCartaoApi* singletonAPI = nil;

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

+(PierCartaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCartaoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierCartaoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCartaoApi alloc] init];
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
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o da senha de um Cart\u00C3\u00A3o
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que o portador de um determinado cart\u00C3\u00A3o possa definir uma senha a sua escolha.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @param senha Senha para ser cadastrada ou alterada. 
///
///  @returns NSString*
///
-(NSNumber*) alterarAlterarSenhaUsingPUTWithId: (NSNumber*) _id
    senha: (NSString*) senha
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarAlterarSenhaUsingPUT`"];
    }
    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `alterarAlterarSenhaUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/alterar-senha"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (senha != nil) {
        headerParams[@"senha"] = senha;
    }
    

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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}

///
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que uma Aplica\u00C3\u00A7\u00C3\u00A3o que realize a impress\u00C3\u00A3o de cart\u00C3\u00B5es possa indicar que um determinado idCartao fora impresso ou est\u00C3\u00A1 em processo de impress\u00C3\u00A3o. Para isso, basta informar o respectivo c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id) que deseja ter seu um determinado id_status_impressao atribu\u00C3\u00ADdo a ele. Por padr\u00C3\u00A3o, cart\u00C3\u00B5es provis\u00C3\u00B3rios ou que j\u00C3\u00A1 tenham sido inclu\u00C3\u00ADdos em um arquivo para impress\u00C3\u00A3o via gr\u00C3\u00A1fica ter\u00C3\u00A3o esta requisi\u00C3\u00A7\u00C3\u00A3o negada, se utilizada.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @param idStatusImpressao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status Impress\u00C3\u00A3o (Id). 
///
///  @returns PierHistoricoImpressaoCartao*
///
-(NSNumber*) alterarStatusImpressaoUsingPUTWithId: (NSNumber*) _id
    idStatusImpressao: (NSNumber*) idStatusImpressao
    completionHandler: (void (^)(PierHistoricoImpressaoCartao* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarStatusImpressaoUsingPUT`"];
    }
    
    // verify the required parameter 'idStatusImpressao' is set
    if (idStatusImpressao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idStatusImpressao` when calling `alterarStatusImpressaoUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/alterar-status-impressao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idStatusImpressao != nil) {
        
        queryParams[@"id_status_impressao"] = idStatusImpressao;
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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierHistoricoImpressaoCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierHistoricoImpressaoCartao*)data, error);
                           }
          ];
}

///
/// Realiza a atribui\u00C3\u00A7\u00C3\u00A3o de um cart\u00C3\u00A3o pr\u00C3\u00A9-pago a uma pessoa
/// Esta m\u00C3\u00A9todo permite que um cart\u00C3\u00A3o pr\u00C3\u00A9-pago impresso de forma avulsa e an\u00C3\u00B4nimo seja atribu\u00C3\u00ADdo a uma pessoa para que esta passe a ser a portadora titular dele.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id) 
///
///  @param idPessoa C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de uma Pessoa (id). 
///
///  @returns PierCartao*
///
-(NSNumber*) atribuirPessoaUsingPUTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierCartao* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `atribuirPessoaUsingPUT`"];
    }
    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `atribuirPessoaUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/atribuir-pessoa"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idPessoa != nil) {
        
        queryParams[@"id_pessoa"] = idPessoa;
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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartao*)data, error);
                           }
          ];
}

///
/// Realiza o bloqueio de um determinado Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite a realiza\u00C3\u00A7\u00C3\u00A3o do bloqueio (tempor\u00C3\u00A1rio) ou do cancelamento (definitivo) de um determinado cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id). Para isso, \u00C3\u00A9 preciso informar qual o motivo deste bloqueio que nada mais \u00C3\u00A9 do que atribuir um novo StatusCartao para ele dentre as op\u00C3\u00A7\u00C3\u00B5es praticadas pelo emissor.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @param idStatus C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Novo Status Cart\u00C3\u00A3o. 
///
///  @param observacao Texto informando uma observa\u00C3\u00A7\u00C3\u00A3o sobre o bloqueio. 
///
///  @returns PierCartao*
///
-(NSNumber*) bloquearUsingPUTWithId: (NSNumber*) _id
    idStatus: (NSNumber*) idStatus
    observacao: (NSString*) observacao
    completionHandler: (void (^)(PierCartao* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `bloquearUsingPUT`"];
    }
    
    // verify the required parameter 'idStatus' is set
    if (idStatus == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idStatus` when calling `bloquearUsingPUT`"];
    }
    
    // verify the required parameter 'observacao' is set
    if (observacao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `observacao` when calling `bloquearUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/bloquear"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idStatus != nil) {
        
        queryParams[@"id_status"] = idStatus;
    }
    if (observacao != nil) {
        
        queryParams[@"observacao"] = observacao;
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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartao*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro da senha de um Cart\u00C3\u00A3o
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que o portador de um determinado cart\u00C3\u00A3o possa definir uma senha a sua escolha.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @param senha Senha para ser cadastrada ou alterada. 
///
///  @returns NSString*
///
-(NSNumber*) cadastrarAlterarSenhaUsingPOSTWithId: (NSNumber*) _id
    senha: (NSString*) senha
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `cadastrarAlterarSenhaUsingPOST`"];
    }
    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `cadastrarAlterarSenhaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/cadastrar-senha"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (senha != nil) {
        headerParams[@"senha"] = senha;
    }
    

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
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}

///
/// Apresenta os limites do Portador do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar os Limites configurados para o Portador de um determinado Cart\u00C3\u00A3o, seja ele o titular da conta ou um adicional, a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @returns PierLimiteDisponibilidade*
///
-(NSNumber*) consultarLimiteDisponibilidadeUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierLimiteDisponibilidade* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarLimiteDisponibilidadeUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/limites-disponibilidades"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
                              responseType: @"PierLimiteDisponibilidade*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLimiteDisponibilidade*)data, error);
                           }
          ];
}

///
/// Permite consultar um determinado Lote de Cart\u00C3\u00B5es Pr\u00C3\u00A9-Pago
/// Este m\u00C3\u00A9todo permite consultar os cart\u00C3\u00B5es pr\u00C3\u00A9-pagos existentes na base do emissor atrav\u00C3\u00A9s do id do lote.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do lote de cart\u00C3\u00B5es (id) 
///
///  @returns PierLoteCartoesPrePagos*
///
-(NSNumber*) consultarLotesCartoesPrePagosUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierLoteCartoesPrePagos* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarLotesCartoesPrePagosUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/lotes-cartoes-pre-pagos/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
                              responseType: @"PierLoteCartoesPrePagos*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLoteCartoesPrePagos*)data, error);
                           }
          ];
}

///
/// Apresenta os dados do Portador do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es do Portador de um determinado Cart\u00C3\u00A3o a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @returns PierPortador*
///
-(NSNumber*) consultarPortadorUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPortador* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarPortadorUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/portadores"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
                              responseType: @"PierPortador*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPortador*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es b\u00C3\u00A1sicas de um determinado Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @returns PierCartao*
///
-(NSNumber*) consultarUsingGET2WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCartao* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET2`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
                              responseType: @"PierCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartao*)data, error);
                           }
          ];
}

///
/// Consultar uma transfer\u00C3\u00AAncia banc\u00C3\u00A1ria
/// Este recurso permite consultar os detalhes de uma determinada transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito realizada entre contas. De modo geral, esta opera\u00C3\u00A7\u00C3\u00A3o poder\u00C3\u00A1 ser utilizada para uma consulta simples destes detalhes ou para realizar a montagem de um comprovante de 2\u00C2\u00AA via de transfer\u00C3\u00AAncia entre contas.
///  @param _id Id Cart\u00C3\u00A3o 
///
///  @param idTransferencia Id Transfer\u00C3\u00AAncia 
///
///  @param idContaBancariaDestino C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta banc\u00C3\u00A1ria de destino (id) (optional)
///
///  @returns PierLinkTransferenciaBancariaResponse_*
///
-(NSNumber*) consultarUsingGET20WithId: (NSNumber*) _id
    idTransferencia: (NSNumber*) idTransferencia
    idContaBancariaDestino: (NSNumber*) idContaBancariaDestino
    completionHandler: (void (^)(PierLinkTransferenciaBancariaResponse_* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET20`"];
    }
    
    // verify the required parameter 'idTransferencia' is set
    if (idTransferencia == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idTransferencia` when calling `consultarUsingGET20`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/transferencias-creditos-contas-bancarias/{id_transferencia}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (idTransferencia != nil) {
        pathParams[@"id_transferencia"] = idTransferencia;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idContaBancariaDestino != nil) {
        
        queryParams[@"id_conta_bancaria_destino"] = idContaBancariaDestino;
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
                              responseType: @"PierLinkTransferenciaBancariaResponse_*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLinkTransferenciaBancariaResponse_*)data, error);
                           }
          ];
}

///
/// Realiza o desbloqueio de um determinado Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que seja desbloqueado um determinado cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @returns PierCartao*
///
-(NSNumber*) desbloquearUsingPUTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCartao* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desbloquearUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/desbloquear"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartao*)data, error);
                           }
          ];
}

///
/// Permite gerar um novo Lote de Cart\u00C3\u00B5es Pr\u00C3\u00A9-Pago
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores gerem uma determinada quantidade de Cart\u00C3\u00B5es Pr\u00C3\u00A9-Pagos, de forma n\u00C3\u00A3o nominal, os quais poder\u00C3\u00A3o ser comercializados e posteriormente vinculados a um cliente que o adquirir. Para isso, al\u00C3\u00A9m de definir quantos cart\u00C3\u00B5es dever\u00C3\u00A3o ser gerados, ser\u00C3\u00A1 poss\u00C3\u00ADvel definir qual a Origem Comercial, o Produto, o Tipo do Cart\u00C3\u00A3o, a Imagem e o Endere\u00C3\u00A7o para entrega dos Cart\u00C3\u00B5es presentes no lote gerado. Por padr\u00C3\u00A3o, todos os cart\u00C3\u00B5es ser\u00C3\u00A3o associados a um idPessoa fict\u00C3\u00ADcio e receber\u00C3\u00A1 um idConta \u00C3\u00BAnico para cada um deles. Feito isso, os Cart\u00C3\u00B5es gerados por esta opera\u00C3\u00A7\u00C3\u00A3o seguir\u00C3\u00A3o os mesmos processos de impress\u00C3\u00A3o via gr\u00C3\u00A1fica previamente definidos entre o Emissor e a Conductor.
///  @param idOrigemComercial C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id). (optional)
///
///  @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). (optional)
///
///  @param idTipoCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Cart\u00C3\u00A3o (id). (optional)
///
///  @param idImagem C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Imagem (id). (optional)
///
///  @param idEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Endere\u00C3\u00A7o (id). (optional)
///
///  @param quantidadeCartoes N\u00C3\u00BAmero de cart\u00C3\u00B5es existentes no Lote. (optional)
///
///  @returns PierLoteCartoesPrePagos*
///
-(NSNumber*) gerarLotesCartoesPrePagosUsingPOSTWithIdOrigemComercial: (NSNumber*) idOrigemComercial
    idProduto: (NSNumber*) idProduto
    idTipoCartao: (NSNumber*) idTipoCartao
    idImagem: (NSNumber*) idImagem
    idEndereco: (NSNumber*) idEndereco
    quantidadeCartoes: (NSNumber*) quantidadeCartoes
    completionHandler: (void (^)(PierLoteCartoesPrePagos* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/lotes-cartoes-pre-pagos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idOrigemComercial != nil) {
        
        queryParams[@"idOrigemComercial"] = idOrigemComercial;
    }
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (idTipoCartao != nil) {
        
        queryParams[@"idTipoCartao"] = idTipoCartao;
    }
    if (idImagem != nil) {
        
        queryParams[@"idImagem"] = idImagem;
    }
    if (idEndereco != nil) {
        
        queryParams[@"idEndereco"] = idEndereco;
    }
    if (quantidadeCartoes != nil) {
        
        queryParams[@"quantidadeCartoes"] = quantidadeCartoes;
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
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierLoteCartoesPrePagos*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLoteCartoesPrePagos*)data, error);
                           }
          ];
}

///
/// Gerar uma nova via de Cart\u00C3\u00A3o
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores ou seus clientes possam solicitar a gera\u00C3\u00A7\u00C3\u00A3o de uma nova via de Cart\u00C3\u00A3o que ser\u00C3\u00A1 encaminhando para impress\u00C3\u00A3o e postagem de acordo com os fluxos padr\u00C3\u00B5es j\u00C3\u00A1 definidos pelo emissor. Para isso, \u00C3\u00A9 preciso que o cliente j\u00C3\u00A1 possua um cart\u00C3\u00A3o gerado e informar o C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o deste (idCartao) para que ele possa utilizar esta opera\u00C3\u00A7\u00C3\u00A3o. Assim, esta funcionalidade se aplica apenas para a gera\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00B5es f\u00C3\u00ADsicos.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id) 
///
///  @returns PierCartao*
///
-(NSNumber*) gerarNovaViaUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCartao* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `gerarNovaViaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/gerar-nova-via"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartao*)data, error);
                           }
          ];
}

///
/// Permite listar os Lotes de Cart\u00C3\u00B5es Pr\u00C3\u00A9-Pago
/// Este m\u00C3\u00A9todo permite que sejam listados os cart\u00C3\u00B5es pr\u00C3\u00A9-pagos existentes na base do emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @param idOrigemComercial C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id). (optional)
///
///  @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). (optional)
///
///  @param idTipoCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Cart\u00C3\u00A3o (id). (optional)
///
///  @param idImagem C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Imagem (id). (optional)
///
///  @param idEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Endere\u00C3\u00A7o (id). (optional)
///
///  @param quantidadeCartoes N\u00C3\u00BAmero de cart\u00C3\u00B5es existentes no Lote. (optional)
///
///  @param dataCadastro Data de Cadastro do Lote de Cart\u00C3\u00B5es N\u00C3\u00A3o Nominais. (optional)
///
///  @param usuarioCadastro Nome do Usu\u00C3\u00A1rio que criou o Lote. (optional)
///
///  @param statusProcessamento Indica o Status de Processamento do Lote. (optional)
///
///  @returns PierPageLoteCartoesPrePagosResponse*
///
-(NSNumber*) listarLotesCartoesPrePagosUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idOrigemComercial: (NSNumber*) idOrigemComercial
    idProduto: (NSNumber*) idProduto
    idTipoCartao: (NSNumber*) idTipoCartao
    idImagem: (NSNumber*) idImagem
    idEndereco: (NSNumber*) idEndereco
    quantidadeCartoes: (NSNumber*) quantidadeCartoes
    dataCadastro: (NSDate*) dataCadastro
    usuarioCadastro: (NSString*) usuarioCadastro
    statusProcessamento: (NSNumber*) statusProcessamento
    completionHandler: (void (^)(PierPageLoteCartoesPrePagosResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/lotes-cartoes-pre-pagos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (idOrigemComercial != nil) {
        
        queryParams[@"idOrigemComercial"] = idOrigemComercial;
    }
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (idTipoCartao != nil) {
        
        queryParams[@"idTipoCartao"] = idTipoCartao;
    }
    if (idImagem != nil) {
        
        queryParams[@"idImagem"] = idImagem;
    }
    if (idEndereco != nil) {
        
        queryParams[@"idEndereco"] = idEndereco;
    }
    if (quantidadeCartoes != nil) {
        
        queryParams[@"quantidadeCartoes"] = quantidadeCartoes;
    }
    if (dataCadastro != nil) {
        
        queryParams[@"dataCadastro"] = dataCadastro;
    }
    if (usuarioCadastro != nil) {
        
        queryParams[@"usuarioCadastro"] = usuarioCadastro;
    }
    if (statusProcessamento != nil) {
        
        queryParams[@"statusProcessamento"] = statusProcessamento;
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
                              responseType: @"PierPageLoteCartoesPrePagosResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageLoteCartoesPrePagosResponse*)data, error);
                           }
          ];
}

///
/// Listar as transfer\u00C3\u00AAncias banc\u00C3\u00A1rias realizadas
/// Este recurso tem como objetivo permitir que o portador de um Cart\u00C3\u00A3o possa consultar uma lista das Transfer\u00C3\u00AAncias Banc\u00C3\u00A1rias para os Favorecidos cadastrados.
///  @param _id Id Cart\u00C3\u00A3o 
///
///  @param idContaBancariaDestino C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta banc\u00C3\u00A1ria de destino (id) (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @returns PierLinkPageTransferenciaBancariaResponse_*
///
-(NSNumber*) listarUsingGET19WithId: (NSNumber*) _id
    idContaBancariaDestino: (NSNumber*) idContaBancariaDestino
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierLinkPageTransferenciaBancariaResponse_* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarUsingGET19`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/transferencias-creditos-contas-bancarias"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idContaBancariaDestino != nil) {
        
        queryParams[@"id_conta_bancaria_destino"] = idContaBancariaDestino;
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
                              responseType: @"PierLinkPageTransferenciaBancariaResponse_*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLinkPageTransferenciaBancariaResponse_*)data, error);
                           }
          ];
}

///
/// Lista os Cart\u00C3\u00B5es gerados pelo Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os cart\u00C3\u00B5es existentes na base do emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @param idStatusCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id). (optional)
///
///  @param idEstagioCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id). (optional)
///
///  @param idConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta a qual o cart\u00C3\u00A3o pertence (id). (optional)
///
///  @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o cart\u00C3\u00A3o pertence (id) (optional)
///
///  @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id). (optional)
///
///  @param tipoPortador Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: ('T': Titular, 'A': Adicional). (optional)
///
///  @param numeroCartao Apresenta o n\u00C3\u00BAmero do cart\u00C3\u00A3o. (optional)
///
///  @param nomeImpresso Apresenta o nome impresso no cart\u00C3\u00A3o. (optional)
///
///  @param dataGeracao Apresenta a data em que o cart\u00C3\u00A3o foi gerado. (optional)
///
///  @param dataStatusCartao Apresenta a data em que o idStatusCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver. (optional)
///
///  @param dataEstagioCartao Apresenta a data em que o idEstagioCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver. (optional)
///
///  @param dataValidade Apresenta a data de validade do cart\u00C3\u00A3o em formato yyyy-MM, quando houver. (optional)
///
///  @param dataImpressao Apresenta a data em que o cart\u00C3\u00A3o fora impresso, caso impress\u00C3\u00A3o em loja, ou a data em que ele fora inclu\u00C3\u00ADdo no arquivo para impress\u00C3\u00A3o via gr\u00C3\u00A1fica. (optional)
///
///  @param arquivoImpressao Apresenta o nome do arquivo onde o cart\u00C3\u00A3o fora inclu\u00C3\u00ADdo para impress\u00C3\u00A3o por uma gr\u00C3\u00A1fica, quando houver. (optional)
///
///  @param flagImpressaoOrigemComercial Quando ativa, indica que o cart\u00C3\u00A3o fora impresso na Origem Comercial. (optional)
///
///  @param flagProvisorio Quando ativa, indica que o cart\u00C3\u00A3o \u00C3\u00A9 provis\u00C3\u00B3rio. Ou seja, \u00C3\u00A9 um cart\u00C3\u00A3o para uso tempor\u00C3\u00A1rio quando se deseja permitir que o cliente transacione sem que ele tenha recebido um cart\u00C3\u00A3o definitivo. (optional)
///
///  @param codigoDesbloqueio Apresenta um c\u00C3\u00B3digo espec\u00C3\u00ADfico para ser utilizado como vari\u00C3\u00A1vel no processo de desbloqueio do cart\u00C3\u00A3o para emissores que querem usar esta funcionalidade. (optional)
///
///  @returns PierPageCartoes*
///
-(NSNumber*) listarUsingGET2WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idStatusCartao: (NSNumber*) idStatusCartao
    idEstagioCartao: (NSNumber*) idEstagioCartao
    idConta: (NSNumber*) idConta
    idPessoa: (NSNumber*) idPessoa
    idProduto: (NSNumber*) idProduto
    tipoPortador: (NSString*) tipoPortador
    numeroCartao: (NSString*) numeroCartao
    nomeImpresso: (NSString*) nomeImpresso
    dataGeracao: (NSDate*) dataGeracao
    dataStatusCartao: (NSDate*) dataStatusCartao
    dataEstagioCartao: (NSDate*) dataEstagioCartao
    dataValidade: (NSString*) dataValidade
    dataImpressao: (NSDate*) dataImpressao
    arquivoImpressao: (NSString*) arquivoImpressao
    flagImpressaoOrigemComercial: (NSNumber*) flagImpressaoOrigemComercial
    flagProvisorio: (NSNumber*) flagProvisorio
    codigoDesbloqueio: (NSString*) codigoDesbloqueio
    completionHandler: (void (^)(PierPageCartoes* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (idStatusCartao != nil) {
        
        queryParams[@"idStatusCartao"] = idStatusCartao;
    }
    if (idEstagioCartao != nil) {
        
        queryParams[@"idEstagioCartao"] = idEstagioCartao;
    }
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (tipoPortador != nil) {
        
        queryParams[@"tipoPortador"] = tipoPortador;
    }
    if (numeroCartao != nil) {
        
        queryParams[@"numeroCartao"] = numeroCartao;
    }
    if (nomeImpresso != nil) {
        
        queryParams[@"nomeImpresso"] = nomeImpresso;
    }
    if (dataGeracao != nil) {
        
        queryParams[@"dataGeracao"] = dataGeracao;
    }
    if (dataStatusCartao != nil) {
        
        queryParams[@"dataStatusCartao"] = dataStatusCartao;
    }
    if (dataEstagioCartao != nil) {
        
        queryParams[@"dataEstagioCartao"] = dataEstagioCartao;
    }
    if (dataValidade != nil) {
        
        queryParams[@"dataValidade"] = dataValidade;
    }
    if (dataImpressao != nil) {
        
        queryParams[@"dataImpressao"] = dataImpressao;
    }
    if (arquivoImpressao != nil) {
        
        queryParams[@"arquivoImpressao"] = arquivoImpressao;
    }
    if (flagImpressaoOrigemComercial != nil) {
        
        queryParams[@"flagImpressaoOrigemComercial"] = flagImpressaoOrigemComercial;
    }
    if (flagProvisorio != nil) {
        
        queryParams[@"flagProvisorio"] = flagProvisorio;
    }
    if (codigoDesbloqueio != nil) {
        
        queryParams[@"codigoDesbloqueio"] = codigoDesbloqueio;
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
                              responseType: @"PierPageCartoes*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageCartoes*)data, error);
                           }
          ];
}

///
/// Realizar transfer\u00C3\u00AAncia banc\u00C3\u00A1ria entre bancos / contas
/// Este recurso tem como objetivo permitir que o portador de um cart\u00C3\u00A3o possa realizar a transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito para outro cliente do mesmo emissor. Assim, o valor do cr\u00C3\u00A9dito somado a tarifa para transfer\u00C3\u00AAncia, quando praticada pelo emissor, ser\u00C3\u00A1 debitado da conta de origem, se houver saldo suficiente, e ser\u00C3\u00A1 creditado na conta de destino.
///  @param _id Id Cart\u00C3\u00A3o 
///
///  @param dataCompra Data da transfer\u00C3\u00AAncia 
///
///  @param proximoVencimentoPadrao Dia do vencimento padr\u00C3\u00A3o da fatura 
///
///  @param proximoVencimentoReal Data do vencimento real da fatura 
///
///  @param valorCompra Valor da transfer\u00C3\u00AAncia 
///
///  @param nomeFavorecido Apresenta o 'Nome Completo da PF' ou o 'Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)'. 
///
///  @param documentoFavorecido N\u00C3\u00BAmero do CPF ou CNPJ. 
///
///  @param banco C\u00C3\u00B3digo do banco 
///
///  @param numeroAgencia N\u00C3\u00BAmero da ag\u00C3\u00AAncia 
///
///  @param numeroConta N\u00C3\u00BAmero da conta 
///
///  @param flagContaPoupanca Sinaliza se conta banc\u00C3\u00A1ria \u00C3\u00A9 poupan\u00C3\u00A7a (1: Poupan\u00C3\u00A7a, 0: Conta corrente) 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @param digitoAgencia D\u00C3\u00ADgito da ag\u00C3\u00AAncia (optional)
///
///  @param digitoConta D\u00C3\u00ADgito da conta (optional)
///
///  @returns PierLinkTransferenciaBancariaResponse_*
///
-(NSNumber*) transferirUsingPOSTWithId: (NSNumber*) _id
    dataCompra: (NSDate*) dataCompra
    proximoVencimentoPadrao: (NSDate*) proximoVencimentoPadrao
    proximoVencimentoReal: (NSDate*) proximoVencimentoReal
    valorCompra: (NSNumber*) valorCompra
    nomeFavorecido: (NSString*) nomeFavorecido
    documentoFavorecido: (NSString*) documentoFavorecido
    banco: (NSNumber*) banco
    numeroAgencia: (NSString*) numeroAgencia
    numeroConta: (NSString*) numeroConta
    flagContaPoupanca: (NSNumber*) flagContaPoupanca
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    digitoAgencia: (NSString*) digitoAgencia
    digitoConta: (NSString*) digitoConta
    completionHandler: (void (^)(PierLinkTransferenciaBancariaResponse_* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'dataCompra' is set
    if (dataCompra == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataCompra` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'proximoVencimentoPadrao' is set
    if (proximoVencimentoPadrao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `proximoVencimentoPadrao` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'proximoVencimentoReal' is set
    if (proximoVencimentoReal == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `proximoVencimentoReal` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'valorCompra' is set
    if (valorCompra == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `valorCompra` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'nomeFavorecido' is set
    if (nomeFavorecido == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nomeFavorecido` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'documentoFavorecido' is set
    if (documentoFavorecido == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentoFavorecido` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'banco' is set
    if (banco == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `banco` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'numeroAgencia' is set
    if (numeroAgencia == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroAgencia` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'numeroConta' is set
    if (numeroConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroConta` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'flagContaPoupanca' is set
    if (flagContaPoupanca == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `flagContaPoupanca` when calling `transferirUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/transferencias-creditos-contas-bancarias"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (dataCompra != nil) {
        
        queryParams[@"dataCompra"] = dataCompra;
    }
    if (proximoVencimentoPadrao != nil) {
        
        queryParams[@"proximoVencimentoPadrao"] = proximoVencimentoPadrao;
    }
    if (proximoVencimentoReal != nil) {
        
        queryParams[@"proximoVencimentoReal"] = proximoVencimentoReal;
    }
    if (valorCompra != nil) {
        
        queryParams[@"valorCompra"] = valorCompra;
    }
    if (nomeFavorecido != nil) {
        
        queryParams[@"nomeFavorecido"] = nomeFavorecido;
    }
    if (documentoFavorecido != nil) {
        
        queryParams[@"documentoFavorecido"] = documentoFavorecido;
    }
    if (banco != nil) {
        
        queryParams[@"banco"] = banco;
    }
    if (numeroAgencia != nil) {
        
        queryParams[@"numeroAgencia"] = numeroAgencia;
    }
    if (digitoAgencia != nil) {
        
        queryParams[@"digitoAgencia"] = digitoAgencia;
    }
    if (numeroConta != nil) {
        
        queryParams[@"numeroConta"] = numeroConta;
    }
    if (digitoConta != nil) {
        
        queryParams[@"digitoConta"] = digitoConta;
    }
    if (flagContaPoupanca != nil) {
        
        queryParams[@"flagContaPoupanca"] = flagContaPoupanca;
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
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierLinkTransferenciaBancariaResponse_*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLinkTransferenciaBancariaResponse_*)data, error);
                           }
          ];
}

///
/// Permite validar um Cart\u00C3\u00A3o com bandeira Mastercard a partir do chip
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores validem o criptograma gerado a partir da leitura de um chip EMV de um Cart\u00C3\u00A3o com bandeira Mastercard a fim de verificar a sua autenticidade. A utiliza\u00C3\u00A7\u00C3\u00A3o desde m\u00C3\u00A9todo tem diversas aplica\u00C3\u00A7\u00C3\u00B5es, sendo a principal delas a de Identifica\u00C3\u00A7\u00C3\u00A3o Positiva do Cart\u00C3\u00A3o antes de permitir que o portador realize transa\u00C3\u00A7\u00C3\u00B5es diversas, como as de compra e saque na modalidade d\u00C3\u00A9bito em conta corrente, dentre outras.
///  @param numeroCartao N\u00C3\u00BAmero do cart\u00C3\u00A3o a ser validado. 
///
///  @param criptograma Criptograma do cart\u00C3\u00A3o no formato de55 
///
///  @returns PierValidaCartao*
///
-(NSNumber*) validarCartaoChipBandeiradoUsingGETWithNumeroCartao: (NSString*) numeroCartao
    criptograma: (NSString*) criptograma
    completionHandler: (void (^)(PierValidaCartao* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroCartao' is set
    if (numeroCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroCartao` when calling `validarCartaoChipBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'criptograma' is set
    if (criptograma == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `criptograma` when calling `validarCartaoChipBandeiradoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/bandeirados/validar-chip"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroCartao != nil) {
        
        queryParams[@"numero_cartao"] = numeroCartao;
    }
    if (criptograma != nil) {
        
        queryParams[@"criptograma"] = criptograma;
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
                              responseType: @"PierValidaCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierValidaCartao*)data, error);
                           }
          ];
}

///
/// Permite validar um Cart\u00C3\u00A3o bandeirado a partir dos dados Impressos
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores validem a autenticidade de um determinado Cart\u00C3\u00A3o a partir do envio dos dados sens\u00C3\u00ADveis impressos nele. A utiliza\u00C3\u00A7\u00C3\u00A3o desde m\u00C3\u00A9todo tem diversas aplica\u00C3\u00A7\u00C3\u00B5es, sendo a principal delas a de Identifica\u00C3\u00A7\u00C3\u00A3o Positiva do Cart\u00C3\u00A3o para a realiza\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00B5es e-commerce ou por meio de Centrais de Atendimento Eletr\u00C3\u00B4nico (URA), dentre outras.
///  @param numeroCartao N\u00C3\u00BAmero do cart\u00C3\u00A3o a ser validado. 
///
///  @param nomePortador Nome do portador do cart\u00C3\u00A3o 
///
///  @param dataValidade Data de validade do cart\u00C3\u00A3o no formato yyyy-MM 
///
///  @param codigoSeguranca C\u00C3\u00B3digo de seguran\u00C3\u00A7a do cart\u00C3\u00A3o com tr\u00C3\u00AAs n\u00C3\u00BAmeros 
///
///  @returns PierValidaCartao*
///
-(NSNumber*) validarCartaoDigitadoBandeiradoUsingGETWithNumeroCartao: (NSString*) numeroCartao
    nomePortador: (NSString*) nomePortador
    dataValidade: (NSString*) dataValidade
    codigoSeguranca: (NSString*) codigoSeguranca
    completionHandler: (void (^)(PierValidaCartao* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroCartao' is set
    if (numeroCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroCartao` when calling `validarCartaoDigitadoBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'nomePortador' is set
    if (nomePortador == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nomePortador` when calling `validarCartaoDigitadoBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'dataValidade' is set
    if (dataValidade == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataValidade` when calling `validarCartaoDigitadoBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'codigoSeguranca' is set
    if (codigoSeguranca == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `codigoSeguranca` when calling `validarCartaoDigitadoBandeiradoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/bandeirados/validar-digitado"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroCartao != nil) {
        
        queryParams[@"numero_cartao"] = numeroCartao;
    }
    if (nomePortador != nil) {
        
        queryParams[@"nome_portador"] = nomePortador;
    }
    if (dataValidade != nil) {
        
        queryParams[@"data_validade"] = dataValidade;
    }
    if (codigoSeguranca != nil) {
        
        queryParams[@"codigo_seguranca"] = codigoSeguranca;
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
                              responseType: @"PierValidaCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierValidaCartao*)data, error);
                           }
          ];
}

///
/// Permite validar um Cart\u00C3\u00A3o a partir dos dados Impressos
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores validem a autenticidade de um determinado Cart\u00C3\u00A3o a partir do envio dos dados sens\u00C3\u00ADveis impressos nele. A utiliza\u00C3\u00A7\u00C3\u00A3o desde m\u00C3\u00A9todo tem diversas aplica\u00C3\u00A7\u00C3\u00B5es, sendo a principal delas a de Identifica\u00C3\u00A7\u00C3\u00A3o Positiva do Cart\u00C3\u00A3o para a realiza\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00B5es e-commerce ou por meio de Centrais de Atendimento Eletr\u00C3\u00B4nico (URA), dentre outras.
///  @param numeroCartao N\u00C3\u00BAmero do cart\u00C3\u00A3o a ser validado. 
///
///  @param nomePortador Nome do portador do cart\u00C3\u00A3o 
///
///  @param dataValidade Data de validade do cart\u00C3\u00A3o no formato yyyy-MM 
///
///  @param codigoSeguranca C\u00C3\u00B3digo de seguran\u00C3\u00A7a do cart\u00C3\u00A3o com tr\u00C3\u00AAs n\u00C3\u00BAmeros 
///
///  @returns PierValidaCartao*
///
-(NSNumber*) validarCartaoDigitadoNaoBandeiradoUsingGETWithNumeroCartao: (NSString*) numeroCartao
    nomePortador: (NSString*) nomePortador
    dataValidade: (NSString*) dataValidade
    codigoSeguranca: (NSString*) codigoSeguranca
    completionHandler: (void (^)(PierValidaCartao* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroCartao' is set
    if (numeroCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroCartao` when calling `validarCartaoDigitadoNaoBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'nomePortador' is set
    if (nomePortador == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nomePortador` when calling `validarCartaoDigitadoNaoBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'dataValidade' is set
    if (dataValidade == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataValidade` when calling `validarCartaoDigitadoNaoBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'codigoSeguranca' is set
    if (codigoSeguranca == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `codigoSeguranca` when calling `validarCartaoDigitadoNaoBandeiradoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/nao-bandeirados/validar-digitado"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroCartao != nil) {
        
        queryParams[@"numero_cartao"] = numeroCartao;
    }
    if (nomePortador != nil) {
        
        queryParams[@"nome_portador"] = nomePortador;
    }
    if (dataValidade != nil) {
        
        queryParams[@"data_validade"] = dataValidade;
    }
    if (codigoSeguranca != nil) {
        
        queryParams[@"codigo_seguranca"] = codigoSeguranca;
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
                              responseType: @"PierValidaCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierValidaCartao*)data, error);
                           }
          ];
}

///
/// Permite validar um Cart\u00C3\u00A3o Bandeirado a partir da Tarja
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores validem a autenticidade de um determinado Cart\u00C3\u00A3o a partir da leitura da tarja magn\u00C3\u00A9tica do mesmo. A utiliza\u00C3\u00A7\u00C3\u00A3o desde m\u00C3\u00A9todo tem diversas aplica\u00C3\u00A7\u00C3\u00B5es, sendo a principal delas a de Identifica\u00C3\u00A7\u00C3\u00A3o Positiva do Cart\u00C3\u00A3o antes de permitir que o portador realize transa\u00C3\u00A7\u00C3\u00B5es diversas, como as de compra e saque na modalidade d\u00C3\u00A9bito em conta corrente, dentre outras.
///  @param numeroCartao N\u00C3\u00BAmero do cart\u00C3\u00A3o a ser validado. 
///
///  @param trilha1 Trilha 1 do cart\u00C3\u00A3o a ser validado 
///
///  @param trilha2 Trilha 2 do cart\u00C3\u00A3o a ser validado 
///
///  @returns PierValidaCartao*
///
-(NSNumber*) validarCartaoTarjaBandeiradoUsingGETWithNumeroCartao: (NSString*) numeroCartao
    trilha1: (NSString*) trilha1
    trilha2: (NSString*) trilha2
    completionHandler: (void (^)(PierValidaCartao* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroCartao' is set
    if (numeroCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroCartao` when calling `validarCartaoTarjaBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'trilha1' is set
    if (trilha1 == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `trilha1` when calling `validarCartaoTarjaBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'trilha2' is set
    if (trilha2 == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `trilha2` when calling `validarCartaoTarjaBandeiradoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/bandeirados/validar-tarja"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroCartao != nil) {
        
        queryParams[@"numero_cartao"] = numeroCartao;
    }
    if (trilha1 != nil) {
        
        queryParams[@"trilha1"] = trilha1;
    }
    if (trilha2 != nil) {
        
        queryParams[@"trilha2"] = trilha2;
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
                              responseType: @"PierValidaCartao*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierValidaCartao*)data, error);
                           }
          ];
}

///
/// Permite validar a senha de um Cart\u00C3\u00A3o
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir validar que a senha informada pelo portador de um determinado cart\u00C3\u00A3o est\u00C3\u00A1 correta.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @param senha Senha para ser validada. 
///
///  @returns NSString*
///
-(NSNumber*) validarSenhaUsingGETWithId: (NSNumber*) _id
    senha: (NSString*) senha
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `validarSenhaUsingGET`"];
    }
    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `validarSenhaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/validar-senha"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (senha != nil) {
        headerParams[@"senha"] = senha;
    }
    

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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}



@end
