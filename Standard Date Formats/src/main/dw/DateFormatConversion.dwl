%dw 2.0
/**
* Converts a given `DateTime` into the given desired format.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `dateTime` | DateTime | This is the provided DateTime
* | `dateTimeFormat` | String | This is the format in which the DateTime is to be converted
* |===
*
* === Example
*
* This example shows how the `dateTimeConversion` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import dateTimeConversion from DateFormatConversion
* ---
* {
*   one: dateTimeConversion(now(), "dd-MM-yyyy hh:mm:ss a"),
*   two: dateTimeConversion(now(), "yy-MM-dd"),
*   three: dateTimeConversion(now(), "hh:mma")
* }
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "one": "02-06-2022 02:01:40 PM",
*   "two": "22-06-02",
*   "three": "02:01PM"
* }
* ----
*
*/
fun dateTimeConversion (dateTime: DateTime, dateTimeFormat: String) = 
  dateTime as String {format: dateTimeFormat}
