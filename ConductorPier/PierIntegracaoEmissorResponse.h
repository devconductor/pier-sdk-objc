#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierIntegracaoEmissorResponse
@end

@interface PierIntegracaoEmissorResponse : PierObject

/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do registro na tabela Integra\u00C3\u00A7\u00C3\u00A3oEmissor. [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta. [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do arquivo. [optional]
 */
@property(nonatomic) NSNumber* idArquivo;
/* Status do registro. [optional]
 */
@property(nonatomic) NSString* status;
/* Data de inclus\u00C3\u00A3o do registro. [optional]
 */
@property(nonatomic) NSString* dataInclusao;
/* Data da ultima altera\u00C3\u00A7\u00C3\u00A3o do registro. [optional]
 */
@property(nonatomic) NSString* dataAlteracao;

@end