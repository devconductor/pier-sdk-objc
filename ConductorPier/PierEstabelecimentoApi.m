#import "PierEstabelecimentoApi.h"
#import "PierQueryParamCollection.h"
#import "PierPessoaJuridicaResponse.h"
#import "PierTelefoneEstabelecimentoResponse.h"
#import "PierTerminalResponse.h"
#import "PierTerminalUpdate.h"
#import "PierCredorResponse.h"
#import "PierCredorDTO.h"
#import "PierEstabelecimentoResponse.h"
#import "PierPageCredorResponse.h"
#import "PierPageEstabelecimentoResponse.h"
#import "PierPagePessoaJuridicaResponse.h"
#import "PierPageTelefoneEstabelecimentoResponse.h"
#import "PierPageTerminalResponse.h"


@interface PierEstabelecimentoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierEstabelecimentoApi

static PierEstabelecimentoApi* singletonAPI = nil;

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

+(PierEstabelecimentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierEstabelecimentoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierEstabelecimentoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierEstabelecimentoApi alloc] init];
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
/// Alterar Pessoa Jur\u00C3\u00ADdica
/// Altera uma pessoa jur\u00C3\u00ADdica.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da pessoa jur\u00C3\u00ADdica 
///
///  @param razaoSocial Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica 
///
///  @param inscricaoEstadual N\u00C3\u00BAmero da inscri\u00C3\u00A7\u00C3\u00A3o estadual (optional)
///
///  @param contato Nome da pessoa para entrar em contato (optional)
///
///  @param banco C\u00C3\u00B3digo do banco (optional)
///
///  @param agencia Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica (optional)
///
///  @param digitoVerificadorAgencia D\u00C3\u00ADgito Verificador da ag\u00C3\u00AAncia (optional)
///
///  @param contaCorrente C\u00C3\u00B3digo da Conta Corrente (optional)
///
///  @param digitoVerificadorContaCorrente D\u00C3\u00ADgito Verificador da Conta Corrente (optional)
///
///  @returns PierPessoaJuridicaResponse*
///
-(NSNumber*) alterarUsingPUT11WithId: (NSNumber*) _id
    razaoSocial: (NSString*) razaoSocial
    inscricaoEstadual: (NSString*) inscricaoEstadual
    contato: (NSString*) contato
    banco: (NSNumber*) banco
    agencia: (NSNumber*) agencia
    digitoVerificadorAgencia: (NSString*) digitoVerificadorAgencia
    contaCorrente: (NSString*) contaCorrente
    digitoVerificadorContaCorrente: (NSString*) digitoVerificadorContaCorrente
    completionHandler: (void (^)(PierPessoaJuridicaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT11`"];
    }
    
    // verify the required parameter 'razaoSocial' is set
    if (razaoSocial == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `razaoSocial` when calling `alterarUsingPUT11`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas-juridicas/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (razaoSocial != nil) {
        
        queryParams[@"razaoSocial"] = razaoSocial;
    }
    if (inscricaoEstadual != nil) {
        
        queryParams[@"inscricaoEstadual"] = inscricaoEstadual;
    }
    if (contato != nil) {
        
        queryParams[@"contato"] = contato;
    }
    if (banco != nil) {
        
        queryParams[@"banco"] = banco;
    }
    if (agencia != nil) {
        
        queryParams[@"agencia"] = agencia;
    }
    if (digitoVerificadorAgencia != nil) {
        
        queryParams[@"digitoVerificadorAgencia"] = digitoVerificadorAgencia;
    }
    if (contaCorrente != nil) {
        
        queryParams[@"contaCorrente"] = contaCorrente;
    }
    if (digitoVerificadorContaCorrente != nil) {
        
        queryParams[@"digitoVerificadorContaCorrente"] = digitoVerificadorContaCorrente;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierPessoaJuridicaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaJuridicaResponse*)data, error);
                           }
          ];
}

///
/// Altera um Telefone do estabelecimento
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o dos telefones dos estabelecimentos.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone Estabelecimento (id). 
///
///  @param ddd C\u00C3\u00B3digo DDD do telefone (id). 
///
///  @param telefone N\u00C3\u00BAmero do telefone. 
///
///  @param ramal N\u00C3\u00BAmero do ramal. (optional)
///
///  @returns PierTelefoneEstabelecimentoResponse*
///
-(NSNumber*) alterarUsingPUT13WithId: (NSNumber*) _id
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT13`"];
    }
    
    // verify the required parameter 'ddd' is set
    if (ddd == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `ddd` when calling `alterarUsingPUT13`"];
    }
    
    // verify the required parameter 'telefone' is set
    if (telefone == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `telefone` when calling `alterarUsingPUT13`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones-estabelecimentos/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ddd != nil) {
        
        queryParams[@"ddd"] = ddd;
    }
    if (telefone != nil) {
        
        queryParams[@"telefone"] = telefone;
    }
    if (ramal != nil) {
        
        queryParams[@"ramal"] = ramal;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierTelefoneEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTelefoneEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Altera um Terminal
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o dos Terminais.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do terminal (id). 
///
///  @param terminalUpdate terminalUpdate 
///
///  @returns PierTerminalResponse*
///
-(NSNumber*) alterarUsingPUT15WithId: (NSNumber*) _id
    terminalUpdate: (PierTerminalUpdate*) terminalUpdate
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT15`"];
    }
    
    // verify the required parameter 'terminalUpdate' is set
    if (terminalUpdate == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `terminalUpdate` when calling `alterarUsingPUT15`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais/{id}"];

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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = terminalUpdate;
    

    
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
                              responseType: @"PierTerminalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTerminalResponse*)data, error);
                           }
          ];
}

///
/// Alterar Credor
/// Altera um credor.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da credor 
///
///  @param credorUpdate credorUpdate 
///
///  @returns PierCredorResponse*
///
-(NSNumber*) alterarUsingPUT5WithId: (NSNumber*) _id
    credorUpdate: (PierCredorDTO*) credorUpdate
    completionHandler: (void (^)(PierCredorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT5`"];
    }
    
    // verify the required parameter 'credorUpdate' is set
    if (credorUpdate == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `credorUpdate` when calling `alterarUsingPUT5`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/credores/{id}"];

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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = credorUpdate;
    

    
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
                              responseType: @"PierCredorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCredorResponse*)data, error);
                           }
          ];
}

