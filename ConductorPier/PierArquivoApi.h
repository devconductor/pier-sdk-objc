#import <Foundation/Foundation.h>
#import "PierArquivoDetalheResponse.h"
#import "PierIntegrarArquivoRequest.h"
#import "PierPageArquivoAUDResponse.h"
#import "PierPageStatusArquivoResponse.h"
#import "PierPageTipoArquivoResponse.h"
#import "PierPageArquivoResponse.h"
#import "PierArquivoPersist.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierArquivoApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierArquivoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierArquivoApi*) sharedAPI;
///
///
/// Consulta de arquivo no PIER Cloud
/// Este recurso permite consultar um determinado arquivo armazenado no PIER Cloud.
///
/// @param _id C\u00F3digo de Identifica\u00E7\u00E3o do arquivo
/// 
///
/// @return PierArquivoDetalheResponse*
-(NSNumber*) consultarUsingGET3WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierArquivoDetalheResponse* output, NSError* error)) handler;


///
///
/// Integrar Arquivos
/// Este recurso foi desenvolvido para realizar a integra\u00E7\u00E3o de arquivos do PIER Cloud junto a reposit\u00F3rios externos pr\u00E9-configurado.
///
/// @param integrarArquivoRequest integrarArquivoRequest
/// 
///
/// @return NSObject*
-(NSNumber*) integrarUsingPOSTWithIntegrarArquivoRequest: (PierIntegrarArquivoRequest*) integrarArquivoRequest
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// Lista as auditorias de arquivos vinculadas a um N\u00FAmero da Receita Federal
/// Este recurso permite listar as auditorias de arquivos vinculadas a um N\u00FAmero da Receita Federal que ser\u00E1 passado como par\u00E2metro.
///
/// @param numeroReceitaFederal Par\u00E2metro vinculado a um arquivo no ato de seu cadastro
/// @param page P\u00E1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageArquivoAUDResponse*
-(NSNumber*) listarPorNumeroReceitaFederalUsingGETWithNumeroReceitaFederal: (NSString*) numeroReceitaFederal
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageArquivoAUDResponse* output, NSError* error)) handler;


///
///
/// Listar Status de Arquivo
/// Este recurso permite a listagem de todos os Status de Arquivo.
///
/// @param sort Tipo de ordena\u00E7\u00E3o dos registros.
/// @param page P\u00E1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50)
/// @param nome Nome do status de arquivo
/// @param descricao Descri\u00E7\u00E3o do status de arquivo
/// 
///
/// @return PierPageStatusArquivoResponse*
-(NSNumber*) listarStatusArquivosUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageStatusArquivoResponse* output, NSError* error)) handler;


///
///
/// Listar Tipos de Arquivo
/// Este recurso permite a listagem de todos os Tipos de Arquivo.
///
/// @param sort Tipo de ordena\u00E7\u00E3o dos registros.
/// @param page P\u00E1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50)
/// @param nome Nome do tipo de arquivo
/// @param descricao Descri\u00E7\u00E3o do tipo de arquivo
/// 
///
/// @return PierPageTipoArquivoResponse*
-(NSNumber*) listarTiposArquivosUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageTipoArquivoResponse* output, NSError* error)) handler;


///
///
/// Lista as auditorias do arquivo
/// Este recurso permite listar as auditorias de um determinado arquivo a partir do seu c\u00F3digo de identifica\u00E7\u00E3o (id).
///
/// @param _id C\u00F3digo de Identifica\u00E7\u00E3o do arquivo
/// @param page P\u00E1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageArquivoAUDResponse*
-(NSNumber*) listarUsingGET4WithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageArquivoAUDResponse* output, NSError* error)) handler;


///
///
/// Listar arquivos do Pier Cloud
/// Este recurso permite a listagem de todos os arquivos dispon\u00EDveis no Pier Cloud.
///
/// @param sort Tipo de ordena\u00E7\u00E3o dos registros.
/// @param page P\u00E1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50)
/// @param nome Nome do arquivo
/// @param idTipoArquivo Tipo do arquivo
/// @param idStatusArquivo Identificador do status do arquivo
/// @param extensao Extens\u00E3o do arquivo
/// 
///
/// @return PierPageArquivoResponse*
-(NSNumber*) listarUsingGET5WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    idTipoArquivo: (NSNumber*) idTipoArquivo
    idStatusArquivo: (NSNumber*) idStatusArquivo
    extensao: (NSString*) extensao
    completionHandler: (void (^)(PierPageArquivoResponse* output, NSError* error)) handler;


///
///
/// Permite armazenar arquivos no PIER Cloud
/// Este recurso permite o armazenamento de arquivos no PIER Cloud.
///
/// @param arquivoPersist arquivoPersist
/// 
///
/// @return PierArquivoDetalheResponse*
-(NSNumber*) salvarUsingPOST1WithArquivoPersist: (PierArquivoPersist*) arquivoPersist
    completionHandler: (void (^)(PierArquivoDetalheResponse* output, NSError* error)) handler;



@end
