#import "PierGlobaltaglimitedisponibilidadeApi.h"
#import "PierQueryParamCollection.h"
#import "PierLimiteDisponibilidadeResponse.h"
#import "PierSensibilizarSaldoGlobalUpdateValue_.h"


@interface PierGlobaltaglimitedisponibilidadeApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltaglimitedisponibilidadeApi

static PierGlobaltaglimitedisponibilidadeApi* singletonAPI = nil;

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

+(PierGlobaltaglimitedisponibilidadeApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltaglimitedisponibilidadeApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltaglimitedisponibilidadeApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltaglimitedisponibilidadeApi alloc] init];
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
/// {{{limite_disponibilidade_resource_alterar}}}
/// {{{limite_disponibilidade_resource_alterar_notes}}}
///  @param idConta {{{limite_disponibilidade_update_id_conta_value}}} 
///
///  @param limiteGlobal {{{limite_disponibilidade_persist_limite_global_value}}} (optional)
///
///  @param limiteCompra {{{limite_disponibilidade_persist_limite_compra_value}}} (optional)
///
///  @param limiteParcelado {{{limite_disponibilidade_persist_limite_parcelado_value}}} (optional)
///
///  @param limiteParcelas {{{limite_disponibilidade_persist_limite_parcelas_value}}} (optional)
///
///  @param limiteSaqueGlobal {{{limite_disponibilidade_persist_limite_saque_global_value}}} (optional)
///
///  @param limiteSaquePeriodo {{{limite_disponibilidade_persist_limite_saque_periodo_value}}} (optional)
///
///  @param limiteConsignado {{{limite_disponibilidade_persist_limite_consignado_value}}} (optional)
///
///  @param limiteInternacionalCompra {{{limite_disponibilidade_persist_limite_internacional_compra_value}}} (optional)
///
///  @param limiteInternacionalParcelado {{{limite_disponibilidade_persist_limite_internacional_parcelado_value}}} (optional)
///
///  @param limiteInternacionalParcelas {{{limite_disponibilidade_persist_limite_internacional_parcelas_value}}} (optional)
///
///  @param limiteInternacionalSaqueGlobal {{{limite_disponibilidade_persist_limite_internacional_saque_global_value}}} (optional)
///
///  @param limiteInternacionalSaquePeriodo {{{limite_disponibilidade_persist_limite_internacional_saque_periodo_value}}} (optional)
///
///  @param limiteMaximo {{{limite_disponibilidade_persist_limite_maximo_value}}} (optional)
///
///  @returns PierLimiteDisponibilidadeResponse*
///
-(NSNumber*) alterarUsingPUT9WithIdConta: (NSNumber*) idConta
    limiteGlobal: (NSNumber*) limiteGlobal
    limiteCompra: (NSNumber*) limiteCompra
    limiteParcelado: (NSNumber*) limiteParcelado
    limiteParcelas: (NSNumber*) limiteParcelas
    limiteSaqueGlobal: (NSNumber*) limiteSaqueGlobal
    limiteSaquePeriodo: (NSNumber*) limiteSaquePeriodo
    limiteConsignado: (NSNumber*) limiteConsignado
    limiteInternacionalCompra: (NSNumber*) limiteInternacionalCompra
    limiteInternacionalParcelado: (NSNumber*) limiteInternacionalParcelado
    limiteInternacionalParcelas: (NSNumber*) limiteInternacionalParcelas
    limiteInternacionalSaqueGlobal: (NSNumber*) limiteInternacionalSaqueGlobal
    limiteInternacionalSaquePeriodo: (NSNumber*) limiteInternacionalSaquePeriodo
    limiteMaximo: (NSNumber*) limiteMaximo
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `alterarUsingPUT9`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/limites-disponibilidades"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limiteGlobal != nil) {
        
        queryParams[@"limiteGlobal"] = limiteGlobal;
    }
    if (limiteCompra != nil) {
        
        queryParams[@"limiteCompra"] = limiteCompra;
    }
    if (limiteParcelado != nil) {
        
        queryParams[@"limiteParcelado"] = limiteParcelado;
    }
    if (limiteParcelas != nil) {
        
        queryParams[@"limiteParcelas"] = limiteParcelas;
    }
    if (limiteSaqueGlobal != nil) {
        
        queryParams[@"limiteSaqueGlobal"] = limiteSaqueGlobal;
    }
    if (limiteSaquePeriodo != nil) {
        
        queryParams[@"limiteSaquePeriodo"] = limiteSaquePeriodo;
    }
    if (limiteConsignado != nil) {
        
        queryParams[@"limiteConsignado"] = limiteConsignado;
    }
    if (limiteInternacionalCompra != nil) {
        
        queryParams[@"limiteInternacionalCompra"] = limiteInternacionalCompra;
    }
    if (limiteInternacionalParcelado != nil) {
        
        queryParams[@"limiteInternacionalParcelado"] = limiteInternacionalParcelado;
    }
    if (limiteInternacionalParcelas != nil) {
        
        queryParams[@"limiteInternacionalParcelas"] = limiteInternacionalParcelas;
    }
    if (limiteInternacionalSaqueGlobal != nil) {
        
        queryParams[@"limiteInternacionalSaqueGlobal"] = limiteInternacionalSaqueGlobal;
    }
    if (limiteInternacionalSaquePeriodo != nil) {
        
        queryParams[@"limiteInternacionalSaquePeriodo"] = limiteInternacionalSaquePeriodo;
    }
    if (limiteMaximo != nil) {
        
        queryParams[@"limiteMaximo"] = limiteMaximo;
    }
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
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
                              responseType: @"PierLimiteDisponibilidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLimiteDisponibilidadeResponse*)data, error);
                           }
          ];
}

///
/// {{{limite_disponibilidade_resource_consultar}}}
/// {{{limite_disponibilidade_resource_consultar_notes}}}
///  @param idConta {{{limite_disponibilidade_resource_consultar_param_id_conta}}} 
///
///  @returns PierLimiteDisponibilidadeResponse*
///
-(NSNumber*) consultarUsingGET25WithIdConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarUsingGET25`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/limites-disponibilidades"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
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
                              responseType: @"PierLimiteDisponibilidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLimiteDisponibilidadeResponse*)data, error);
                           }
          ];
}

///
/// {{{limite_disponibilidade_resource_sensibilizar_credito_disponivel}}}
/// {{{limite_disponibilidade_resource_sensibilizar_credito_disponivel_notes}}}
///  @param _id {{{sensibilizar_saldo_global_param_id}}} 
///
///  @param sensibilizarSaldoGlobal sensibilizarSaldoGlobal 
///
///  @returns PierLimiteDisponibilidadeResponse*
///
-(NSNumber*) sensibilizarSaldoDisponivelGlobalUsingPOSTWithId: (NSNumber*) _id
    sensibilizarSaldoGlobal: (PierSensibilizarSaldoGlobalUpdateValue_*) sensibilizarSaldoGlobal
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `sensibilizarSaldoDisponivelGlobalUsingPOST`"];
    }
    
    // verify the required parameter 'sensibilizarSaldoGlobal' is set
    if (sensibilizarSaldoGlobal == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sensibilizarSaldoGlobal` when calling `sensibilizarSaldoDisponivelGlobalUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/limites-disponibilidades/sensibilizar-saldo-disponivel-global"];

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
    
    bodyParam = sensibilizarSaldoGlobal;
    

    
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
                              responseType: @"PierLimiteDisponibilidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLimiteDisponibilidadeResponse*)data, error);
                           }
          ];
}



@end
