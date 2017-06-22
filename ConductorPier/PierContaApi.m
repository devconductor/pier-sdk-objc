#import "PierContaApi.h"
#import "PierQueryParamCollection.h"
#import "PierAjusteResponse.h"
#import "PierLimiteDisponibilidadeResponse.h"
#import "PierContaResponse.h"
#import "PierBoletoResponse.h"
#import "PierDividaClienteResponse.h"
#import "PierDetalhesFaturaConsignadaResponse.h"
#import "PierFaturaConsignadaDetalheResponse.h"
#import "PierDetalhesFaturaResponse.h"
#import "PierPageTaxasRefinanciamentoResponse.h"
#import "PierTransferenciaBancariaResponse.h"
#import "PierPageTransferenciaResponse.h"
#import "PierContaDetalheResponse.h"
#import "PierCartaoImpressaoResponse.h"
#import "PierPageFaturaConsignadaResponse.h"
#import "PierPageFaturaResponse.h"
#import "PierPageHistoricoEventosResponse.h"
#import "PierPageHistoricoAssessoriaResponse.h"
#import "PierPageHistoricoAtrasoFaturaResponse.h"
#import "PierPageTransacoesCorrentesResponse.h"
#import "PierPageTransferenciaBancariaResponse.h"
#import "PierPageContaResponse.h"
#import "PierPageTransacaoResponse.h"
#import "PierTransferenciaBancariaPersist.h"


@interface PierContaApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierContaApi

static PierContaApi* singletonAPI = nil;

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

