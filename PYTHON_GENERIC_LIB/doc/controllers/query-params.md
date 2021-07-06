# Query Params

```python
query_params_controller = client.query_params
```

## Class Name

`QueryParamsController`

## Methods

* [Send Number as Optional](/doc/controllers/query-params.md#send-number-as-optional)
* [Send Long as Optional](/doc/controllers/query-params.md#send-long-as-optional)
* [Precision as Optional](/doc/controllers/query-params.md#precision-as-optional)
* [Boolean as Optional](/doc/controllers/query-params.md#boolean-as-optional)
* [Rfc 1123 Datetime as Optional](/doc/controllers/query-params.md#rfc-1123-datetime-as-optional)
* [Rfc 3339 Datetime as Optional](/doc/controllers/query-params.md#rfc-3339-datetime-as-optional)
* [Send Date as Optional](/doc/controllers/query-params.md#send-date-as-optional)
* [Send String as Optional](/doc/controllers/query-params.md#send-string-as-optional)
* [Unixdatetime as Optional](/doc/controllers/query-params.md#unixdatetime-as-optional)


# Send Number as Optional

```python
def send_number_as_optional(self,
                           number,
                           number_1=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `int` | Query, Required | - |
| `number_1` | `int` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
number = 1
number_1 = 1

result = query_params_controller.send_number_as_optional(number, number_1)
```


# Send Long as Optional

```python
def send_long_as_optional(self,
                         long,
                         long_1=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `long` | `long\|int` | Query, Required | - |
| `long_1` | `long\|int` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
long = 123123
long_1 = 123123

result = query_params_controller.send_long_as_optional(long, long_1)
```


# Precision as Optional

```python
def precision_as_optional(self,
                         precision,
                         precision_1=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `precision` | `float` | Query, Required | - |
| `precision_1` | `float` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
precision = 1.23
precision_1 = 1.23

result = query_params_controller.precision_as_optional(precision, precision_1)
```


# Boolean as Optional

```python
def boolean_as_optional(self,
                       boolean,
                       boolean_1=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `boolean` | `bool` | Query, Required | - |
| `boolean_1` | `bool` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
boolean = True
boolean_1 = True

result = query_params_controller.boolean_as_optional(boolean, boolean_1)
```


# Rfc 1123 Datetime as Optional

```python
def rfc_1123_datetime_as_optional(self,
                                 date_time,
                                 date_time_1=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `datetime` | Query, Required | - |
| `date_time_1` | `datetime` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date_time = APIHelper.HttpDateTime.from_value('Sun, 06 Nov 1994 08:49:37 GMT').datetime
date_time_1 = APIHelper.HttpDateTime.from_value('Sun, 06 Nov 1994 08:49:37 GMT').datetime

result = query_params_controller.rfc_1123_datetime_as_optional(date_time, date_time_1)
```


# Rfc 3339 Datetime as Optional

```python
def rfc_3339_datetime_as_optional(self,
                                 date_time,
                                 date_time_1=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `datetime` | Query, Required | - |
| `date_time_1` | `datetime` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date_time = dateutil.parser.parse('1994-02-13 14:01:54')
date_time_1 = dateutil.parser.parse('1994-02-13 14:01:54')

result = query_params_controller.rfc_3339_datetime_as_optional(date_time, date_time_1)
```


# Send Date as Optional

```python
def send_date_as_optional(self,
                         date,
                         date_1=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date` | `date` | Query, Required | - |
| `date_1` | `date` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date = dateutil.parser.parse('1994-02-13').date()
date_1 = dateutil.parser.parse('1994-02-13').date()

result = query_params_controller.send_date_as_optional(date, date_1)
```


# Send String as Optional

```python
def send_string_as_optional(self,
                           string,
                           string_1=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `string` | `string` | Query, Required | - |
| `string_1` | `string` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
string = 'test'
string_1 = 'test'

result = query_params_controller.send_string_as_optional(string, string_1)
```


# Unixdatetime as Optional

```python
def unixdatetime_as_optional(self,
                            date_time,
                            date_time_1=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `datetime` | Query, Required | - |
| `date_time_1` | `datetime` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date_time = dt.datetime.utcfromtimestamp(1484719381)
date_time_1 = dt.datetime.utcfromtimestamp(1484719381)

result = query_params_controller.unixdatetime_as_optional(date_time, date_time_1)
```

