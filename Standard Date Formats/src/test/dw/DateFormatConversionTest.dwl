%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts

import * from DateFormatConversion

var date: DateTime = "2022-06-06T10:00:00" as DateTime
---
"DateFormatConversion" describedBy [
    "dateTimeConversion" describedBy [
        "Date format" in do {
            dateTimeConversion(date, "dd-MM-yyyy") must equalTo("06-06-2022")
        },
        "Time format" in do {
            dateTimeConversion(date, "hh:mma") must equalTo("10:00AM")
        },
        "Date and Time format" in do {
            dateTimeConversion(date, "dd-MM-yyyy hh:mm:ss a") must equalTo("06-06-2022 10:00:00 AM")
        }
    ],
]
