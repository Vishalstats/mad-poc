%dw 2.0
output application/json
---
"errorMessage":{
	"errorType": "Technical_Error",
  	"transactionId": vars.corrID default correlationId ,
  	"transactionType": Mule::p('transaction.type'),
	"timestamp": now() as String {format: "yyyy-MM-dd'T'HH:mm:ss"},
	"errors":[{
  	"code": vars.httpStatus,
    "type": error.errorType.namespace ++ ":" ++ error.errorType.identifier,
    "message": error.description
	}],
	"origin": Mule::p('API.name'),
	"data": "",
    "sourceSystemName": vars.sourceSystem,
  	"targetSystemName": vars.targetSystem
  	}