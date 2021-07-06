# Query Param

```python
query_param_controller = client.query_param
```

## Class Name

`QueryParamController`

## Methods

* [Date Array](/doc/controllers/query-param.md#date-array)
* [Optional Dynamic Query Param](/doc/controllers/query-param.md#optional-dynamic-query-param)
* [Date](/doc/controllers/query-param.md#date)
* [Unix Date Time Array](/doc/controllers/query-param.md#unix-date-time-array)
* [Unix Date Time](/doc/controllers/query-param.md#unix-date-time)
* [Rfc 1123 Date Time](/doc/controllers/query-param.md#rfc-1123-date-time)
* [Rfc 1123 Date Time Array](/doc/controllers/query-param.md#rfc-1123-date-time-array)
* [Rfc 3339 Date Time Array](/doc/controllers/query-param.md#rfc-3339-date-time-array)
* [Rfc 3339 Date Time](/doc/controllers/query-param.md#rfc-3339-date-time)
* [No Params](/doc/controllers/query-param.md#no-params)
* [String Param](/doc/controllers/query-param.md#string-param)
* [Url Param](/doc/controllers/query-param.md#url-param)
* [Number Array](/doc/controllers/query-param.md#number-array)
* [String Array](/doc/controllers/query-param.md#string-array)
* [Simple Query](/doc/controllers/query-param.md#simple-query)
* [String Enum Array](/doc/controllers/query-param.md#string-enum-array)
* [Multiple Params](/doc/controllers/query-param.md#multiple-params)
* [Integer Enum Array](/doc/controllers/query-param.md#integer-enum-array)


# Date Array

```python
def date_array(self,
              dates)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dates` | `List of date` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
dates = [dateutil.parser.parse('2016-03-13').date(), dateutil.parser.parse('2016-03-13').date()]

result = query_param_controller.date_array(dates)
```


# Optional Dynamic Query Param

get optional dynamic query parameter

```python
def optional_dynamic_query_param(self,
                                name,
                                _optional_query_parameters=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `string` | Query, Required | - |
| `_optional_query_parameters` | `array` | Optional | Pass additional query parameters. |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
name = 'name0'
_optional_query_parameters = {'key0' : 'additionalQueryParams2' } 

result = query_param_controller.optional_dynamic_query_param(name, _optional_query_parameters)
```


# Date

```python
def date(self,
        date)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date` | `date` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date = dateutil.parser.parse('2016-03-13').date()

result = query_param_controller.date(date)
```


# Unix Date Time Array

```python
def unix_date_time_array(self,
                        datetimes)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `List of datetime` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetimes = [dt.datetime.utcfromtimestamp(1480809600), dt.datetime.utcfromtimestamp(1480809600), dt.datetime.utcfromtimestamp(1480809600)]

result = query_param_controller.unix_date_time_array(datetimes)
```


# Unix Date Time

```python
def unix_date_time(self,
                  datetime)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `datetime` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetime = dt.datetime.utcfromtimestamp(1480809600)

result = query_param_controller.unix_date_time(datetime)
```


# Rfc 1123 Date Time

```python
def rfc_1123_date_time(self,
                      datetime)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `datetime` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetime = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime

result = query_param_controller.rfc_1123_date_time(datetime)
```


# Rfc 1123 Date Time Array

```python
def rfc_1123_date_time_array(self,
                            datetimes)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `List of datetime` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetimes = [APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime, APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime, APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime]

result = query_param_controller.rfc_1123_date_time_array(datetimes)
```


# Rfc 3339 Date Time Array

```python
def rfc_3339_date_time_array(self,
                            datetimes)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `List of datetime` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetimes = [dateutil.parser.parse('2016-03-13T12:52:32.123Z'), dateutil.parser.parse('2016-03-13T12:52:32.123Z'), dateutil.parser.parse('2016-03-13T12:52:32.123Z')]

result = query_param_controller.rfc_3339_date_time_array(datetimes)
```


# Rfc 3339 Date Time

```python
def rfc_3339_date_time(self,
                      datetime)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `datetime` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')

result = query_param_controller.rfc_3339_date_time(datetime)
```


# No Params

```python
def no_params(self)
```

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
result = query_param_controller.no_params()
```


# String Param

```python
def string_param(self,
                string)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `string` | `string` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
string = 'string4'

result = query_param_controller.string_param(string)
```


# Url Param

```python
def url_param(self,
             url)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `string` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
url = 'url4'

result = query_param_controller.url_param(url)
```


# Number Array

```python
def number_array(self,
                integers)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `integers` | `List of int` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
integers = [45, 46, 47]

result = query_param_controller.number_array(integers)
```


# String Array

```python
def string_array(self,
                strings)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `strings` | `List of string` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
strings = ['strings5']

result = query_param_controller.string_array(strings)
```


# Simple Query

```python
def simple_query(self,
                boolean,
                number,
                string,
                _optional_query_parameters=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `boolean` | `bool` | Query, Required | - |
| `number` | `int` | Query, Required | - |
| `string` | `string` | Query, Required | - |
| `_optional_query_parameters` | `array` | Optional | Pass additional query parameters. |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
boolean = False
number = 158
string = 'string4'
_optional_query_parameters = {'key0' : 'additionalQueryParams2' } 

result = query_param_controller.simple_query(boolean, number, string, _optional_query_parameters)
```


# String Enum Array

```python
def string_enum_array(self,
                     days)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `days` | [`List of Days`](/doc/models/days.md) | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
days = [Days.SUNDAY, Days.MONDAY, Days.TUESDAY]

result = query_param_controller.string_enum_array(days)
```


# Multiple Params

```python
def multiple_params(self,
                   number,
                   precision,
                   string,
                   url)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `int` | Query, Required | - |
| `precision` | `float` | Query, Required | - |
| `string` | `string` | Query, Required | - |
| `url` | `string` | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
number = 158
precision = 112.04
string = 'string4'
url = 'url4'

result = query_param_controller.multiple_params(number, precision, string, url)
```


# Integer Enum Array

```python
def integer_enum_array(self,
                      suites)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `suites` | [`List of SuiteCode`](/doc/models/suite-code.md) | Query, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
suites = [SuiteCode.HEARTS, SuiteCode.SPADES, SuiteCode.CLUBS]

result = query_param_controller.integer_enum_array(suites)
```

