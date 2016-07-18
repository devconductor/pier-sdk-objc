#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierExtratoResponse
@end

@interface PierExtratoResponse : PierObject


@property(nonatomic) NSString* cartao;

@property(nonatomic) NSString* chip;

@property(nonatomic) NSString* cidadeUFPais;

@property(nonatomic) NSString* codigoAutorizacao;

@property(nonatomic) NSString* codigoMoeda;

@property(nonatomic) NSString* codigoMoedaDestino;

@property(nonatomic) NSNumber* cotacaoDolar;

@property(nonatomic) NSNumber* credito;

@property(nonatomic) NSString* dataCompra;

@property(nonatomic) NSDate* dataCotacaoDolar;

@property(nonatomic) NSString* dataEntradaCompra;

@property(nonatomic) NSString* dataTransacaoUTC;

@property(nonatomic) NSNumber* debito;

@property(nonatomic) NSString* descricaoModoEntrada;

@property(nonatomic) NSString* descricaoTransacao;

@property(nonatomic) NSNumber* encargosFinanceiros;

@property(nonatomic) NSString* historico;

@property(nonatomic) NSNumber* idEventoExterno;

@property(nonatomic) NSNumber* idTipoTransacao;

@property(nonatomic) NSNumber* idTransacao;

@property(nonatomic) NSNumber* mcc;

@property(nonatomic) NSString* nomeEstabVisa;

@property(nonatomic) NSString* nomePlastico;

@property(nonatomic) NSNumber* numeroEstabelecimento;

@property(nonatomic) NSString* origem;

@property(nonatomic) NSNumber* taxaEmbarque;

@property(nonatomic) NSString* tipoEvento;

@property(nonatomic) NSNumber* valorDolar;

@end