#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierAcordoResponse
@end

@interface PierAcordoResponse : PierObject

/* C\u00F3digo de Identifica\u00E7\u00E3o do acordo (id). [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00F3digo de Identifica\u00E7\u00E3o da conta. [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* Status do acordo. [optional]
 */
@property(nonatomic) NSNumber* statusAcordo;
/* Valor do Acordo. [optional]
 */
@property(nonatomic) NSNumber* valorAcordo;
/* Data e Hora do acordo. [optional]
 */
@property(nonatomic) NSString* dataAcordo;
/* Quantidade de parcelas do acordo. [optional]
 */
@property(nonatomic) NSNumber* quantidadeParcelas;
/* Saldo atual final. [optional]
 */
@property(nonatomic) NSNumber* saldoAtualFinal;
/* Dias em atraso. [optional]
 */
@property(nonatomic) NSNumber* diasEmAtraso;

@end