///
/// Cadastrar Credor
/// Cadastra um credor.
///  @param credorPersist credorPersist 
///
///  @returns PierCredorResponse*
///
-(NSNumber*) cadastrarUsingPOST2WithCredorPersist: (PierCredorDTO*) credorPersist
    completionHandler: (void (^)(PierCredorResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'credorPersist' is set
    if (credorPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `credorPersist` when calling `cadastrarUsingPOST2`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/credores"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = credorPersist;
    

    
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
                              responseType: @"PierCredorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCredorResponse*)data, error);
                           }
          ];
}

///
/// Cadastrar Pessoa Jur\u00C3\u00ADdica
/// Cadastra uma pessoa jur\u00C3\u00ADdica.
///  @param razaoSocial Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica 
///
///  @param cnpj C\u00C3\u00B3digo do Cadastro Nacional de Pessoas Jur\u00C3\u00ADdicas 
///
///  @param inscricaoEstadual N\u00C3\u00BAmero da inscri\u00C3\u00A7\u00C3\u00A3o estadual (optional)
///
///  @param contato Nome da pessoa para entrar em contato (optional)
///
///  @param banco C\u00C3\u00B3digo do banco (optional)
///
///  @param agencia Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica (optional)
///
///  @param digitoVerificadorAgencia D\u00C3\u00ADgito Verificador da ag\u00C3\u00AAncia (optional)
///
///  @param contaCorrente C\u00C3\u00B3digo da Conta Corrente (optional)
///
///  @param digitoVerificadorContaCorrente D\u00C3\u00ADgito Verificador da Conta Corrente (optional)
///
///  @returns PierPessoaJuridicaResponse*
///
-(NSNumber*) cadastrarUsingPOST3WithRazaoSocial: (NSString*) razaoSocial
    cnpj: (NSString*) cnpj
    inscricaoEstadual: (NSString*) inscricaoEstadual
    contato: (NSString*) contato
    banco: (NSNumber*) banco
    agencia: (NSNumber*) agencia
    digitoVerificadorAgencia: (NSString*) digitoVerificadorAgencia
    contaCorrente: (NSString*) contaCorrente
    digitoVerificadorContaCorrente: (NSString*) digitoVerificadorContaCorrente
    completionHandler: (void (^)(PierPessoaJuridicaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'razaoSocial' is set
    if (razaoSocial == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `razaoSocial` when calling `cadastrarUsingPOST3`"];
    }
    
    // verify the required parameter 'cnpj' is set
    if (cnpj == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cnpj` when calling `cadastrarUsingPOST3`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas-juridicas"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (razaoSocial != nil) {
        
        queryParams[@"razaoSocial"] = razaoSocial;
    }
    if (cnpj != nil) {
        
        queryParams[@"cnpj"] = cnpj;
    }
    if (inscricaoEstadual != nil) {
        
        queryParams[@"inscricaoEstadual"] = inscricaoEstadual;
    }
    if (contato != nil) {
        
        queryParams[@"contato"] = contato;
    }
    if (banco != nil) {
        
        queryParams[@"banco"] = banco;
    }
    if (agencia != nil) {
        
        queryParams[@"agencia"] = agencia;
    }
    if (digitoVerificadorAgencia != nil) {
        
        queryParams[@"digitoVerificadorAgencia"] = digitoVerificadorAgencia;
    }
    if (contaCorrente != nil) {
        
        queryParams[@"contaCorrente"] = contaCorrente;
    }
    if (digitoVerificadorContaCorrente != nil) {
        
        queryParams[@"digitoVerificadorContaCorrente"] = digitoVerificadorContaCorrente;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierPessoaJuridicaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaJuridicaResponse*)data, error);
                           }
          ];
}

///
/// Consultar credor
/// Consulta um credor atrav\u00C3\u00A9s do seu identificador.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da credor 
///
///  @returns PierCredorResponse*
///
-(NSNumber*) consultarUsingGET11WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierCredorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET11`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/credores/{id}"];

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
    NSArray *authSettings = @[];

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
                              responseType: @"PierCredorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCredorResponse*)data, error);
                           }
          ];
}

