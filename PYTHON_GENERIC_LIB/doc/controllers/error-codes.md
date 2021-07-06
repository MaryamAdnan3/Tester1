# Error Codes

```python
error_codes_controller = client.error_codes
```

## Class Name

`ErrorCodesController`

## Methods

* [Catch 412 Global Error](/doc/controllers/error-codes.md#catch-412-global-error)
* [Get 501](/doc/controllers/error-codes.md#get-501)
* [Get 400](/doc/controllers/error-codes.md#get-400)
* [Get 500](/doc/controllers/error-codes.md#get-500)
* [Get 401](/doc/controllers/error-codes.md#get-401)
* [Receive Exception With Unixtimestamp Exception](/doc/controllers/error-codes.md#receive-exception-with-unixtimestamp-exception)
* [Receive Exception With Rfc 1123 Datetime](/doc/controllers/error-codes.md#receive-exception-with-rfc-1123-datetime)
* [Receive Exception With Rfc 3339 Datetime](/doc/controllers/error-codes.md#receive-exception-with-rfc-3339-datetime)
* [Receive Endpoint Level Exception](/doc/controllers/error-codes.md#receive-endpoint-level-exception)
* [Receive Global Level Exception](/doc/controllers/error-codes.md#receive-global-level-exception)
* [Date in Exception](/doc/controllers/error-codes.md#date-in-exception)
* [UUID in Exception](/doc/controllers/error-codes.md#uuid-in-exception)
* [Dynamic in Exception](/doc/controllers/error-codes.md#dynamic-in-exception)
* [Precision in Exception](/doc/controllers/error-codes.md#precision-in-exception)
* [Boolean in Exception](/doc/controllers/error-codes.md#boolean-in-exception)
* [Long in Exception](/doc/controllers/error-codes.md#long-in-exception)
* [Number in Exception](/doc/controllers/error-codes.md#number-in-exception)
* [Get Exception With String](/doc/controllers/error-codes.md#get-exception-with-string)


# Catch 412 Global Error

```python
def catch_412_global_error(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.catch_412_global_error()
```


# Get 501

```python
def get_501(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.get_501()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 501 | error 501 | [`NestedModelException`](/doc/models/nested-model-exception.md) |


# Get 400

```python
def get_400(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.get_400()
```


# Get 500

```python
def get_500(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.get_500()
```


# Get 401

```python
def get_401(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.get_401()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | 401 Local | [`LocalTestException`](/doc/models/local-test-exception.md) |
| 421 | Default | [`LocalTestException`](/doc/models/local-test-exception.md) |
| 431 | Default | [`LocalTestException`](/doc/models/local-test-exception.md) |
| 432 | Default | [`LocalTestException`](/doc/models/local-test-exception.md) |
| 441 | Default | [`LocalTestException`](/doc/models/local-test-exception.md) |
| Default | Invalid response. | [`LocalTestException`](/doc/models/local-test-exception.md) |


# Receive Exception With Unixtimestamp Exception

```python
def receive_exception_with_unixtimestamp_exception(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.receive_exception_with_unixtimestamp_exception()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | unixtimestamp exception | [`UnixTimeStampException`](/doc/models/unix-time-stamp-exception.md) |


# Receive Exception With Rfc 1123 Datetime

```python
def receive_exception_with_rfc_1123_datetime(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.receive_exception_with_rfc_1123_datetime()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | Rfc1123 Exception | [`Rfc1123Exception`](/doc/models/rfc-1123-exception.md) |


# Receive Exception With Rfc 3339 Datetime

```python
def receive_exception_with_rfc_3339_datetime(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.receive_exception_with_rfc_3339_datetime()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | DateTime Exception | [`ExceptionWithRfc3339DateTimeException`](/doc/models/exception-with-rfc-3339-date-time-exception.md) |


# Receive Endpoint Level Exception

```python
def receive_endpoint_level_exception(self)
```

## Response Type

[`Complex5`](/doc/models/complex-5.md)

## Example Usage

```python
result = error_codes_controller.receive_endpoint_level_exception()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 451 | caught endpoint exception | [`CustomErrorResponseException`](/doc/models/custom-error-response-exception.md) |


# Receive Global Level Exception

```python
def receive_global_level_exception(self)
```

## Response Type

[`Complex5`](/doc/models/complex-5.md)

## Example Usage

```python
result = error_codes_controller.receive_global_level_exception()
```


# Date in Exception

```python
def date_in_exception(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.date_in_exception()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | date in exception | [`ExceptionWithDateException`](/doc/models/exception-with-date-exception.md) |


# UUID in Exception

```python
def uuid_in_exception(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.uuid_in_exception()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | uuid in exception | [`ExceptionWithUUIDException`](/doc/models/exception-with-uuid-exception.md) |


# Dynamic in Exception

```python
def dynamic_in_exception(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.dynamic_in_exception()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | dynamic in Exception | [`ExceptionWithDynamicException`](/doc/models/exception-with-dynamic-exception.md) |


# Precision in Exception

```python
def precision_in_exception(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.precision_in_exception()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | precision in Exception | [`ExceptionWithPrecisionException`](/doc/models/exception-with-precision-exception.md) |


# Boolean in Exception

```python
def boolean_in_exception(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.boolean_in_exception()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | Boolean in Exception | [`ExceptionWithBooleanException`](/doc/models/exception-with-boolean-exception.md) |


# Long in Exception

```python
def long_in_exception(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.long_in_exception()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | long in exception | [`ExceptionWithLongException`](/doc/models/exception-with-long-exception.md) |


# Number in Exception

```python
def number_in_exception(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.number_in_exception()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | number in exception | [`ExceptionWithNumberException`](/doc/models/exception-with-number-exception.md) |


# Get Exception With String

```python
def get_exception_with_string(self)
```

## Response Type

`mixed`

## Example Usage

```python
result = error_codes_controller.get_exception_with_string()
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | exception with string | [`ExceptionWithStringException`](/doc/models/exception-with-string-exception.md) |

