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

/* {{{campanha_persist_nome_value}}} [optional]
 */
@property(nonatomic) NSString* nome;
/* {{{campanha_persist_id_tipo_campanha_value}}} [optional]
 */
@property(nonatomic) NSNumber* idTipoCampanha;
/* {{{campanha_persist_planos_campanhas_value}}} [optional]
 */
@property(nonatomic) NSArray<PierPlanoCampanhaPersist>* planosCampanhas;

@end
