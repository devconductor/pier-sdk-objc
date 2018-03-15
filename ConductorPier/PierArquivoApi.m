#import "PierArquivoApi.h"
#import "PierQueryParamCollection.h"
#import "PierArquivoDetalheResponse.h"
#import "PierIntegrarArquivoRequest.h"
#import "PierPageArquivoAUDResponse.h"
#import "PierPageStatusArquivoResponse.h"
#import "PierPageTipoArquivoResponse.h"
#import "PierPageArquivoResponse.h"
#import "PierArquivoPersist.h"


@interface PierArquivoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierArquivoApi

static PierArquivoApi* singletonAPI = nil;

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

+(PierArquivoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierArquivoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierArquivoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierArquivoApi alloc] init];
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
/// Consulta de arquivo no PIER Cloud
/// Este recurso permite consultar um determinado arquivo armazenado no PIER Cloud.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do arquivo 
///
///  @returns PierArquivoDetalheResponse*
///
-(NSNumber*) consultarUsingGET3WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierArquivoDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET3`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/arquivos/{id}"];

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
                              responseType: @"PierArquivoDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierArquivoDetalheResponse*)data, error);
                           }
          ];
}

///
/// Integrar Arquivos
/// Este recurso foi desenvolvido para realizar a integra\u00E7\u00E3o de arquivos do PIER Cloud junto a reposit\u00F3rios externos pr\u00E9-configurado.
///  @param integrarArquivoRequest integrarArquivoRequest 
///
///  @returns NSObject*
///
-(NSNumber*) integrarUsingPOSTWithIntegrarArquivoRequest: (PierIntegrarArquivoRequest*) integrarArquivoRequest
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter 'integrarArquivoRequest' is set
    if (integrarArquivoRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `integrarArquivoRequest` when calling `integrarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/arquivos/integrar"];

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
    
    bodyParam = integrarArquivoRequest;
    

    
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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSObject*)data, error);
                           }
          ];
}

///
/// Lista as auditorias de arquivos vinculadas a um N\u00FAmero da Receita Federal
/// Este recurso permite listar as auditorias de arquivos vinculadas a um N\u00FAmero da Receita Federal que ser\u00E1 passado como par\u00E2metro.
///  @param numeroReceitaFederal Par\u00E2metro vinculado a um arquivo no ato de seu cadastro 
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageArquivoAUDResponse*
///
-(NSNumber*) listarPorNumeroReceitaFederalUsingGETWithNumeroReceitaFederal: (NSString*) numeroReceitaFederal
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageArquivoAUDResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroReceitaFederal' is set
    if (numeroReceitaFederal == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroReceitaFederal` when calling `listarPorNumeroReceitaFederalUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/arquivos-auditorias"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroReceitaFederal != nil) {
        
        queryParams[@"numeroReceitaFederal"] = numeroReceitaFederal;
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
                              responseType: @"PierPageArquivoAUDResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageArquivoAUDResponse*)data, error);
                           }
          ];
}

///
/// Listar Status de Arquivo
/// Este recurso permite a listagem de todos os Status de Arquivo.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param nome Nome do status de arquivo (optional)
///
///  @param descricao Descri\u00E7\u00E3o do status de arquivo (optional)
///
///  @returns PierPageStatusArquivoResponse*
///
-(NSNumber*) listarStatusArquivosUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageStatusArquivoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-arquivos"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
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
                              responseType: @"PierPageStatusArquivoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageStatusArquivoResponse*)data, error);
                           }
          ];
}

///
/// Listar Tipos de Arquivo
/// Este recurso permite a listagem de todos os Tipos de Arquivo.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param nome Nome do tipo de arquivo (optional)
///
///  @param descricao Descri\u00E7\u00E3o do tipo de arquivo (optional)
///
///  @returns PierPageTipoArquivoResponse*
///
-(NSNumber*) listarTiposArquivosUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageTipoArquivoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-arquivos"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
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
                              responseType: @"PierPageTipoArquivoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoArquivoResponse*)data, error);
                           }
          ];
}

///
/// Lista as auditorias do arquivo
/// Este recurso permite listar as auditorias de um determinado arquivo a partir do seu c\u00F3digo de identifica\u00E7\u00E3o (id).
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do arquivo 
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageArquivoAUDResponse*
///
-(NSNumber*) listarUsingGET4WithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageArquivoAUDResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarUsingGET4`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/arquivos/{id}/auditorias"];

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
                              responseType: @"PierPageArquivoAUDResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageArquivoAUDResponse*)data, error);
                           }
          ];
}

///
/// Listar arquivos do Pier Cloud
/// Este recurso permite a listagem de todos os arquivos dispon\u00EDveis no Pier Cloud.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param nome Nome do arquivo (optional)
///
///  @param idTipoArquivo Tipo do arquivo (optional)
///
///  @param idStatusArquivo Identificador do status do arquivo (optional)
///
///  @param extensao Extens\u00E3o do arquivo (optional)
///
///  @returns PierPageArquivoResponse*
///
-(NSNumber*) listarUsingGET5WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    idTipoArquivo: (NSNumber*) idTipoArquivo
    idStatusArquivo: (NSNumber*) idStatusArquivo
    extensao: (NSString*) extensao
    completionHandler: (void (^)(PierPageArquivoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/arquivos"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (idTipoArquivo != nil) {
        
        queryParams[@"idTipoArquivo"] = idTipoArquivo;
    }
    if (idStatusArquivo != nil) {
        
        queryParams[@"idStatusArquivo"] = idStatusArquivo;
    }
    if (extensao != nil) {
        
        queryParams[@"extensao"] = extensao;
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
                              responseType: @"PierPageArquivoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageArquivoResponse*)data, error);
                           }
          ];
}

///
/// Permite armazenar arquivos no PIER Cloud
/// Este recurso permite o armazenamento de arquivos no PIER Cloud.
///  @param arquivoPersist arquivoPersist 
///
///  @returns PierArquivoDetalheResponse*
///
-(NSNumber*) salvarUsingPOST1WithArquivoPersist: (PierArquivoPersist*) arquivoPersist
    completionHandler: (void (^)(PierArquivoDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'arquivoPersist' is set
    if (arquivoPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `arquivoPersist` when calling `salvarUsingPOST1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/arquivos"];

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
    
    bodyParam = arquivoPersist;
    

    
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
                              responseType: @"PierArquivoDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierArquivoDetalheResponse*)data, error);
                           }
          ];
}



@end