+(PierContaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierContaApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierContaApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierContaApi alloc] init];
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
/// Lan\u00C3\u00A7a um ajuste para a conta do id informado
/// Este recurso insere um ajuste para a conta do id informado
///  @param _id Id Conta 
///
///  @param idTipoAjuste C\u00C3\u00B3digo identificador do tipo de ajuste. 
///
///  @param dataAjuste Data do ajuste. 
///
///  @param valorAjuste Valor do ajuste 
///
///  @returns PierAjusteResponse*
///
-(NSNumber*) ajustarContaUsingPOSTWithId: (NSNumber*) _id
    idTipoAjuste: (NSNumber*) idTipoAjuste
    dataAjuste: (NSString*) dataAjuste
    valorAjuste: (NSNumber*) valorAjuste
    completionHandler: (void (^)(PierAjusteResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `ajustarContaUsingPOST`"];
    }
    
    // verify the required parameter 'idTipoAjuste' is set
    if (idTipoAjuste == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idTipoAjuste` when calling `ajustarContaUsingPOST`"];
    }
    
    // verify the required parameter 'dataAjuste' is set
    if (dataAjuste == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataAjuste` when calling `ajustarContaUsingPOST`"];
    }
    
    // verify the required parameter 'valorAjuste' is set
    if (valorAjuste == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `valorAjuste` when calling `ajustarContaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/ajustes-financeiros"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idTipoAjuste != nil) {
        
        queryParams[@"idTipoAjuste"] = idTipoAjuste;
    }
    if (dataAjuste != nil) {
        
        queryParams[@"dataAjuste"] = dataAjuste;
    }
    if (valorAjuste != nil) {
        
        queryParams[@"valorAjuste"] = valorAjuste;
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
                              responseType: @"PierAjusteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAjusteResponse*)data, error);
                           }
          ];
}

///
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o dos limites da conta
/// Esse recurso permite realizar a altera\u00C3\u00A7\u00C3\u00A3o dos Limites de uma determinada Conta.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param limiteGlobal Apresenta o valor do limite de cr\u00C3\u00A9dito que o portador do cart\u00C3\u00A3o possui. 
///
///  @param limiteCompra Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Nacionais. 
///
///  @param limiteParcelado Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para realizar transa\u00C3\u00A7\u00C3\u00B5es de compras parceladas. 
///
///  @param limiteParcelas Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que portador pode acumular a partir da soma das parcelas das compras que forem realizadas nesta modalidade. 
///
///  @param limiteSaqueGlobal Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional. 
///
///  @param limiteSaquePeriodo Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional dentro de cada ciclo de faturamento. 
///
///  @param limiteConsignado Quando utilizado pelo emissor, este campo apresenta o valor da margem de cr\u00C3\u00A9dito que ele poder\u00C3\u00A1 utilizar para ser cobrado de forma consignada (desconto em folha) em seu sal\u00C3\u00A1rio/vencimentos. 
///
///  @param limiteInternacionalCompra Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Internacionais. 
///
///  @param limiteInternacionalParcelado Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para realizar transa\u00C3\u00A7\u00C3\u00B5es Internacionais de Compras Parceladas. 
///
///  @param limiteInternacionalParcelas Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que portador pode acumular a partir da soma das parcelas das compras internacionais que forem realizadas nesta modalidade. 
///
///  @param limiteInternacionalSaqueGlobal Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Internacional. 
///
///  @param limiteInternacionalSaquePeriodo Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Internacional dentro de cada ciclo de faturamento. 
///
///  @returns PierLimiteDisponibilidadeResponse*
///
-(NSNumber*) alterarLimiteUsingPUTWithId: (NSNumber*) _id
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
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteGlobal' is set
    if (limiteGlobal == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteGlobal` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteCompra' is set
    if (limiteCompra == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteCompra` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteParcelado' is set
    if (limiteParcelado == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteParcelado` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteParcelas' is set
    if (limiteParcelas == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteParcelas` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteSaqueGlobal' is set
    if (limiteSaqueGlobal == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteSaqueGlobal` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteSaquePeriodo' is set
    if (limiteSaquePeriodo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteSaquePeriodo` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteConsignado' is set
    if (limiteConsignado == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteConsignado` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteInternacionalCompra' is set
    if (limiteInternacionalCompra == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteInternacionalCompra` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteInternacionalParcelado' is set
    if (limiteInternacionalParcelado == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteInternacionalParcelado` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteInternacionalParcelas' is set
    if (limiteInternacionalParcelas == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteInternacionalParcelas` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteInternacionalSaqueGlobal' is set
    if (limiteInternacionalSaqueGlobal == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteInternacionalSaqueGlobal` when calling `alterarLimiteUsingPUT`"];
    }
    
    // verify the required parameter 'limiteInternacionalSaquePeriodo' is set
    if (limiteInternacionalSaquePeriodo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `limiteInternacionalSaquePeriodo` when calling `alterarLimiteUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/alterar-limites"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

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
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o de uma Pessoa tilular da conta
/// Esta m\u00C3\u00A9todo permite altera a pessoa de uma conta.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id) 
///
///  @param idPessoa C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de uma Pessoa (id). 
///
///  @returns PierContaResponse*
///
-(NSNumber*) alterarTitularUsingPOSTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarTitularUsingPOST`"];
    }
    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `alterarTitularUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/alterar-titular"];

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
                              responseType: @"PierContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierContaResponse*)data, error);
                           }
          ];
}

///
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o do dia de vencimento das faturas da conta
/// Esse recurso permite alterar o vencimento de uma conta especifica.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param novoDiaVencimento Novo dia de vencimento. 
///
///  @returns PierContaResponse*
///
-(NSNumber*) alterarVencimentoUsingPUTWithId: (NSNumber*) _id
    novoDiaVencimento: (NSNumber*) novoDiaVencimento
    completionHandler: (void (^)(PierContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarVencimentoUsingPUT`"];
    }
    
    // verify the required parameter 'novoDiaVencimento' is set
    if (novoDiaVencimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `novoDiaVencimento` when calling `alterarVencimentoUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/alterar-vencimento"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (novoDiaVencimento != nil) {
        
        queryParams[@"novo_dia_vencimento"] = novoDiaVencimento;
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
                              responseType: @"PierContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierContaResponse*)data, error);
                           }
          ];
}

///
///  Ativa o servi\u00C3\u00A7o de envio de fatura por email
/// Este recurso ativa o servi\u00C3\u00A7o de envio de fatura por email
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @returns NSObject*
///
-(NSNumber*) ativarEnvioFaturaEmailUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `ativarEnvioFaturaEmailUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/ativar-fatura-email"];

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
/// Consulta os dados de um determinado boleto da fatura
/// Este recurso consulta um boleto da fatura
///  @param _id Id Conta 
///
///  @returns PierBoletoResponse*
///
-(NSNumber*) consultarBoletoEmitidoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierBoletoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarBoletoEmitidoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/consultar-dados-pagamento-fatura"];

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
                              responseType: @"PierBoletoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierBoletoResponse*)data, error);
                           }
          ];
}

///
/// Consulta a d\u00C3\u00ADvida atualizada do cliente
/// Este recurso consulta a d\u00C3\u00ADvida atualizada do cliente
///  @param _id Id Conta 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param dataVencimento Data do vencimento (optional)
///
///  @param idEscritorioCobranca C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do escrit\u00C3\u00B3rio de cobran\u00C3\u00A7a (optional)
///
///  @returns PierDividaClienteResponse*
///
-(NSNumber*) consultarDividaAtualizadaClienteUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataVencimento: (NSString*) dataVencimento
    idEscritorioCobranca: (NSNumber*) idEscritorioCobranca
    completionHandler: (void (^)(PierDividaClienteResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarDividaAtualizadaClienteUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/recuperar-divida-atualizada"];

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
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
    }
    if (idEscritorioCobranca != nil) {
        
        queryParams[@"idEscritorioCobranca"] = idEscritorioCobranca;
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
                              responseType: @"PierDividaClienteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierDividaClienteResponse*)data, error);
                           }
          ];
}

///
/// Consultar a fatura consignadas abertas da conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar a fatura consignada em aberto
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param dataVencimento Data Vencimento (optional)
///
///  @returns PierDetalhesFaturaConsignadaResponse*
///
-(NSNumber*) consultarFaturaConsignadaAbertaUsingGETWithId: (NSNumber*) _id
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierDetalhesFaturaConsignadaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarFaturaConsignadaAbertaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas-consignadas/consultar-aberta"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
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
                              responseType: @"PierDetalhesFaturaConsignadaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierDetalhesFaturaConsignadaResponse*)data, error);
                           }
          ];
}

