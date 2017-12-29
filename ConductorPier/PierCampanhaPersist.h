#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierPlanoCampanhaPersist.h"


@protocol PierCampanhaPersist
@end

@interface PierCampanhaPersist : PierObject

/* Nome da campanha. [optional]
 */
@property(nonatomic) NSString* nome;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo da campanha. [optional]
 */
@property(nonatomic) NSNumber* idTipoCampanha;
/* Lista com os planos de campanha. [optional]
 */
@property(nonatomic) NSArray<PierPlanoCampanhaPersist>* planosCampanhas;

@end