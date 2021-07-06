
# Employee

## Structure

`Employee`

## Inherits From

[`Person`](/doc/models/person.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `department` | `string` | Required | - |
| `dependents` | [`List of Person`](/doc/models/person.md) | Required | - |
| `hired_at` | `datetime` | Required | - |
| `joining_day` | [`Days`](/doc/models/days.md) | Required | **Default**: `'Monday'`<br>*Default: `'Monday'`* |
| `salary` | `int` | Required | - |
| `working_days` | [`List of Days`](/doc/models/days.md) | Required | - |
| `boss` | [`Person`](/doc/models/person.md) | Optional | - |

## Example (as JSON)

```json
{
  "department": null,
  "dependents": null,
  "hiredAt": null,
  "joiningDay": "Monday",
  "salary": null,
  "workingDays": null
}
```

