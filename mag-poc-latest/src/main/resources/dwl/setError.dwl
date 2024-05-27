%dw 2.0
output application/json
---
[{
  	"code": vars.httpStatus,
    "type": error.errorType.namespace ++ ":" ++ error.errorType.identifier,
    "message": error.description
}]