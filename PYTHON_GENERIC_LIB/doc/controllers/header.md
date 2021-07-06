# Header

```python
header_controller = client.header
```

## Class Name

`HeaderController`


# Send Headers

Sends a single header params

```python
def send_headers(self,
                custom_header,
                value)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `custom_header` | `string` | Header, Required | - |
| `value` | `string` | Form, Required | Represents the value of the custom header |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
custom_header = 'custom-header2'
value = 'value2'

result = header_controller.send_headers(custom_header, value)
```

