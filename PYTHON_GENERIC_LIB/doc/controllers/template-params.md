# Template Params

```python
template_params_controller = client.template_params
```

## Class Name

`TemplateParamsController`

## Methods

* [Send String Array](/doc/controllers/template-params.md#send-string-array)
* [Send Integer Array](/doc/controllers/template-params.md#send-integer-array)


# Send String Array

```python
def send_string_array(self,
                     strings)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `strings` | `List of string` | Template, Required | - |

## Response Type

[`EchoResponse`](/doc/models/echo-response.md)

## Example Usage

```python
strings = ['strings5']

result = template_params_controller.send_string_array(strings)
```


# Send Integer Array

```python
def send_integer_array(self,
                      integers)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `integers` | `List of int` | Template, Required | - |

## Response Type

[`EchoResponse`](/doc/models/echo-response.md)

## Example Usage

```python
integers = [45, 46, 47]

result = template_params_controller.send_integer_array(integers)
```

