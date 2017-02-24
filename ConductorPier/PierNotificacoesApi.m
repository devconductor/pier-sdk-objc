#import "PierNotificacoesApi.h"
#import "PierQueryParamCollection.h"
#import "PierSMS.h"
#import "PierPagePush.h"
#import "PierPageSMS.h"
#import "PierPushFCMEGCM.h"
#import "PierNotificacaoSMSResponse.h"
#import "PierPushAPNS.h"
#import "PierNotificacaoSMSBody.h"


@interface PierNotificacoesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierNotificacoesApi

static PierNotificacoesApi* singletonAPI = nil;

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

+(PierNotificacoesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierNotificacoesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierNotificacoesApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierNotificacoesApi alloc] init];
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
/// Atualizar SMS
/// Esse recurso permite atualizar o status do SMS do emissor
///  @param nsu Seu n\u00C3\u00BAmero (optional)
///
///  @param status Status (optional)
///
///  @param data Data (optional)
///
///  @param textoStatus TextoStatus (optional)
///
///  @param operadora Operadora (optional)
///
///  @returns PierSMS*
///
-(NSNumber*) atualizarSMSUsingPOSTWithNsu: (NSString*) nsu
    status: (NSString*) status
    data: (NSString*) data
    textoStatus: (NSString*) textoStatus
    operadora: (NSString*) operadora
    completionHandler: (void (^)(PierSMS* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/sms/atualizar-status"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (nsu != nil) {
        
        queryParams[@"nsu"] = nsu;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (data != nil) {
        
        queryParams[@"data"] = data;
    }
    if (textoStatus != nil) {
        
        queryParams[@"texto_status"] = textoStatus;
    }
    if (operadora != nil) {
        
        queryParams[@"operadora"] = operadora;
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
                              responseType: @"PierSMS*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierSMS*)data, error);
                           }
          ];
}

///
/// Listar Push
/// Esse recurso permite listar os Pushes do emissor
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @param dataEnvio Apresenta a data e em que o registro foi enviado para o dispositivo. (optional)
///
///  @param tipoEvento Nome do tipoEvento da notifica\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param status Status de envio da notifica\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param plataforma Plataforma de Push notifications. (optional)
///
///  @param protocolo N\u00C3\u00BAmero do protocolo de envio de notifica\u00C3\u00A7\u00C3\u00B5es (optional)
///
///  @returns PierPagePush*
///
-(NSNumber*) listarPushUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    dataEnvio: (NSDate*) dataEnvio
    tipoEvento: (NSString*) tipoEvento
    status: (NSString*) status
    plataforma: (NSString*) plataforma
    protocolo: (NSString*) protocolo
    completionHandler: (void (^)(PierPagePush* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/push"];

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
    if (dataEnvio != nil) {
        
        queryParams[@"dataEnvio"] = dataEnvio;
    }
    if (tipoEvento != nil) {
        
        queryParams[@"tipoEvento"] = tipoEvento;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (plataforma != nil) {
        
        queryParams[@"plataforma"] = plataforma;
    }
    if (protocolo != nil) {
        
        queryParams[@"protocolo"] = protocolo;
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
                              responseType: @"PierPagePush*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPagePush*)data, error);
                           }
          ];
}

///
/// Listar SMS
/// Esse recurso permite listar os SMS do emissor
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @param dataInclusao Apresenta a data e em que o registro foi inclu\u00C3\u00ADdo na base para ser enviado (optional)
///
///  @param tipoEvento Nome do tipoEvento da notifica\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param status Status de envio da notifica\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param operadora Nome da operadora a qual a notifica\u00C3\u00A7\u00C3\u00A3o foi enviada. (optional)
///
///  @param protocolo N\u00C3\u00BAmero do protocolo de envio de notifica\u00C3\u00A7\u00C3\u00B5es (optional)
///
///  @returns PierPageSMS*
///
-(NSNumber*) listarSMSUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    dataInclusao: (NSDate*) dataInclusao
    tipoEvento: (NSString*) tipoEvento
    status: (NSString*) status
    operadora: (NSString*) operadora
    protocolo: (NSString*) protocolo
    completionHandler: (void (^)(PierPageSMS* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/sms"];

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
    if (dataInclusao != nil) {
        
        queryParams[@"dataInclusao"] = dataInclusao;
    }
    if (tipoEvento != nil) {
        
        queryParams[@"tipoEvento"] = tipoEvento;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (operadora != nil) {
        
        queryParams[@"operadora"] = operadora;
    }
    if (protocolo != nil) {
        
        queryParams[@"protocolo"] = protocolo;
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
                              responseType: @"PierPageSMS*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageSMS*)data, error);
                           }
          ];
}

///
/// Responder SMS
/// Esse recurso permite atualizar a resposta do SMS, fornecida pedo usu\u00C3\u00A1rio
///  @param nsu Seu n\u00C3\u00BAmero (optional)
///
///  @param data Data (optional)
///
///  @param resposta TextoStatus (optional)
///
///  @returns PierSMS*
///
-(NSNumber*) responderSMSUsingPOSTWithNsu: (NSString*) nsu
    data: (NSString*) data
    resposta: (NSString*) resposta
    completionHandler: (void (^)(PierSMS* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/sms/responder"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (nsu != nil) {
        
        queryParams[@"nsu"] = nsu;
    }
    if (data != nil) {
        
        queryParams[@"data"] = data;
    }
    if (resposta != nil) {
        
        queryParams[@"resposta"] = resposta;
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
                              responseType: @"PierSMS*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierSMS*)data, error);
                           }
          ];
}

///
/// Enviar Push FCM
/// Esse recurso permite enviar Push para um determinado dipositivo movel atrav\u00C3\u00A9s da plataforma FCM (Firebase Cloud Messaging).
///  @param pushPersists pushPersists 
///
///  @returns PierNotificacaoSMSResponse*
///
-(NSNumber*) salvarPushFCMUsingPOSTWithPushPersists: (NSArray<PierPushFCMEGCM>*) pushPersists
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'pushPersists' is set
    if (pushPersists == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pushPersists` when calling `salvarPushFCMUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/push/fcm"];

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
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = pushPersists;
    

    
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
                              responseType: @"PierNotificacaoSMSResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierNotificacaoSMSResponse*)data, error);
                           }
          ];
}

