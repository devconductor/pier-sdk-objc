#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierPortadorResponse
@end

@interface PierPortadorResponse : PierObject

/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id). [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). [optional]
 */
@property(nonatomic) NSNumber* idProduto;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id). [optional]
 */
@property(nonatomic) NSNumber* idPessoa;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Parentesco (id) [optional]
 */
@property(nonatomic) NSNumber* idParentesco;
/* Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: ('T': Titular, 'A': Adicional). [optional]
 */
@property(nonatomic) NSString* tipoPortador;
/* Apresenta o nome a ser impresso no cart\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSString* nomeImpresso;
/* Apresenta o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do cart\u00C3\u00A3o (id), que ser\u00C3\u00A1 utilizado para gerar os cart\u00C3\u00B5es deste portador, vinculados a sua respectiva conta atrav\u00C3\u00A9s do campo idConta. [optional]
 */
@property(nonatomic) NSNumber* idTipoCartao;
/* Quanto ativa, indica que o cadastro do Portador est\u00C3\u00A1 ativo, em emissores que realizam este tipo de gest\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSNumber* flagAtivo;
/* Apresenta a data em que o Portador fora cadastrado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSString* dataCadastroPortador;
/* Apresenta a data em que o Portador fora cancelado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSString* dataCancelamentoPortador;

@end