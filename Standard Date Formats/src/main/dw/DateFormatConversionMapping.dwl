%dw 2.0
output application/json
import dateTimeConversion from DateFormatConversion
---
dateTimeConversion(now(), "dd-MM-yyyy hh:mm:ss")
