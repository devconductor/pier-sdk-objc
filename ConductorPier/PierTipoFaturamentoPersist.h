#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTipoFaturamentoPersist
@end

@interface PierTipoFaturamentoPersist : PierObject

/* Desci\u00C3\u00A7\u00C3\u00A3o do tipo de faturamento. 
 */
@property(nonatomic) NSString* descricao;
/* Flag que representa que o faturamento ser\u00C3\u00A1 apenas demonstrativo. 
 */
@property(nonatomic) NSNumber* flagApenasDemonstrativo;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do convenio relacionado ao tipo de faturamento. [optional]
 */
@property(nonatomic) NSNumber* idConvenio;

@end