///
/// Apresenta dados de uma determinada fatura consignada
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar uma fatura, atrav\u00C3\u00A9s do id da conta e o id da fatura.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param idFatura C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da fatura (id_fatura). 
///
///  @returns PierFaturaConsignadaDetalheResponse*
///
-(NSNumber*) consultarFaturaConsignadaUsingGETWithId: (NSNumber*) _id
    idFatura: (NSNumber*) idFatura
    completionHandler: (void (^)(PierFaturaConsignadaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarFaturaConsignadaUsingGET`"];
    }
    
    // verify the required parameter 'idFatura' is set
    if (idFatura == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idFatura` when calling `consultarFaturaConsignadaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas-consignadas/{id_fatura}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (idFatura != nil) {
        pathParams[@"id_fatura"] = idFatura;
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
                              responseType: @"PierFaturaConsignadaDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierFaturaConsignadaDetalheResponse*)data, error);
                           }
          ];
}

///
/// Consultar Fatura da Conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar os detalhes de uma fatura vinculados a uma determinada conta.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param dataVencimento Data Vencimento. 
///
///  @returns PierDetalhesFaturaResponse*
///
-(NSNumber*) consultarFaturaUsingGETWithId: (NSNumber*) _id
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierDetalhesFaturaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarFaturaUsingGET`"];
    }
    
    // verify the required parameter 'dataVencimento' is set
    if (dataVencimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataVencimento` when calling `consultarFaturaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas/consultar-fechada"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
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
                              responseType: @"PierDetalhesFaturaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierDetalhesFaturaResponse*)data, error);
                           }
          ];
}

///
/// Consultar Lan\u00C3\u00A7amentos Futuros da Fatura de uma Conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar os detalhes dos lan\u00C3\u00A7amentos futuros de uma fatura vinculados a uma determinada conta.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param dataVencimento Data Vencimento (optional)
///
///  @returns PierDetalhesFaturaResponse*
///
-(NSNumber*) consultarLancamentosFuturosFaturaUsingGETWithId: (NSNumber*) _id
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierDetalhesFaturaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarLancamentosFuturosFaturaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas/consultar-aberta"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
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
                              responseType: @"PierDetalhesFaturaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierDetalhesFaturaResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os limites da conta
/// Este m\u00C3\u00A9todo permite consultar os Limites configurados para uma determinada Conta, a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
///  @param _id Id Conta 
///
///  @returns PierLimiteDisponibilidadeResponse*
///
-(NSNumber*) consultarLimiteDisponibilidadeUsingGET1WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarLimiteDisponibilidadeUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/limites-disponibilidades"];

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
                              responseType: @"PierLimiteDisponibilidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLimiteDisponibilidadeResponse*)data, error);
                           }
          ];
}

///
/// Permite consultar a partir do ID da conta as taxas e tarifas
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores consultem as taxas e tarifas da conta
///  @param _id ID da conta a ser consultada. 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageTaxasRefinanciamentoResponse*
///
-(NSNumber*) consultarTaxasTarifasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTaxasRefinanciamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarTaxasTarifasUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/consultar-taxas-tarifas"];

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
                              responseType: @"PierPageTaxasRefinanciamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTaxasRefinanciamentoResponse*)data, error);
                           }
          ];
}

