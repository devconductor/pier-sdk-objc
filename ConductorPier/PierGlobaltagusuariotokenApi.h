#import <Foundation/Foundation.h>
#import "PierControleTentativaCadastroResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltagusuariotokenApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltagusuariotokenApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltagusuariotokenApi*) sharedAPI;
///
///
/// {{{usuario_token_recurso_controle_tentativa_cadastro_incrementar}}}
/// {{{usuario_token_recurso_controle_tentativa_cadastro_incrementar_notas}}}
///
/// @param cpf {{{usuario_token_recurso_controle_tentativa_cadastro_incrementar_param_cpf}}}
/// 
///
/// @return PierControleTentativaCadastroResponse*
-(NSNumber*) incrementarTentativaUsingPUTWithCpf: (NSString*) cpf
    completionHandler: (void (^)(PierControleTentativaCadastroResponse* output, NSError* error)) handler;


///
///
/// {{{usuario_token_recurso_controle_tentativa_cadastro_verificar}}}
/// {{{usuario_token_recurso_controle_tentativa_cadastro_verificar_notas}}}
///
/// @param cpf {{{usuario_token_recurso_controle_tentativa_cadastro_verificar_param_cpf}}}
/// 
///
/// @return PierControleTentativaCadastroResponse*
-(NSNumber*) verificarTentativaUsingGETWithCpf: (NSString*) cpf
    completionHandler: (void (^)(PierControleTentativaCadastroResponse* output, NSError* error)) handler;



@end