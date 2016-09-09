#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierProduto
@end

@interface PierProduto : PierObject

/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). 
 */
@property(nonatomic) NSNumber* _id;
/* Descri\u00C3\u00A7\u00C3\u00A3o do Nome do Produto. 
 */
@property(nonatomic) NSString* nome;
/* Representa o Status do Produto, onde: (\"0\": Inativo), (\"1\": Ativo). 
 */
@property(nonatomic) NSNumber* status;

@end