///
/// Consultar uma transfer\u00C3\u00AAncia banc\u00C3\u00A1ria para um banco
/// Este recurso permite consultar os detalhes de uma determinada transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito realizada para uma conta banc\u00C3\u00A1ria. De modo geral, esta opera\u00C3\u00A7\u00C3\u00A3o poder\u00C3\u00A1 ser utilizada para uma consulta simples destes detalhes ou para realizar a montagem de um comprovante de 2\u00C2\u00AA via de transfer\u00C3\u00AAncia entre contas.
///  @param _id Id Conta 
///
///  @param idTransferencia Id Transfer\u00C3\u00AAncia 
///
///  @param idContaBancariaDestino C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta banc\u00C3\u00A1ria de destino (id) (optional)
///
///  @returns PierTransferenciaBancariaResponse*
///
-(NSNumber*) consultarUsingGET23WithId: (NSNumber*) _id
    idTransferencia: (NSNumber*) idTransferencia
    idContaBancariaDestino: (NSNumber*) idContaBancariaDestino
    completionHandler: (void (^)(PierTransferenciaBancariaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET23`"];
    }
    
    // verify the required parameter 'idTransferencia' is set
    if (idTransferencia == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idTransferencia` when calling `consultarUsingGET23`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transferencias-creditos-contas-bancarias/{id_transferencia}"];

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
                              responseType: @"PierTransferenciaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransferenciaBancariaResponse*)data, error);
                           }
          ];
}

///
/// Consulta os detalhes de uma determinada transfer\u00C3\u00AAncia
/// Este m\u00C3\u00A9todo permite consultar os detalhes de uma determinada transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito realizada entre contas.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param idTransferencia C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da transfer\u00C3\u00AAncia (id_transferencia). 
///
///  @returns PierPageTransferenciaResponse*
///
-(NSNumber*) consultarUsingGET24WithId: (NSNumber*) _id
    idTransferencia: (NSNumber*) idTransferencia
    completionHandler: (void (^)(PierPageTransferenciaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET24`"];
    }
    
    // verify the required parameter 'idTransferencia' is set
    if (idTransferencia == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idTransferencia` when calling `consultarUsingGET24`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transferencias-creditos-cartoes/{id_transferencia}"];

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
                              responseType: @"PierPageTransferenciaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTransferenciaResponse*)data, error);
                           }
          ];
}

