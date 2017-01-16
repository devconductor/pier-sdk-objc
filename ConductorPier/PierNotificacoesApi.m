#import "PierNotificacoesApi.h"
#import "PierQueryParamCollection.h"
#import "PierSMS.h"


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
///  @param seuNum Seu n\u00C3\u00BAmero 
///
///  @param status Status 
///
///  @param data Data 
///
///  @param textoStatus TextoStatus 
///
///  @param operadora Operadora 
///
///  @returns PierSMS*
///
-(NSNumber*) atualizarSMSUsingPUTWithSeuNum: (NSString*) seuNum
    status: (NSString*) status
    data: (NSString*) data
    textoStatus: (NSString*) textoStatus
    operadora: (NSString*) operadora
    completionHandler: (void (^)(PierSMS* output, NSError* error)) handler {

    
    // verify the required parameter 'seuNum' is set
    if (seuNum == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `seuNum` when calling `atualizarSMSUsingPUT`"];
    }
    
    // verify the required parameter 'status' is set
    if (status == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `status` when calling `atualizarSMSUsingPUT`"];
    }
    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `atualizarSMSUsingPUT`"];
    }
    
    // verify the required parameter 'textoStatus' is set
    if (textoStatus == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `textoStatus` when calling `atualizarSMSUsingPUT`"];
    }
    
    // verify the required parameter 'operadora' is set
    if (operadora == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `operadora` when calling `atualizarSMSUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/sms/atualizar-status"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (seuNum != nil) {
        
        queryParams[@"SeuNum"] = seuNum;
    }
    if (status != nil) {
        
        queryParams[@"Status"] = status;
    }
    if (data != nil) {
        
        queryParams[@"Data"] = data;
    }
    if (textoStatus != nil) {
        
        queryParams[@"TextoStatus"] = textoStatus;
    }
    if (operadora != nil) {
        
        queryParams[@"Operadora"] = operadora;
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
                              responseType: @"PierSMS*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierSMS*)data, error);
                           }
          ];
}

///
/// Responder SMS
/// Esse recurso permite atualizar a resposta do SMS, fornecida pedo usu\u00C3\u00A1rio
///  @param seunum Seu n\u00C3\u00BAmero 
///
///  @param data Data 
///
///  @param textoSmsMo TextoStatus 
///
///  @returns PierSMS*
///
-(NSNumber*) responderSMSUsingPUTWithSeunum: (NSString*) seunum
    data: (NSString*) data
    textoSmsMo: (NSString*) textoSmsMo
    completionHandler: (void (^)(PierSMS* output, NSError* error)) handler {

    
    // verify the required parameter 'seunum' is set
    if (seunum == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `seunum` when calling `responderSMSUsingPUT`"];
    }
    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `responderSMSUsingPUT`"];
    }
    
    // verify the required parameter 'textoSmsMo' is set
    if (textoSmsMo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `textoSmsMo` when calling `responderSMSUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/notificacoes/sms/responder"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (seunum != nil) {
        
        queryParams[@"Seunum"] = seunum;
    }
    if (data != nil) {
        
        queryParams[@"Data"] = data;
    }
    if (textoSmsMo != nil) {
        
        queryParams[@"TextoSmsMo"] = textoSmsMo;
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
                              responseType: @"PierSMS*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierSMS*)data, error);
                           }
          ];
}



@end
