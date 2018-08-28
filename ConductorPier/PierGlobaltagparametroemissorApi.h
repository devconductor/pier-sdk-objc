#import <Foundation/Foundation.h>
#import "PierParametroEmissorResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltagparametroemissorApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltagparametroemissorApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltagparametroemissorApi*) sharedAPI;
///
///
/// {{{parametro_emissor_recurso}}}
/// {{{parametro_emissor_recurso_notas}}}
///
/// @param codigo {{{parametro_emissor_recurso_pesquisa_codigo_param}}}
/// 
///
/// @return PierParametroEmissorResponse*
-(NSNumber*) consultarUsingGET29WithCodigo: (NSString*) codigo
    completionHandler: (void (^)(PierParametroEmissorResponse* output, NSError* error)) handler;



@end