///
/// Apresenta dados de uma determinada conta
/// Este m\u00C3\u00A9todo permite consultar dados de uma determinada conta a partir de seu codigo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @returns PierContaDetalheResponse*
///
-(NSNumber*) consultarUsingGET4WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierContaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET4`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}"];

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
                              responseType: @"PierContaDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierContaDetalheResponse*)data, error);
                           }
          ];
}

///
/// Desativa o servi\u00C3\u00A7o de envio de fatura por email
/// Este recurso desativa o servi\u00C3\u00A7o de envio de fatura por email
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @returns NSObject*
///
-(NSNumber*) desativarEnvioFaturaEmailUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarEnvioFaturaEmailUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/desativar-fatura-email"];

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
/// Gera um boleto de recarga
/// Este recurso gera um boleto de recarga
///  @param _id Id Conta 
///
///  @param valor Atributo que representa o valor do Boleto Emitido 
///
///  @param dataVencimento Atributo que representa a data de vencimento do boleto 
///
///  @returns PierBoletoResponse*
///
-(NSNumber*) gerarBoletoRecargaUsingPOSTWithId: (NSNumber*) _id
    valor: (NSNumber*) valor
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierBoletoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `gerarBoletoRecargaUsingPOST`"];
    }
    
    // verify the required parameter 'valor' is set
    if (valor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `valor` when calling `gerarBoletoRecargaUsingPOST`"];
    }
    
    // verify the required parameter 'dataVencimento' is set
    if (dataVencimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataVencimento` when calling `gerarBoletoRecargaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/gerar-boleto-recarga"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (valor != nil) {
        
        queryParams[@"valor"] = valor;
    }
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
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
                              responseType: @"PierBoletoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierBoletoResponse*)data, error);
                           }
          ];
}

///
/// Realiza a gera\u00C3\u00A7\u00C3\u00A3o de um novo cart\u00C3\u00A3o para impress\u00C3\u00A3o avulsa
/// Este recurso permite que seja gerado um novo Cart\u00C3\u00A3o para um determinado Portador que esteja vinculado a uma Conta. Para isso, ser\u00C3\u00A1 preciso informar o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id), o idPessoa do Portador e o idTipoPlastico do Cart\u00C3\u00A3o que dever\u00C3\u00A1 ser gerado para impress\u00C3\u00A3o. Esta funcionalidade poder\u00C3\u00A1 ser utilizada para realizar a impress\u00C3\u00A3o de cart\u00C3\u00B5es em Lojas, Quiosques, Escrit\u00C3\u00B3rios, Terminais de Auto Atendimento, ou outro local que o Emissor escolher, desde que se possua uma impressora de Cart\u00C3\u00B5es habilidade para o fazer, no local.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param idPessoa C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da pessoa (id). 
///
///  @param idTipoPlastico C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do TipoPlastico (id). (optional)
///
///  @returns PierCartaoImpressaoResponse*
///
-(NSNumber*) gerarCartaoUsingPOSTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    idTipoPlastico: (NSNumber*) idTipoPlastico
    completionHandler: (void (^)(PierCartaoImpressaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `gerarCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `gerarCartaoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/pessoas/{id_pessoa}/gerar-cartao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (idPessoa != nil) {
        pathParams[@"id_pessoa"] = idPessoa;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idTipoPlastico != nil) {
        
        queryParams[@"id_tipo_plastico"] = idTipoPlastico;
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
                              responseType: @"PierCartaoImpressaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoImpressaoResponse*)data, error);
                           }
          ];
}

///
/// Realiza a gera\u00C3\u00A7\u00C3\u00A3o de um cart\u00C3\u00A3o virtual
/// Este recurso permite que seja gerado um Cart\u00C3\u00A3o virtual para um determinado Portador que esteja vinculado a uma Conta. Para isso, ser\u00C3\u00A1 preciso informar o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id). Esta funcionalidade poder\u00C3\u00A1 ser utilizada para realizar a cria\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00B5es virtuaes atraves de um app.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param dataValidade Data de Validade 
///
///  @returns PierCartaoImpressaoResponse*
///
-(NSNumber*) gerarCartaoVirtualUsingPOSTWithId: (NSNumber*) _id
    dataValidade: (NSString*) dataValidade
    completionHandler: (void (^)(PierCartaoImpressaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `gerarCartaoVirtualUsingPOST`"];
    }
    
    // verify the required parameter 'dataValidade' is set
    if (dataValidade == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataValidade` when calling `gerarCartaoVirtualUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/gerar-cartao-virtual"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dataValidade != nil) {
        
        queryParams[@"dataValidade"] = dataValidade;
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
                              responseType: @"PierCartaoImpressaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoImpressaoResponse*)data, error);
                           }
          ];
}

///
/// Lista as faturas consignadas da conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar todo o Hist\u00C3\u00B3rico de Faturas vinculados a uma determinada Conta, independentemente do valor delas.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param dataVencimento Apresenta a data de vencimento da fatura. (optional)
///
///  @returns PierPageFaturaConsignadaResponse*
///
-(NSNumber*) listarFaturasConsignadasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierPageFaturaConsignadaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarFaturasConsignadasUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas-consignadas"];

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
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
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
                              responseType: @"PierPageFaturaConsignadaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageFaturaConsignadaResponse*)data, error);
                           }
          ];
}

///
/// Lista as faturas da conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar todo o Hist\u00C3\u00B3rico de Faturas vinculados a uma determinada Conta, independentemente do valor delas.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param dataVencimento Data de Vencimento da Fatura. (optional)
///
///  @returns PierPageFaturaResponse*
///
-(NSNumber*) listarFaturasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierPageFaturaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarFaturasUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas"];

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
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
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
                              responseType: @"PierPageFaturaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageFaturaResponse*)data, error);
                           }
          ];
}

///
/// Lista o hist\u00C3\u00B3rico de altera\u00C3\u00A7\u00C3\u00B5es de limites da conta
/// Este recurso consulta o hist\u00C3\u00B3rico com as altera\u00C3\u00A7\u00C3\u00B5es de limites da conta informada
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageHistoricoEventosResponse*
///
-(NSNumber*) listarHistoricoAlteracoesLimitesUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageHistoricoEventosResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarHistoricoAlteracoesLimitesUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/historicos-alteracoes-limites"];

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
                              responseType: @"PierPageHistoricoEventosResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageHistoricoEventosResponse*)data, error);
                           }
          ];
}

///
/// Lista o hist\u00C3\u00B3rico de entradas/sa\u00C3\u00ADdas de assessorias de cobran\u00C3\u00A7a
/// Permite listar todos os registros de entrada e sa\u00C3\u00ADda da Conta em arquivos de integra\u00C3\u00A7\u00C3\u00A3o com empresas de assessorias de cobran\u00C3\u00A7a a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (idConta).
///  @param _id Id Conta 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageHistoricoAssessoriaResponse*
///
-(NSNumber*) listarHistoricoAssessoriaUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageHistoricoAssessoriaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarHistoricoAssessoriaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/historicos-assessorias-cobranca"];

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
                              responseType: @"PierPageHistoricoAssessoriaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageHistoricoAssessoriaResponse*)data, error);
                           }
          ];
}

///
/// Lista o historico de atrasos das faturas
/// Este recurso lista o hist\u00C3\u00B3rico do pagamento de faturas em atraso
///  @param _id Id Conta 
///
///  @returns PierPageHistoricoAtrasoFaturaResponse*
///
-(NSNumber*) listarHistoricoAtrasosFaturasUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPageHistoricoAtrasoFaturaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarHistoricoAtrasosFaturasUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/historicos-faturas-atrasos"];

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
                              responseType: @"PierPageHistoricoAtrasoFaturaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageHistoricoAtrasoFaturaResponse*)data, error);
                           }
          ];
}

///
/// Lista as transa\u00C3\u00A7\u00C3\u00B5es n\u00C3\u00A3o processadas da conta
/// Este m\u00C3\u00A9todo permite que sejam listadas todas as transa\u00C3\u00A7\u00C3\u00B5es n\u00C3\u00A3o processadas da Conta.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param dataInicio Data de in\u00C3\u00ADcio da consulta do extrato no formato yyyy-MM-dd (Par\u00C3\u00A2mentro Ignorado se dataFim n\u00C3\u00A3o for definida). (optional)
///
///  @param dataFim Data fim da consulta do extrato no formato yyyy-MM-dd  (Par\u00C3\u00A2mentro Ignorado se dataInicio n\u00C3\u00A3o for definida). (optional)
///
///  @returns PierPageTransacoesCorrentesResponse*
///
-(NSNumber*) listarNaoProcessadasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataInicio: (NSString*) dataInicio
    dataFim: (NSString*) dataFim
    completionHandler: (void (^)(PierPageTransacoesCorrentesResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarNaoProcessadasUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transacoes/listar-nao-processadas"];

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
    if (dataInicio != nil) {
        
        queryParams[@"dataInicio"] = dataInicio;
    }
    if (dataFim != nil) {
        
        queryParams[@"dataFim"] = dataFim;
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
                              responseType: @"PierPageTransacoesCorrentesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTransacoesCorrentesResponse*)data, error);
                           }
          ];
}

///
/// Lista as transa\u00C3\u00A7\u00C3\u00B5es processadas da conta
/// Este m\u00C3\u00A9todo permite que sejam listadas todas as transa\u00C3\u00A7\u00C3\u00B5es processadas da Conta.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param dataVencimento Data de vencimento do extrato no formato yyyy-MM-dd. (optional)
///
///  @param dataInicio Data de in\u00C3\u00ADcio da consulta do extrato no formato yyyy-MM-dd (Ignorado quando o par\u00C3\u00A2mentro dataVencimento \u00C3\u00A9 usado). (optional)
///
///  @param dataFim Data fim da consulta do extrato no formato yyyy-MM-dd  (Ignorado quando o par\u00C3\u00A2mentro dataVencimento \u00C3\u00A9 usado). (optional)
///
///  @returns PierPageTransacoesCorrentesResponse*
///
-(NSNumber*) listarProcessadasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataVencimento: (NSString*) dataVencimento
    dataInicio: (NSString*) dataInicio
    dataFim: (NSString*) dataFim
    completionHandler: (void (^)(PierPageTransacoesCorrentesResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarProcessadasUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transacoes/listar-processadas"];

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
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
    }
    if (dataInicio != nil) {
        
        queryParams[@"dataInicio"] = dataInicio;
    }
    if (dataFim != nil) {
        
        queryParams[@"dataFim"] = dataFim;
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
                              responseType: @"PierPageTransacoesCorrentesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTransacoesCorrentesResponse*)data, error);
                           }
          ];
}

///
/// Listar as transfer\u00C3\u00AAncias banc\u00C3\u00A1rias realizadas
/// Este recurso tem como objetivo permitir que o portador de um Cart\u00C3\u00A3o possa consultar uma lista das Transfer\u00C3\u00AAncias Banc\u00C3\u00A1rias para os Favorecidos cadastrados.
///  @param _id Id Conta 
///
///  @param idContaBancariaDestino C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta banc\u00C3\u00A1ria de destino (id) (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageTransferenciaBancariaResponse*
///
-(NSNumber*) listarUsingGET28WithId: (NSNumber*) _id
    idContaBancariaDestino: (NSNumber*) idContaBancariaDestino
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTransferenciaBancariaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarUsingGET28`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transferencias-creditos-contas-bancarias"];

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
                              responseType: @"PierPageTransferenciaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTransferenciaBancariaResponse*)data, error);
                           }
          ];
}

