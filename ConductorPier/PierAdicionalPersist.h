#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierTelefoneAdicionalPersist.h"


@protocol PierAdicionalPersist
@end

@interface PierAdicionalPersist : PierObject

/* Nome completo do Adicional. 
 */
@property(nonatomic) NSString* nome;
/* Nome do Adicional que ser\u00C3\u00A1 gravado no Cart\u00C3\u00A3o. [optional]
 */
@property(nonatomic) NSString* nomeImpresso;
/* N\u00C3\u00BAmero do CPF ou CNPJ do Adicional. 
 */
@property(nonatomic) NSString* numeroReceitaFederal;
/* Data de Nascimento do Adicional em formato yyyy-MM-dd. [optional]
 */
@property(nonatomic) NSString* dataNascimento;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\"M\": Masculino), (\"F\": Feminino), (\"O\": Outro), (\"N\": N\u00C3\u00A3o Especificado). [optional]
 */
@property(nonatomic) NSString* sexo;
/* N\u00C3\u00BAmero do Documento de Identidade do Adicional. [optional]
 */
@property(nonatomic) NSString* numeroIdentidade;
/* Nome do Org\u00C3\u00A3o Emissor do Documento de Identidade do Adicional. [optional]
 */
@property(nonatomic) NSString* orgaoExpedidorIdentidade;
/* Sigla da Unidade Federativa onde o Documento de Identidade do Adicional foi emitido. [optional]
 */
@property(nonatomic) NSString* unidadeFederativaIdentidade;
/* Data de emiss\u00C3\u00A3o do Documento de Identidade do Adicional em formato yyyy-MM-dd. [optional]
 */
@property(nonatomic) NSString* dataEmissaoIdentidade;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Estado Civil do Adicional. [optional]
 */
@property(nonatomic) NSNumber* idEstadoCivil;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Profissao do Adicional. [optional]
 */
@property(nonatomic) NSNumber* idProfissao;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Nacionalidade do Adicional. [optional]
 */
@property(nonatomic) NSNumber* idNacionalidade;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Parentesco do Adicional com o Titular. [optional]
 */
@property(nonatomic) NSNumber* idParentesco;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Parentesco do Adicional com o Titular. [optional]
 */
@property(nonatomic) NSString* email;
/* Lista de telefones do adicional. [optional]
 */
@property(nonatomic) NSArray<PierTelefoneAdicionalPersist>* telefones;

@end
