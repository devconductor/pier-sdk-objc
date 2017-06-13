#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierFAQ
@end

@interface PierFAQ : PierObject

/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da FAQ (id). [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Conte\u00C3\u00BAdo da pergunta. [optional]
 */
@property(nonatomic) NSString* pergunta;
/* Conte\u00C3\u00BAdo da resposta. [optional]
 */
@property(nonatomic) NSString* resposta;
/* N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. [optional]
 */
@property(nonatomic) NSNumber* relevancia;
/* Plataforma em que a FAQ se encaixa. [optional]
 */
@property(nonatomic) NSString* plataforma;
/* Categoria de assunto do qual a FAQ se trata. [optional]
 */
@property(nonatomic) NSString* categoria;
/* Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. [optional]
 */
@property(nonatomic) NSString* status;

@end
