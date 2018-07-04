#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierArquivoParametroResponse.h"


@protocol PierArquivoResponse
@end

@interface PierArquivoResponse : PierObject

/* {{{arquivo_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{arquivo_response_id_tipo_arquivo_value}}} [optional]
 */
@property(nonatomic) NSNumber* idTipoArquivo;
/* {{{arquivo_response_nome_tipo_arquivo_value}}} [optional]
 */
@property(nonatomic) NSString* nomeTipoArquivo;
/* {{{arquivo_response_id_status_arquivo_value}}} [optional]
 */
@property(nonatomic) NSNumber* idStatusArquivo;
/* {{{arquivo_response_nome_status_arquivo_value}}} [optional]
 */
@property(nonatomic) NSString* nomeStatusArquivo;
/* {{{arquivo_response_nome_value}}} [optional]
 */
@property(nonatomic) NSString* nome;
/* {{{arquivo_response_extensao_value}}} [optional]
 */
@property(nonatomic) NSString* extensao;
/* {{{arquivo_response_data_inclusao_value}}} [optional]
 */
@property(nonatomic) NSString* dataInclusao;
/* {{{arquivo_response_data_alteracao_value}}} [optional]
 */
@property(nonatomic) NSString* dataAlteracao;
/* {{{arquivo_response_detalhes_value}}} [optional]
 */
@property(nonatomic) NSArray<PierArquivoParametroResponse>* detalhes;

@end
