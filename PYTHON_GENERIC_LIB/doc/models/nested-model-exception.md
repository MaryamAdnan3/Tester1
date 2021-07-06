
# Nested Model Exception

## Structure

`NestedModelException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `server_message` | `string` | Required | - |
| `server_code` | `string` | Required | - |
| `model` | [`Validate`](/doc/models/validate.md) | Required | - |

## Example (as JSON)

```json
{
  "ServerMessage": "ServerMessage6",
  "ServerCode": "ServerCode0",
  "model": {
    "field": "field4",
    "name": "name2",
    "address": null
  }
}
```

