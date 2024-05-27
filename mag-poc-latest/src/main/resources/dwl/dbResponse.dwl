%dw 2.0
output application/json
var dbPayload= payload
---
flatten( dbPayload map(value,index)->{
	"Transaction_Type": value.Transaction_Type,
	"Email_Address": value.Email_Address,
	"Email_Subject": value.Email_Subject,
	"Email_CC": value.Email_CC,
	"Email_BCC": value.Email_BCC,
	"Email_Source": value.Email_Source
	
})