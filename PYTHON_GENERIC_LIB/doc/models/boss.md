
# Boss

Testing circular reference.

## Structure

`Boss`

## Inherits From

[`Employee`](/doc/models/employee.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `promoted_at` | `datetime` | Required | - |
| `assistant` | [`Employee`](/doc/models/employee.md) | Optional | - |

## Example (as JSON)

```json
{
  "promotedAt": 1480809600,
  "assistant": null,
  "department": "department0",
  "dependents": [
    {
      "address": "address3",
      "age": 45,
      "birthday": "2016-03-13",
      "birthtime": "2016-03-13T12:52:32.123Z",
      "name": "name7",
      "uid": "uid7",
      "personType": null
    },
    {
      "address": "address4",
      "age": 46,
      "birthday": "2016-03-13",
      "birthtime": "2016-03-13T12:52:32.123Z",
      "name": "name8",
      "uid": "uid8",
      "personType": null
    },
    {
      "address": "address5",
      "age": 47,
      "birthday": "2016-03-13",
      "birthtime": "2016-03-13T12:52:32.123Z",
      "name": "name9",
      "uid": "uid9",
      "personType": null
    }
  ],
  "hiredAt": "Mon, 15 Jun 2009 20:45:30 GMT",
  "joiningDay": "Sunday",
  "salary": 176,
  "workingDays": [
    "Monday"
  ],
  "boss": null,
  "address": "address6",
  "age": 250,
  "birthday": "2016-03-13",
  "birthtime": "2016-03-13T12:52:32.123Z",
  "name": "name0",
  "uid": "uid0",
  "personType": null
}
```

