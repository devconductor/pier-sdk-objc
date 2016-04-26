#import <Foundation/Foundation.h>
#import "CaaSContaResponse.h"
#import "CaaSObject.h"
#import "CaaSApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface CaaSContaApi: NSObject

@property(nonatomic, assign)CaaSApiClient *apiClient;

-(instancetype) initWithApiClient:(CaaSApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(CaaSContaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(CaaSContaApi*) sharedAPI;
///
///
/// /contas/{idConta}
/// Consulte informaÃ§Ãµes de uma determinada conta
///
/// @param idEmissor ID do Emissor
/// @param idConta ID da Conta
/// 
///
/// @return CaaSContaResponse*
-(NSNumber*) consultarContaUsingGETWithCompletionBlock :(NSNumber*) idEmissor 
     idConta:(NSNumber*) idConta 
    
    completionHandler: (void (^)(CaaSContaResponse* output, NSError* error))completionBlock;
    



@end