#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTransferenciaResponse
@end

@interface PierTransferenciaResponse : PierObject

/* C\u00F3digo de identifica\u00E7\u00E3o da transfer\u00EAncia (id). [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Data estabelecida para ocorrer a transfer\u00EAncia. [optional]
 */
@property(nonatomic) NSString* dataTransferencia;
/* C\u00F3digo de identifica\u00E7\u00E3o da conta em que o valor ser\u00E1 debitado para a transfer\u00EAncia. (id). [optional]
 */
@property(nonatomic) NSNumber* idContaOrigem;
/* C\u00F3digo de identifica\u00E7\u00E3o da conta em que o valor ser\u00E1 creditado para a transfer\u00EAncia. (id). [optional]
 */
@property(nonatomic) NSNumber* idContaDestino;
/* Valor estabelecido para ser transferido. [optional]
 */
@property(nonatomic) NSNumber* valorTransferencia;

@end
