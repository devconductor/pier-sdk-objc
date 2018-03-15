#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierAdicionalResponse
@end

@interface PierAdicionalResponse : PierObject

/* C\u00F3digo de identifica\u00E7\u00E3o da Conta para cadastro do Adicional [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* C\u00F3digo de identifica\u00E7\u00E3o da Pessoa Adicional [optional]
 */
@property(nonatomic) NSNumber* idPessoa;
/* Nome completo do Adicional [optional]
 */
@property(nonatomic) NSString* nome;
/* Nome do Adicional que ser\u00E1 gravado no Cart\u00E3o [optional]
 */
@property(nonatomic) NSString* nomeImpresso;
/* N\u00FAmero do CPF ou CNPJ do Adicional [optional]
 */
@property(nonatomic) NSString* numeroReceitaFederal;
/* Data de Nascimento do Adicional [optional]
 */
@property(nonatomic) NSString* dataNascimento;
/* C\u00F3digo de identifica\u00E7\u00E3o do sexo da Pessoa, quando PF, sendo: (\"M\": Masculino), (\"F\": Feminino), (\"O\": Outro), (\"N\": N\u00E3o Especificado). [optional]
 */
@property(nonatomic) NSString* sexo;
/* N\u00FAmero do Documento de Identidade do Adicional [optional]
 */
@property(nonatomic) NSString* numeroIdentidade;
/* Nome do Org\u00E3o Emissor do Documento de Identidade do Adicional [optional]
 */
@property(nonatomic) NSString* orgaoExpedidorIdentidade;
/* Sigla da Unidade Federativa onde o Documento de Identidade do Adicional foi emitido [optional]
 */
@property(nonatomic) NSString* unidadeFederativaIdentidade;
/* Data de emiss\u00E3o do Documento de Identidade do Adicional [optional]
 */
@property(nonatomic) NSString* dataEmissaoIdentidade;
/* C\u00F3digo de identifica\u00E7\u00E3o do Parentesco do Adicional com o Titular [optional]
 */
@property(nonatomic) NSNumber* idParentesco;
/* Indica se o adicional est\u00E1 ativo = 1 ou inativo = 0 [optional]
 */
@property(nonatomic) NSNumber* flagAtivo;
/* Indica a data de cadastro do adicional [optional]
 */
@property(nonatomic) NSString* dataCadastroPortador;
/* Indica a data de cancelamento do adicional [optional]
 */
@property(nonatomic) NSString* dataCancelamentoPortador;

@end
