#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierJobResponse
@end

@interface PierJobResponse : PierObject

/* Identificador do Job [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Descricao do Job [optional]
 */
@property(nonatomic) NSString* descricao;
/* Script Groovy do Job [optional]
 */
@property(nonatomic) NSString* groovy;
/* Cron do Job [optional]
 */
@property(nonatomic) NSString* cron;
/* Status do Job no agendador de tarefas [optional]
 */
@property(nonatomic) NSString* status;

@end