#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierLinkHistoricoAssessoriaResponse_
@end

@interface PierLinkHistoricoAssessoriaResponse_ : PierObject

/* Apresenta a data e hora do hist\u00C3\u00B3rico [optional]
 */
@property(nonatomic) NSString* dataHoraHistorico;
/* Apresenta o tipo do hist\u00C3\u00B3rico podendo ser ENTRADA ou SAIDA [optional]
 */
@property(nonatomic) NSString* tipoHistorico;
/* Apresenta o nome da Assessoria de Cobran\u00C3\u00A7a relacionada ao hist\u00C3\u00B3rico [optional]
 */
@property(nonatomic) NSString* nomeAssessoria;

@end
