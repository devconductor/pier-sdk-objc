#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTransacaoPayQueryRequest
@end

@interface PierTransacaoPayQueryRequest : PierObject

/* Numero do cartao (criptografado) [optional]
 */
@property(nonatomic) NSString* numeroCartao;
/* Id do cart\u00E3o [optional]
 */
@property(nonatomic) NSNumber* idCartao;
/* Origem [optional]
 */
@property(nonatomic) NSString* origem;
/* Tipo de ordena\u00E7\u00E3o dos registros. [optional]
 */
@property(nonatomic) NSArray* /* NSString */ sort;

@end