///
/// Consultar estabelecimento por id
/// Consulta os detalhes de um determinado estabelecimento
///  @param _id Id 
///
///  @returns PierEstabelecimentoResponse*
///
-(NSNumber*) consultarUsingGET15WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET15`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos/{id}"];

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
    NSArray *authSettings = @[];

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
                              responseType: @"PierEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Consultar pessoa jur\u00C3\u00ADdica
/// Consulta uma pessoa jur\u00C3\u00ADdica atrav\u00C3\u00A9s do seu identificador.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da pessoa jur\u00C3\u00ADdica 
///
///  @returns PierPessoaJuridicaResponse*
///
-(NSNumber*) consultarUsingGET20WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaJuridicaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET20`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas-juridicas/{id}"];

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
    NSArray *authSettings = @[];

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
                              responseType: @"PierPessoaJuridicaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaJuridicaResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado telefone de um estabelecimento
/// Este m\u00C3\u00A9todo permite consultar um determinado telefone de um estabelecimento a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone Estabelecimento (id). 
///
///  @returns PierTelefoneEstabelecimentoResponse*
///
-(NSNumber*) consultarUsingGET26WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET26`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones-estabelecimentos/{id}"];

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
    NSArray *authSettings = @[];

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
                              responseType: @"PierTelefoneEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTelefoneEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Terminal
/// Este m\u00C3\u00A9todo permite consultar um determinado Terminal a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id). 
///
///  @returns PierTerminalResponse*
///
-(NSNumber*) consultarUsingGET28WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET28`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais/{id}"];

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
    NSArray *authSettings = @[];

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
                              responseType: @"PierTerminalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTerminalResponse*)data, error);
                           }
          ];
}