///
/// Lista as transfer\u00C3\u00AAncias realizadas pela conta
/// Este m\u00C3\u00A9todo permite que sejam listadas as transfer\u00C3\u00AAncias realizadas pela conta existentes na base do emissor.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idTransferencia C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da transfer\u00C3\u00AAncia (id). (optional)
///
///  @param idContaOrigem C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta em que o valor ser\u00C3\u00A1 debitado para a transfer\u00C3\u00AAncia. (id). (optional)
///
///  @param idContaDestino C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta em que o valor ser\u00C3\u00A1 creditado para a transfer\u00C3\u00AAncia. (id). (optional)
///
///  @param valorTransferencia Valor estabelecido para ser transferido. (optional)
///
///  @param dataTransferencia Data estabelecida para ocorrer a transfer\u00C3\u00AAncia. (optional)
///
///  @returns PierPageTransferenciaResponse*
///
-(NSNumber*) listarUsingGET29WithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTransferencia: (NSNumber*) idTransferencia
    idContaOrigem: (NSNumber*) idContaOrigem
    idContaDestino: (NSNumber*) idContaDestino
    valorTransferencia: (NSNumber*) valorTransferencia
    dataTransferencia: (NSString*) dataTransferencia
    completionHandler: (void (^)(PierPageTransferenciaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarUsingGET29`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transferencias-creditos-cartoes"];

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
    if (idTransferencia != nil) {
        
        queryParams[@"idTransferencia"] = idTransferencia;
    }
    if (idContaOrigem != nil) {
        
        queryParams[@"idContaOrigem"] = idContaOrigem;
    }
    if (idContaDestino != nil) {
        
        queryParams[@"idContaDestino"] = idContaDestino;
    }
    if (valorTransferencia != nil) {
        
        queryParams[@"valorTransferencia"] = valorTransferencia;
    }
    if (dataTransferencia != nil) {
        
        queryParams[@"dataTransferencia"] = dataTransferencia;
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
                              responseType: @"PierPageTransferenciaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTransferenciaResponse*)data, error);
                           }
          ];
}

///
/// Lista contas existentes na base de dados do Emissor
/// Este recurso permite listar contas existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idProduto C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do produto ao qual a conta faz parte. (id). (optional)
///
///  @param idOrigemComercial C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id) que deu origem a Conta. (optional)
///
///  @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa Titular da Conta (id). (optional)
///
///  @param idStatusConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id). (optional)
///
///  @param diaVencimento Apresenta o dia de vencimento. (optional)
///
///  @param melhorDiaCompra Apresenta o melhor dia de compra. (optional)
///
///  @param dataStatusConta Apresenta a data em que o idStatusConta atual fora atribu\u00C3\u00ADdo para ela. (optional)
///
///  @param dataCadastro Apresenta a data em que o cart\u00C3\u00A3o foi gerado. (optional)
///
///  @param dataUltimaAlteracaoVencimento Apresenta a data da ultima altera\u00C3\u00A7\u00C3\u00A3o de vencimento. (optional)
///
///  @returns PierPageContaResponse*
///
-(NSNumber*) listarUsingGET7WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idProduto: (NSNumber*) idProduto
    idOrigemComercial: (NSNumber*) idOrigemComercial
    idPessoa: (NSNumber*) idPessoa
    idStatusConta: (NSNumber*) idStatusConta
    diaVencimento: (NSNumber*) diaVencimento
    melhorDiaCompra: (NSNumber*) melhorDiaCompra
    dataStatusConta: (NSString*) dataStatusConta
    dataCadastro: (NSString*) dataCadastro
    dataUltimaAlteracaoVencimento: (NSString*) dataUltimaAlteracaoVencimento
    completionHandler: (void (^)(PierPageContaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas"];

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
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (idOrigemComercial != nil) {
        
        queryParams[@"idOrigemComercial"] = idOrigemComercial;
    }
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (idStatusConta != nil) {
        
        queryParams[@"idStatusConta"] = idStatusConta;
    }
    if (diaVencimento != nil) {
        
        queryParams[@"diaVencimento"] = diaVencimento;
    }
    if (melhorDiaCompra != nil) {
        
        queryParams[@"melhorDiaCompra"] = melhorDiaCompra;
    }
    if (dataStatusConta != nil) {
        
        queryParams[@"dataStatusConta"] = dataStatusConta;
    }
    if (dataCadastro != nil) {
        
        queryParams[@"dataCadastro"] = dataCadastro;
    }
    if (dataUltimaAlteracaoVencimento != nil) {
        
        queryParams[@"dataUltimaAlteracaoVencimento"] = dataUltimaAlteracaoVencimento;
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
                              responseType: @"PierPageContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageContaResponse*)data, error);
                           }
          ];
}

///
/// Realiza a reativa\u00C3\u00A7\u00C3\u00A3o de contas.
/// Este recurso permite reativar contas. Para isso, ser\u00C3\u00A1 preciso informar o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id).
///  @param _id Id Conta 
///
///  @returns NSObject*
///
-(NSNumber*) reativarUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `reativarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/reativar"];

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
/// Permite listar uma linha do tempo com os eventos da conta
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir a listagem, em formato de timeline, dos eventos vinculados a uma detemrinada conta. Transa\u00C3\u00A7\u00C3\u00B5es, fechamento da fatura, pagamentos, gera\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00B5es e altera\u00C3\u00A7\u00C3\u00A3o de limite s\u00C3\u00A3o exemplos de eventos contemplados por esta funcionalidade. Neste m\u00C3\u00A9todo, as opera\u00C3\u00A7\u00C3\u00B5es s\u00C3\u00A3o ordenadas de forma decrescente.
///  @param _id Id Conta 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageTransacaoResponse*
///
-(NSNumber*) transacoesUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTransacaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `transacoesUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/timeline"];

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
                              responseType: @"PierPageTransacaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTransacaoResponse*)data, error);
                           }
          ];
}

///
/// Realizar transfer\u00C3\u00AAncia banc\u00C3\u00A1ria do cart\u00C3\u00A3o para contas banc\u00C3\u00A1rias
/// Este recurso tem como objetivo permitir que o portador de um cart\u00C3\u00A3o possa realizar a transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito para uma conta banc\u00C3\u00A1ria. Assim, o valor do cr\u00C3\u00A9dito somado a tarifa para transfer\u00C3\u00AAncia, quando praticada pelo emissor, ser\u00C3\u00A1 debitado da conta de origem, se houver saldo suficiente, e ser\u00C3\u00A1 creditado na conta banc\u00C3\u00A1ria de destino.
///  @param _id Id Conta 
///
///  @param transferenciaBancariaPersist transferenciaBancariaPersist 
///
///  @returns PierTransferenciaBancariaResponse*
///
-(NSNumber*) transferirUsingPOSTWithId: (NSNumber*) _id
    transferenciaBancariaPersist: (PierTransferenciaBancariaPersist*) transferenciaBancariaPersist
    completionHandler: (void (^)(PierTransferenciaBancariaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'transferenciaBancariaPersist' is set
    if (transferenciaBancariaPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `transferenciaBancariaPersist` when calling `transferirUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transferencias-creditos-contas-bancarias"];

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
    
    bodyParam = transferenciaBancariaPersist;
    

    
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
                              responseType: @"PierTransferenciaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransferenciaBancariaResponse*)data, error);
                           }
          ];
}

