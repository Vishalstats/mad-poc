%dw 2.0
output application/json
---
"errorMessage":{
	"errorType": payload.errorMessage.errorType,
  	"transactionId": payload.errorMessage.transactionId,
  	"transactionType": payload.errorMessage.transactionType,
	"timestamp": payload.errorMessage.timestamp,
	"errors":payload.errorMessage.errors ++ vars."setError",
	"origin": payload.errorMessage.origin,
	"data": payload.errorMessage.data,
    "sourceSystemName": payload.errorMessage.sourceSystemName,
  	"targetSystemName": payload.errorMessage.targetSystemName
  	}