///
/// Listar credores
/// Lista credores cadastrados. 
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idPessoaJuridica Identificador da pessoa jur\u00C3\u00ADdica do credor (optional)
///
///  @param nome Nome do credor (optional)
///
///  @param periodicidade Periodicidade do pagamento (optional)
///
///  @param pagamentoSemanal Dia para pagamento semanal (optional)
///
///  @param pagamentoMensal Dia da data para o pagamento mensal (optional)
///
///  @param pagamentoDecendialPrimeiro Dia da data para o primeiro pagamento decendial (optional)
///
///  @param pagamentoDecendialSegundo Dia da data para o segundo pagamento decendial (optional)
///
///  @param pagamentoDecendialTerceiro Dia da data para o terceiro pagamento decendial (optional)
///
///  @param pagamentoQuinzenalPrimeiro Dia da data para o primeiro pagamento quinzenal (optional)
///
///  @param pagamentoQuinzenalSegundo Dia da data para o segundo pagamento quinzenal (optional)
///
///  @param credorBanco Indica se este credor pode ser um Credor RAV de outros credores (optional)
///
///  @param percentualRAV Valor percentual do RAV do credor (optional)
///
///  @param recebeRAV Indica se o credor recebe RAV e o tipo (optional)
///
///  @param percentualMultiplica Percentual Multiplica (optional)
///
///  @param taxaAdm Taxa Administrativa (optional)
///
///  @param taxaBanco Taxa do Banco (optional)
///
///  @param limiteRAV Valor limite do RAV (optional)
///
///  @param idCredorRAV C\u00C3\u00B3digo identificador do credor RAV (optional)
///
///  @param banco C\u00C3\u00B3digo do banco (optional)
///
///  @param agencia Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica (optional)
///
///  @param digitoVerificadorAgencia D\u00C3\u00ADgito Verificador da ag\u00C3\u00AAncia (optional)
///
///  @param contaCorrente C\u00C3\u00B3digo da Conta Corrente (optional)
///
///  @param digitoVerificadorContaCorrente D\u00C3\u00ADgito Verificador da Conta Corrente (optional)
///
///  @returns PierPageCredorResponse*
///
-(NSNumber*) listarUsingGET14WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idPessoaJuridica: (NSNumber*) idPessoaJuridica
    nome: (NSString*) nome
    periodicidade: (NSString*) periodicidade
    pagamentoSemanal: (NSString*) pagamentoSemanal
    pagamentoMensal: (NSNumber*) pagamentoMensal
    pagamentoDecendialPrimeiro: (NSNumber*) pagamentoDecendialPrimeiro
    pagamentoDecendialSegundo: (NSNumber*) pagamentoDecendialSegundo
    pagamentoDecendialTerceiro: (NSNumber*) pagamentoDecendialTerceiro
    pagamentoQuinzenalPrimeiro: (NSNumber*) pagamentoQuinzenalPrimeiro
    pagamentoQuinzenalSegundo: (NSNumber*) pagamentoQuinzenalSegundo
    credorBanco: (NSNumber*) credorBanco
    percentualRAV: (NSNumber*) percentualRAV
    recebeRAV: (NSString*) recebeRAV
    percentualMultiplica: (NSNumber*) percentualMultiplica
    taxaAdm: (NSNumber*) taxaAdm
    taxaBanco: (NSNumber*) taxaBanco
    limiteRAV: (NSNumber*) limiteRAV
    idCredorRAV: (NSNumber*) idCredorRAV
    banco: (NSNumber*) banco
    agencia: (NSNumber*) agencia
    digitoVerificadorAgencia: (NSString*) digitoVerificadorAgencia
    contaCorrente: (NSString*) contaCorrente
    digitoVerificadorContaCorrente: (NSString*) digitoVerificadorContaCorrente
    completionHandler: (void (^)(PierPageCredorResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/credores"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sort != nil) {
        
        queryParams[@"sort"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: sort format: @"multi"];
        
        
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (idPessoaJuridica != nil) {
        
        queryParams[@"idPessoaJuridica"] = idPessoaJuridica;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (periodicidade != nil) {
        
        queryParams[@"periodicidade"] = periodicidade;
    }
    if (pagamentoSemanal != nil) {
        
        queryParams[@"pagamentoSemanal"] = pagamentoSemanal;
    }
    if (pagamentoMensal != nil) {
        
        queryParams[@"pagamentoMensal"] = pagamentoMensal;
    }
    if (pagamentoDecendialPrimeiro != nil) {
        
        queryParams[@"pagamentoDecendialPrimeiro"] = pagamentoDecendialPrimeiro;
    }
    if (pagamentoDecendialSegundo != nil) {
        
        queryParams[@"pagamentoDecendialSegundo"] = pagamentoDecendialSegundo;
    }
    if (pagamentoDecendialTerceiro != nil) {
        
        queryParams[@"pagamentoDecendialTerceiro"] = pagamentoDecendialTerceiro;
    }
    if (pagamentoQuinzenalPrimeiro != nil) {
        
        queryParams[@"pagamentoQuinzenalPrimeiro"] = pagamentoQuinzenalPrimeiro;
    }
    if (pagamentoQuinzenalSegundo != nil) {
        
        queryParams[@"pagamentoQuinzenalSegundo"] = pagamentoQuinzenalSegundo;
    }
    if (credorBanco != nil) {
        
        queryParams[@"credorBanco"] = credorBanco;
    }
    if (percentualRAV != nil) {
        
        queryParams[@"percentualRAV"] = percentualRAV;
    }
    if (recebeRAV != nil) {
        
        queryParams[@"recebeRAV"] = recebeRAV;
    }
    if (percentualMultiplica != nil) {
        
        queryParams[@"percentualMultiplica"] = percentualMultiplica;
    }
    if (taxaAdm != nil) {
        
        queryParams[@"taxaAdm"] = taxaAdm;
    }
    if (taxaBanco != nil) {
        
        queryParams[@"taxaBanco"] = taxaBanco;
    }
    if (limiteRAV != nil) {
        
        queryParams[@"limiteRAV"] = limiteRAV;
    }
    if (idCredorRAV != nil) {
        
        queryParams[@"idCredorRAV"] = idCredorRAV;
    }
    if (banco != nil) {
        
        queryParams[@"banco"] = banco;
    }
    if (agencia != nil) {
        
        queryParams[@"agencia"] = agencia;
    }
    if (digitoVerificadorAgencia != nil) {
        
        queryParams[@"digitoVerificadorAgencia"] = digitoVerificadorAgencia;
    }
    if (contaCorrente != nil) {
        
        queryParams[@"contaCorrente"] = contaCorrente;
    }
    if (digitoVerificadorContaCorrente != nil) {
        
        queryParams[@"digitoVerificadorContaCorrente"] = digitoVerificadorContaCorrente;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierPageCredorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageCredorResponse*)data, error);
                           }
          ];
}

