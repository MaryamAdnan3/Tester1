# Echo

```python
echo_controller = client.echo
```

## Class Name

`EchoController`

## Methods

* [Json Echo](/doc/controllers/echo.md#json-echo)
* [Form Echo](/doc/controllers/echo.md#form-echo)
* [Query Echo](/doc/controllers/echo.md#query-echo)


# Json Echo

Echo's back the request

```python
def json_echo(self,
             input)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `input` | `object` | Body, Required | - |

## Response Type

`mixed`

## Example Usage

```python
input = jsonpickle.decode('{"key1":"val1","key2":"val2"}')

result = echo_controller.json_echo(input)
```


# Form Echo

Sends the request including any form params as JSON

```python
def form_echo(self,
             input)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `input` | `object` | Form, Required | - |

## Response Type

`mixed`

## Example Usage

```python
input = jsonpickle.decode('{"key1":"val1","key2":"val2"}')

result = echo_controller.form_echo(input)
```


# Query Echo

```python
def query_echo(self,
              _optional_query_parameters=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `_optional_query_parameters` | `array` | Optional | Pass additional query parameters. |

## Response Type

[`EchoResponse`](/doc/models/echo-response.md)

## Example Usage

```python
_optional_query_parameters = {'key0' : 'additionalQueryParams2' } 

result = echo_controller.query_echo(_optional_query_parameters)
```

