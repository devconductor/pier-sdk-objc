#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierMaquinetaResponse
@end

@interface PierMaquinetaResponse : PierObject

/* {{{maquineta_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{maquineta_response_id_estabelecimento_value}}} [optional]
 */
@property(nonatomic) NSNumber* idEstabelecimento;
/* {{{maquineta_response_id_tipo_maquineta_value}}} [optional]
 */
@property(nonatomic) NSNumber* idTipoMaquineta;
/* {{{maquineta_response_valor_value}}} [optional]
 */
@property(nonatomic) NSNumber* valor;
/* {{{maquineta_response_data_hora_implantacao_value}}} [optional]
 */
@property(nonatomic) NSString* dataHoraImplantacao;
/* {{{maquineta_response_data_hora_cadastramento_value}}} [optional]
 */
@property(nonatomic) NSString* dataHoraCadastramento;
/* {{{maquineta_response_terminal_value}}} [optional]
 */
@property(nonatomic) NSString* terminal;
/* {{{maquineta_response_usuario_apl_value}}} [optional]
 */
@property(nonatomic) NSString* usuarioApl;

@end