///
/// Lista Estabelecimentos
/// Lista todas os Estabelecimentos
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id). (optional)
///
///  @param numeroReceitaFederal Apresenta o n\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento na Receita Federal. (optional)
///
///  @param nome Nome do Estabelecimento. (optional)
///
///  @param descricao Raz\u00C3\u00A3o Social do Estabelecimento. (optional)
///
///  @param nomeFantasia T\u00C3\u00ADtulo Comercial do Estabelecimento. (optional)
///
///  @param cep C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP). (optional)
///
///  @param nomeLogradouro Nome do Logradouro. (optional)
///
///  @param numeroEndereco N\u00C3\u00BAmero do endere\u00C3\u00A7o. (optional)
///
///  @param complemento Descri\u00C3\u00A7\u00C3\u00B5es complementares referente ao endere\u00C3\u00A7o. (optional)
///
///  @param bairro Nome do bairro do endere\u00C3\u00A7o. (optional)
///
///  @param cidade Nome da cidade do endere\u00C3\u00A7o. (optional)
///
///  @param uf Sigla de identifica\u00C3\u00A7\u00C3\u00A3o da Unidade Federativa do endere\u00C3\u00A7o. (optional)
///
///  @param pais Nome do pa\u00C3\u00ADs. (optional)
///
///  @param dataCadastramento Data de Cadastro do Estabelecimento, no formato yyyy-MM-dd. (optional)
///
///  @param contato Nome da pessoa para contato com o Estabelecimento. (optional)
///
///  @param email E-mail da pessoa para contato com o Estabelecimento. (optional)
///
///  @param flagArquivoSecrFazenda Indica se o estabelecimento ser\u00C3\u00A1 inclu\u00C3\u00ADdo no arquivo de registro para a Secretaria da Fazenda Estadual. (optional)
///
///  @param flagCartaoDigitado Indica se o estabelecimento poder\u00C3\u00A1 originar transa\u00C3\u00A7\u00C3\u00B5es sem a leitura da tarja ou do chip do cart\u00C3\u00A3o. (optional)
///
///  @param inativo Indica se o estabelecimento est\u00C3\u00A1 inativo. (optional)
///
///  @returns PierPageEstabelecimentoResponse*
///
-(NSNumber*) listarUsingGET19WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
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
    completionHandler: (void (^)(PierPageEstabelecimentoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sort != nil) {
        
        queryParams[@"sort"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: sort format: @"multi"];
        
        
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (numeroReceitaFederal != nil) {
        
        queryParams[@"numeroReceitaFederal"] = numeroReceitaFederal;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (nomeFantasia != nil) {
        
        queryParams[@"nomeFantasia"] = nomeFantasia;
    }
    if (cep != nil) {
        
        queryParams[@"cep"] = cep;
    }
    if (nomeLogradouro != nil) {
        
        queryParams[@"nomeLogradouro"] = nomeLogradouro;
    }
    if (numeroEndereco != nil) {
        
        queryParams[@"numeroEndereco"] = numeroEndereco;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
    }
    if (bairro != nil) {
        
        queryParams[@"bairro"] = bairro;
    }
    if (cidade != nil) {
        
        queryParams[@"cidade"] = cidade;
    }
    if (uf != nil) {
        
        queryParams[@"uf"] = uf;
    }
    if (pais != nil) {
        
        queryParams[@"pais"] = pais;
    }
    if (dataCadastramento != nil) {
        
        queryParams[@"dataCadastramento"] = dataCadastramento;
    }
    if (contato != nil) {
        
        queryParams[@"contato"] = contato;
    }
    if (email != nil) {
        
        queryParams[@"email"] = email;
    }
    if (flagArquivoSecrFazenda != nil) {
        
        queryParams[@"flagArquivoSecrFazenda"] = flagArquivoSecrFazenda;
    }
    if (flagCartaoDigitado != nil) {
        
        queryParams[@"flagCartaoDigitado"] = flagCartaoDigitado;
    }
    if (inativo != nil) {
        
        queryParams[@"inativo"] = inativo;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierPageEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Listar pessoas jur\u00C3\u00ADdicas
/// Lista pessoas jur\u00C3\u00ADdicas cadastradas. 
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param razaoSocial Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica (optional)
///
///  @param cnpj C\u00C3\u00B3digo do Cadastro Nacional de Pessoas Jur\u00C3\u00ADdicas (optional)
///
///  @param inscricaoEstadual N\u00C3\u00BAmero da inscri\u00C3\u00A7\u00C3\u00A3o estadual (optional)
///
///  @param contato Nome da pessoa para entrar em contato (optional)
///
///  @param banco C\u00C3\u00B3digo do banco (optional)
///
///  @param agencia Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica (optional)
///
///  @param digitoVerificadorAgencia D\u00C3\u00ADgito Verificador da ag\u00C3\u00AAncia (optional)
///
///  @param contaCorrente C\u00C3\u00B3digo da Conta Corrente (optional)
///
///  @param digitoVerificadorContaCorrente D\u00C3\u00ADgito Verificador da Conta Corrente (optional)
///
///  @returns PierPagePessoaJuridicaResponse*
///
-(NSNumber*) listarUsingGET24WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    razaoSocial: (NSString*) razaoSocial
    cnpj: (NSString*) cnpj
    inscricaoEstadual: (NSString*) inscricaoEstadual
    contato: (NSString*) contato
    banco: (NSNumber*) banco
    agencia: (NSNumber*) agencia
    digitoVerificadorAgencia: (NSString*) digitoVerificadorAgencia
    contaCorrente: (NSString*) contaCorrente
    digitoVerificadorContaCorrente: (NSString*) digitoVerificadorContaCorrente
    completionHandler: (void (^)(PierPagePessoaJuridicaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas-juridicas"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sort != nil) {
        
        queryParams[@"sort"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: sort format: @"multi"];
        
        
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (razaoSocial != nil) {
        
        queryParams[@"razaoSocial"] = razaoSocial;
    }
    if (cnpj != nil) {
        
        queryParams[@"cnpj"] = cnpj;
    }
    if (inscricaoEstadual != nil) {
        
        queryParams[@"inscricaoEstadual"] = inscricaoEstadual;
    }
    if (contato != nil) {
        
        queryParams[@"contato"] = contato;
    }
    if (banco != nil) {
        
        queryParams[@"banco"] = banco;
    }
    if (agencia != nil) {
        
        queryParams[@"agencia"] = agencia;
    }
    if (digitoVerificadorAgencia != nil) {
        
        queryParams[@"digitoVerificadorAgencia"] = digitoVerificadorAgencia;
    }
    if (contaCorrente != nil) {
        
        queryParams[@"contaCorrente"] = contaCorrente;
    }
    if (digitoVerificadorContaCorrente != nil) {
        
        queryParams[@"digitoVerificadorContaCorrente"] = digitoVerificadorContaCorrente;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierPagePessoaJuridicaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPagePessoaJuridicaResponse*)data, error);
                           }
          ];
}

///
/// Lista os Telefones Estabelecimentos
/// Este m\u00C3\u00A9todo permite que sejam listados os telefones dos estabelecimentos existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Estabelecimento (id). (optional)
///
///  @returns PierPageTelefoneEstabelecimentoResponse*
///
-(NSNumber*) listarUsingGET33WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones-estabelecimentos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sort != nil) {
        
        queryParams[@"sort"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: sort format: @"multi"];
        
        
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierPageTelefoneEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTelefoneEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Lista os Terminais cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os terminais existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id). (optional)
///
///  @param terminal C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do terminal. (optional)
///
///  @param numeroEstabelecimento N\u00C3\u00BAmero do estabelecimento a qual o terminal pertence. (optional)
///
///  @param idEstabelecimento N\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento a qual o terminal pertence. (optional)
///
///  @returns PierPageTerminalResponse*
///
-(NSNumber*) listarUsingGET35WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    terminal: (NSString*) terminal
    numeroEstabelecimento: (NSNumber*) numeroEstabelecimento
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTerminalResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sort != nil) {
        
        queryParams[@"sort"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: sort format: @"multi"];
        
        
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (terminal != nil) {
        
        queryParams[@"terminal"] = terminal;
    }
    if (numeroEstabelecimento != nil) {
        
        queryParams[@"numeroEstabelecimento"] = numeroEstabelecimento;
    }
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierPageTerminalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTerminalResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um novo telefone para um estabelecimento 
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo telefone para um estabelecimento.
///  @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento (id). 
///
///  @param ddd C\u00C3\u00B3digo DDD do telefone (id). 
///
///  @param telefone N\u00C3\u00BAmero do telefone. 
///
///  @param ramal N\u00C3\u00BAmero do ramal. (optional)
///
///  @returns PierTelefoneEstabelecimentoResponse*
///
-(NSNumber*) salvarUsingPOST19WithIdEstabelecimento: (NSNumber*) idEstabelecimento
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idEstabelecimento' is set
    if (idEstabelecimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEstabelecimento` when calling `salvarUsingPOST19`"];
    }
    
    // verify the required parameter 'ddd' is set
    if (ddd == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `ddd` when calling `salvarUsingPOST19`"];
    }
    
    // verify the required parameter 'telefone' is set
    if (telefone == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `telefone` when calling `salvarUsingPOST19`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones-estabelecimentos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
    }
    if (ddd != nil) {
        
        queryParams[@"ddd"] = ddd;
    }
    if (telefone != nil) {
        
        queryParams[@"telefone"] = telefone;
    }
    if (ramal != nil) {
        
        queryParams[@"ramal"] = ramal;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierTelefoneEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTelefoneEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um novo Terminal
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo Terminal.
///  @param idEstabelecimento Apresenta o id do estabelecimento. 
///
///  @param flagConsultaExtrato Flag indicando se o terminal \u00C3\u00A9 f\u00C3\u00ADsico ou virtual, sendo: (true: Sim), (false: N\u00C3\u00A3o)). 
///
///  @param flagTerminalVirtual Flag indicando se o terminal permite consultar extrato, sendo: (true: Sim), (false: N\u00C3\u00A3o)). 
///
///  @returns PierTerminalResponse*
///
-(NSNumber*) salvarUsingPOST21WithIdEstabelecimento: (NSNumber*) idEstabelecimento
    flagConsultaExtrato: (NSNumber*) flagConsultaExtrato
    flagTerminalVirtual: (NSNumber*) flagTerminalVirtual
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idEstabelecimento' is set
    if (idEstabelecimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEstabelecimento` when calling `salvarUsingPOST21`"];
    }
    
    // verify the required parameter 'flagConsultaExtrato' is set
    if (flagConsultaExtrato == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `flagConsultaExtrato` when calling `salvarUsingPOST21`"];
    }
    
    // verify the required parameter 'flagTerminalVirtual' is set
    if (flagTerminalVirtual == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `flagTerminalVirtual` when calling `salvarUsingPOST21`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
    }
    if (flagConsultaExtrato != nil) {
        
        queryParams[@"flagConsultaExtrato"] = flagConsultaExtrato;
    }
    if (flagTerminalVirtual != nil) {
        
        queryParams[@"flagTerminalVirtual"] = flagTerminalVirtual;
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
    NSArray *authSettings = @[];

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
                              responseType: @"PierTerminalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTerminalResponse*)data, error);
                           }
          ];
}



@end
