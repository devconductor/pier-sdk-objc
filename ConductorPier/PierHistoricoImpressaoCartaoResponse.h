#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierHistoricoImpressaoCartaoResponse
@end

@interface PierHistoricoImpressaoCartaoResponse : PierObject

/* C\u00F3digo de Identifica\u00E7\u00E3o do Hist\u00F3rico de Impress\u00E3o Avulsa de Cart\u00F5es (id). 
 */
@property(nonatomic) NSNumber* _id;
/* C\u00F3digo de Identifica\u00E7\u00E3o do Cart\u00E3o (id). 
 */
@property(nonatomic) NSNumber* idCartao;
/* C\u00F3digo de Identifica\u00E7\u00E3o do Status de Impress\u00E3o do Cart\u00E3o (id). 
 */
@property(nonatomic) NSNumber* idStatusImpressaoCartao;
/* Apresenta uma mensagem que descreve a etapa do processo de impress\u00E3o do cart\u00E3o que fora realizado. [optional]
 */
@property(nonatomic) NSString* mensagemHistorico;
/* Apresenta a data que o registro de Hist\u00F3rico de Impress\u00E3o de um Cart\u00E3o fora inserido. [optional]
 */
@property(nonatomic) NSString* dataHistorico;

@end