///
/// Realiza uma transfer\u00C3\u00AAncia de Cr\u00C3\u00A9dito para outro cliente do mesmo Emissor
/// Este m\u00C3\u00A9todo permite que um portador de um cart\u00C3\u00A3o possa realizar auma transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito para outro cliente do mesmo emissor.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta do cliente portador do cart\u00C3\u00A3o que ser\u00C3\u00A1 debitado (id). 
///
///  @param idContaDestino C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do cliente portador do cart\u00C3\u00A3o que ser\u00C3\u00A1 creditado (id). 
///
///  @param valorTransferencia Valor da Transfer\u00C3\u00AAncia. 
///
///  @returns PierPageTransferenciaResponse*
///
-(NSNumber*) transferirUsingPOST1WithId: (NSNumber*) _id
    idContaDestino: (NSNumber*) idContaDestino
    valorTransferencia: (NSNumber*) valorTransferencia
    completionHandler: (void (^)(PierPageTransferenciaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `transferirUsingPOST1`"];
    }
    
    // verify the required parameter 'idContaDestino' is set
    if (idContaDestino == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idContaDestino` when calling `transferirUsingPOST1`"];
    }
    
    // verify the required parameter 'valorTransferencia' is set
    if (valorTransferencia == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `valorTransferencia` when calling `transferirUsingPOST1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transferencias-creditos-cartoes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idContaDestino != nil) {
        
        queryParams[@"id_conta_destino"] = idContaDestino;
    }
    if (valorTransferencia != nil) {
        
        queryParams[@"valor_transferencia"] = valorTransferencia;
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
                              responseType: @"PierPageTransferenciaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTransferenciaResponse*)data, error);
                           }
          ];
}



@end
