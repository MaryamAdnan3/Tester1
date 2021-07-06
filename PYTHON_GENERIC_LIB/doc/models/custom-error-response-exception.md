
# Custom Error Response Exception

## Structure

`CustomErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `error_description` | `string` | Required | - |
| `caught` | `string` | Required | - |
| `exception` | `string` | Required | - |
| `inner_exception` | `string` | Required | - |

## Example (as JSON)

```json
{
  "error description": null,
  "caught": "Error in CatchInner caused by calling the ThrowInner method.",
  "Exception": "In catch block of Main method.",
  "Inner Exception": "AppException: Exception in ThrowInner method."
}
```

