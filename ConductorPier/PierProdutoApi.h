#import <Foundation/Foundation.h>
#import "PierProduto.h"
#import "PierListaProdutos.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierProdutoApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierProdutoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierProdutoApi*) sharedAPI;
///
///
/// Apresenta os dados de um determinado Produto.
/// Este m\u00C3\u00A9todo permite consultar um determinado Produto a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id)
/// 
///
/// @return PierProduto*
-(NSNumber*) consultarProdutoUsingGETWithIdProduto: (NSNumber*) idProduto
    completionHandler: (void (^)(PierProduto* output, NSError* error)) handler;


///
///
/// Lista os Produtos do Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Produtos existentes na base de dados do Emissor. 
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id).
/// @param nome Descri\u00C3\u00A7\u00C3\u00A3o do Nome do Produto.
/// @param status Representa o Status do Produto, onde: (\&quot;0\&quot;: Inativo), (\&quot;1\&quot;: Ativo).
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierListaProdutos*
-(NSNumber*) listarProdutosUsingGETWithId: (NSNumber*) _id
    nome: (NSString*) nome
    status: (NSNumber*) status
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierListaProdutos* output, NSError* error)) handler;



@end