///
/// Enviar Push GCM
/// Esse recurso permite enviar Push para um determinado dipositivo movel atrav\u00C3\u00A9s da plataforma GCM (Google Cloud Messaging).
///  @param pushPersists pushPersists 
///
///  @returns PierNotificacaoSMSResponse*
///
-(NSNumber*) salvarPushGCMUsingPOSTWithPushPersists: (NSArray<PierPushFCMEGCM>*) pushPersists
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'pushPersists' is set
    if (pushPersists == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pushPersists` when calling `salvarPushGCMUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/push/gcm"];

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
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = pushPersists;
    

    
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
                              responseType: @"PierNotificacaoSMSResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierNotificacaoSMSResponse*)data, error);
                           }
          ];
}

///
/// Enviar Push APNS
/// Esse recurso permite enviar Push para um determinado dipositivo movel atrav\u00C3\u00A9s da plataforma APNS (Apple Push Notification Service).
///  @param pushPersists pushPersists 
///
///  @returns PierNotificacaoSMSResponse*
///
-(NSNumber*) salvarPushUsingPOSTWithPushPersists: (NSArray<PierPushAPNS>*) pushPersists
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'pushPersists' is set
    if (pushPersists == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pushPersists` when calling `salvarPushUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/push/apns"];

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
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = pushPersists;
    

    
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
                              responseType: @"PierNotificacaoSMSResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierNotificacaoSMSResponse*)data, error);
                           }
          ];
}

///
/// Enviar SMS
/// Esse recurso permite enviar uma lista de SMS.
///  @param listaSMS listaSMS 
///
///  @returns PierNotificacaoSMSResponse*
///
-(NSNumber*) salvarSMSUsingPOSTWithListaSMS: (NSArray<PierNotificacaoSMSBody>*) listaSMS
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'listaSMS' is set
    if (listaSMS == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `listaSMS` when calling `salvarSMSUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/sms"];

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
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = listaSMS;
    

    
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
                              responseType: @"PierNotificacaoSMSResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierNotificacaoSMSResponse*)data, error);
                           }
          ];
}



@end
