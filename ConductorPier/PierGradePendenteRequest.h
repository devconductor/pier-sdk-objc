#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierGradePendenteRequest
@end

@interface PierGradePendenteRequest : PierObject

/* C\u00F3digo identificador da conta. [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* Data do ajuste no formato yyyy-MM-dd. [optional]
 */
@property(nonatomic) NSString* dataBase;

@end
