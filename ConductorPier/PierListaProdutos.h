#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierProduto.h"


@protocol PierListaProdutos
@end

@interface PierListaProdutos : PierObject

/* Lista de produtos [optional]
 */
@property(nonatomic) NSArray<PierProduto>* produtos;

@end