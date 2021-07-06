
# Response With Enum

## Structure

`ResponseWithEnum`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `param_format` | [`ParamFormat`](/doc/models/param-format.md) | Required | - |
| `optional` | `bool` | Required | - |
| `mtype` | [`Type`](/doc/models/type.md) | Required | - |
| `constant` | `bool` | Required | - |
| `is_array` | `bool` | Required | - |
| `is_stream` | `bool` | Required | - |
| `is_attribute` | `bool` | Required | - |
| `is_map` | `bool` | Required | - |
| `attributes` | [`Attributes`](/doc/models/attributes.md) | Required | - |
| `nullable` | `bool` | Required | - |
| `id` | `string` | Required | - |
| `name` | `string` | Required | - |
| `description` | `string` | Required | - |

## Example (as JSON)

```json
{
  "paramFormat": "Template",
  "optional": false,
  "type": "Long",
  "constant": false,
  "isArray": false,
  "isStream": false,
  "isAttribute": false,
  "isMap": false,
  "attributes": {
    "exclusiveMaximum": false,
    "exclusiveMinimum": false,
    "id": "5a9fcb01caacc310dc6bab51"
  },
  "nullable": false,
  "id": "5a9fcb01caacc310dc6bab50",
  "name": "petId",
  "description": "ID of pet to update"
}
```

