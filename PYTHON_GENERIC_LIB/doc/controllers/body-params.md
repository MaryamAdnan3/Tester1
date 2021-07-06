# Body Params

```python
body_params_controller = client.body_params
```

## Class Name

`BodyParamsController`

## Methods

* [Send Delete Plain Text](/doc/controllers/body-params.md#send-delete-plain-text)
* [Send Delete Body](/doc/controllers/body-params.md#send-delete-body)
* [Send Date Array](/doc/controllers/body-params.md#send-date-array)
* [Send Date](/doc/controllers/body-params.md#send-date)
* [Send Unix Date Time](/doc/controllers/body-params.md#send-unix-date-time)
* [Send Rfc 1123 Date Time](/doc/controllers/body-params.md#send-rfc-1123-date-time)
* [Send Rfc 3339 Date Time](/doc/controllers/body-params.md#send-rfc-3339-date-time)
* [Send Unix Date Time Array](/doc/controllers/body-params.md#send-unix-date-time-array)
* [Send Rfc 1123 Date Time Array](/doc/controllers/body-params.md#send-rfc-1123-date-time-array)
* [Send Rfc 3339 Date Time Array](/doc/controllers/body-params.md#send-rfc-3339-date-time-array)
* [Send String Array](/doc/controllers/body-params.md#send-string-array)
* [Update String](/doc/controllers/body-params.md#update-string)
* [Send Integer Array](/doc/controllers/body-params.md#send-integer-array)
* [Wrap Body in Object](/doc/controllers/body-params.md#wrap-body-in-object)
* [Additional Model Parameters](/doc/controllers/body-params.md#additional-model-parameters)
* [Validate Required Parameter](/doc/controllers/body-params.md#validate-required-parameter)
* [Additional Model Parameters 1](/doc/controllers/body-params.md#additional-model-parameters-1)
* [Send Model](/doc/controllers/body-params.md#send-model)
* [Send Model Array](/doc/controllers/body-params.md#send-model-array)
* [Send Dynamic](/doc/controllers/body-params.md#send-dynamic)
* [Send String](/doc/controllers/body-params.md#send-string)
* [Send String Enum Array](/doc/controllers/body-params.md#send-string-enum-array)
* [Send Integer Enum Array](/doc/controllers/body-params.md#send-integer-enum-array)
* [Update Model](/doc/controllers/body-params.md#update-model)
* [Send Delete Body With Model](/doc/controllers/body-params.md#send-delete-body-with-model)
* [Send Delete Body With Model Array](/doc/controllers/body-params.md#send-delete-body-with-model-array)
* [Update Model Array](/doc/controllers/body-params.md#update-model-array)
* [Update String 1](/doc/controllers/body-params.md#update-string-1)
* [Update String Array](/doc/controllers/body-params.md#update-string-array)
* [Send String With New Line](/doc/controllers/body-params.md#send-string-with-new-line)
* [Send String With R](/doc/controllers/body-params.md#send-string-with-r)
* [Send String in Body With R N](/doc/controllers/body-params.md#send-string-in-body-with-r-n)
* [Send Optional Unix Date Time in Body](/doc/controllers/body-params.md#send-optional-unix-date-time-in-body)
* [Send Optional Rfc 1123 in Body](/doc/controllers/body-params.md#send-optional-rfc-1123-in-body)
* [Send Datetime Optional in Endpoint](/doc/controllers/body-params.md#send-datetime-optional-in-endpoint)
* [Send Optional Unix Time Stamp in Model Body](/doc/controllers/body-params.md#send-optional-unix-time-stamp-in-model-body)
* [Send Optional Unix Time Stamp in Nested Model Body](/doc/controllers/body-params.md#send-optional-unix-time-stamp-in-nested-model-body)
* [Send Rfc 1123 Date Time in Nested Model](/doc/controllers/body-params.md#send-rfc-1123-date-time-in-nested-model)
* [Send Rfc 1123 Date Time in Model](/doc/controllers/body-params.md#send-rfc-1123-date-time-in-model)
* [Send Optional Datetime in Model](/doc/controllers/body-params.md#send-optional-datetime-in-model)
* [Send Rfc 339 Date Time in Nested Models](/doc/controllers/body-params.md#send-rfc-339-date-time-in-nested-models)
* [Uuid as Optional](/doc/controllers/body-params.md#uuid-as-optional)
* [Boolean as Optional](/doc/controllers/body-params.md#boolean-as-optional)
* [Date as Optional](/doc/controllers/body-params.md#date-as-optional)
* [Dynamic as Optional](/doc/controllers/body-params.md#dynamic-as-optional)
* [String as Optional](/doc/controllers/body-params.md#string-as-optional)
* [Precision as Optional](/doc/controllers/body-params.md#precision-as-optional)
* [Long as Optional](/doc/controllers/body-params.md#long-as-optional)
* [Send Number as Optional](/doc/controllers/body-params.md#send-number-as-optional)


# Send Delete Plain Text

```python
def send_delete_plain_text(self,
                          text_string)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `text_string` | `string` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
text_string = 'textString2'

result = body_params_controller.send_delete_plain_text(text_string)
```


# Send Delete Body

```python
def send_delete_body(self,
                    body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeleteBody`](/doc/models/delete-body.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = DeleteBody()
body.name = 'name6'
body.field = 'field0'

result = body_params_controller.send_delete_body(body)
```


# Send Date Array

```python
def send_date_array(self,
                   dates)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dates` | `List of date` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
dates = [dateutil.parser.parse('2016-03-13').date(), dateutil.parser.parse('2016-03-13').date()]

result = body_params_controller.send_date_array(dates)
```


# Send Date

```python
def send_date(self,
             date)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date` | `date` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date = dateutil.parser.parse('2016-03-13').date()

result = body_params_controller.send_date(date)
```


# Send Unix Date Time

```python
def send_unix_date_time(self,
                       datetime)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `datetime` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetime = dt.datetime.utcfromtimestamp(1480809600)

result = body_params_controller.send_unix_date_time(datetime)
```


# Send Rfc 1123 Date Time

```python
def send_rfc_1123_date_time(self,
                           datetime)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `datetime` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetime = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime

result = body_params_controller.send_rfc_1123_date_time(datetime)
```


# Send Rfc 3339 Date Time

```python
def send_rfc_3339_date_time(self,
                           datetime)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `datetime` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')

result = body_params_controller.send_rfc_3339_date_time(datetime)
```


# Send Unix Date Time Array

```python
def send_unix_date_time_array(self,
                             datetimes)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `List of datetime` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetimes = [dt.datetime.utcfromtimestamp(1480809600), dt.datetime.utcfromtimestamp(1480809600), dt.datetime.utcfromtimestamp(1480809600)]

result = body_params_controller.send_unix_date_time_array(datetimes)
```


# Send Rfc 1123 Date Time Array

```python
def send_rfc_1123_date_time_array(self,
                                 datetimes)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `List of datetime` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetimes = [APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime, APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime, APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime]

result = body_params_controller.send_rfc_1123_date_time_array(datetimes)
```


# Send Rfc 3339 Date Time Array

```python
def send_rfc_3339_date_time_array(self,
                                 datetimes)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `List of datetime` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
datetimes = [dateutil.parser.parse('2016-03-13T12:52:32.123Z'), dateutil.parser.parse('2016-03-13T12:52:32.123Z'), dateutil.parser.parse('2016-03-13T12:52:32.123Z')]

result = body_params_controller.send_rfc_3339_date_time_array(datetimes)
```


# Send String Array

sends a string body param

```python
def send_string_array(self,
                     sarray)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `sarray` | `List of string` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
sarray = ['sarray8', 'sarray9']

result = body_params_controller.send_string_array(sarray)
```


# Update String

```python
def update_string(self,
                 value)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `string` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
value = 'value2'

result = body_params_controller.update_string(value)
```


# Send Integer Array

```python
def send_integer_array(self,
                      integers)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `integers` | `List of int` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
integers = [45, 46, 47]

result = body_params_controller.send_integer_array(integers)
```


# Wrap Body in Object

```python
def wrap_body_in_object(self,
                       field,
                       name)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `field` | `string` | Body, Required | - |
| `name` | `string` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
field = 'field6'
name = 'name0'

result = body_params_controller.wrap_body_in_object(field, name)
```


# Additional Model Parameters

```python
def additional_model_parameters(self,
                               model)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`AdditionalModelParameters`](/doc/models/additional-model-parameters.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
model = AdditionalModelParameters()
model.name = 'name2'
model.field = 'field4'
model.address = 'address8'
model.job = Job()
model.job.company = 'company8'

result = body_params_controller.additional_model_parameters(model)
```


# Validate Required Parameter

```python
def validate_required_parameter(self,
                               model,
                               option=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Validate`](/doc/models/validate.md) | Body, Required | - |
| `option` | `string` | Query, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
model = Validate()
model.field = 'field4'
model.name = 'name2'

result = body_params_controller.validate_required_parameter(model)
```


# Additional Model Parameters 1

```python
def additional_model_parameters_1(self,
                                 model)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`AdditionalModelParameters`](/doc/models/additional-model-parameters.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
model = AdditionalModelParameters()
model.name = 'name2'
model.field = 'field4'
model.address = 'address8'
model.job = Job()
model.job.company = 'company8'

result = body_params_controller.additional_model_parameters_1(model)
```


# Send Model

```python
def send_model(self,
              model)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Employee`](/doc/models/employee.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
model = Employee()
model.department = 'department8'
model.dependents = []

model.dependents.append(Person())
model.dependents[0].address = 'address5'
model.dependents[0].age = 237
model.dependents[0].birthday = dateutil.parser.parse('2016-03-13').date()
model.dependents[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
model.dependents[0].name = 'name9'
model.dependents[0].uid = 'uid9'

model.hired_at = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime
model.joining_day = Days.MONDAY
model.salary = 240
model.working_days = [Days.THURSDAY, Days.WEDNESDAY_, Days.TUESDAY]
model.address = 'address8'
model.age = 186
model.birthday = dateutil.parser.parse('2016-03-13').date()
model.birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
model.name = 'name2'
model.uid = 'uid2'

result = body_params_controller.send_model(model)
```


# Send Model Array

```python
def send_model_array(self,
                    models)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `models` | [`List of Employee`](/doc/models/employee.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
models = []

models.append(Employee())
models[0].department = 'department6'
models[0].dependents = []

models[0].dependents.append(Person())
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].dependents[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents.append(Person())
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].dependents[1].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents.append(Person())
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].dependents[2].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime
models[0].joining_day = Days.MONDAY
models[0].salary = 84
models[0].working_days = [Days.SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models.append(Employee())
models[1].department = 'department7'
models[1].dependents = []

models[1].dependents.append(Person())
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = dateutil.parser.parse('2016-03-13').date()
models[1].dependents[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime
models[1].joining_day = Days.MONDAY
models[1].salary = 85
models[1].working_days = [Days.MONDAY, Days.TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = dateutil.parser.parse('2016-03-13').date()
models[1].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'


result = body_params_controller.send_model_array(models)
```


# Send Dynamic

```python
def send_dynamic(self,
                dynamic)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dynamic` | `object` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
dynamic = jsonpickle.decode('{"key1":"val1","key2":"val2"}')

result = body_params_controller.send_dynamic(dynamic)
```


# Send String

```python
def send_string(self,
               value)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `string` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
value = 'value2'

result = body_params_controller.send_string(value)
```


# Send String Enum Array

```python
def send_string_enum_array(self,
                          days)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `days` | [`List of Days`](/doc/models/days.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
days = [Days.SUNDAY, Days.MONDAY, Days.TUESDAY]

result = body_params_controller.send_string_enum_array(days)
```


# Send Integer Enum Array

```python
def send_integer_enum_array(self,
                           suites)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `suites` | [`List of SuiteCode`](/doc/models/suite-code.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
suites = [SuiteCode.HEARTS, SuiteCode.SPADES, SuiteCode.CLUBS]

result = body_params_controller.send_integer_enum_array(suites)
```


# Update Model

```python
def update_model(self,
                model)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Employee`](/doc/models/employee.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
model = Employee()
model.department = 'department8'
model.dependents = []

model.dependents.append(Person())
model.dependents[0].address = 'address5'
model.dependents[0].age = 237
model.dependents[0].birthday = dateutil.parser.parse('2016-03-13').date()
model.dependents[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
model.dependents[0].name = 'name9'
model.dependents[0].uid = 'uid9'

model.hired_at = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime
model.joining_day = Days.MONDAY
model.salary = 240
model.working_days = [Days.THURSDAY, Days.WEDNESDAY_, Days.TUESDAY]
model.address = 'address8'
model.age = 186
model.birthday = dateutil.parser.parse('2016-03-13').date()
model.birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
model.name = 'name2'
model.uid = 'uid2'

result = body_params_controller.update_model(model)
```


# Send Delete Body With Model

```python
def send_delete_body_with_model(self,
                               model)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Employee`](/doc/models/employee.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
model = Employee()
model.department = 'department8'
model.dependents = []

model.dependents.append(Person())
model.dependents[0].address = 'address5'
model.dependents[0].age = 237
model.dependents[0].birthday = dateutil.parser.parse('2016-03-13').date()
model.dependents[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
model.dependents[0].name = 'name9'
model.dependents[0].uid = 'uid9'

model.hired_at = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime
model.joining_day = Days.MONDAY
model.salary = 240
model.working_days = [Days.THURSDAY, Days.WEDNESDAY_, Days.TUESDAY]
model.address = 'address8'
model.age = 186
model.birthday = dateutil.parser.parse('2016-03-13').date()
model.birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
model.name = 'name2'
model.uid = 'uid2'

result = body_params_controller.send_delete_body_with_model(model)
```


# Send Delete Body With Model Array

```python
def send_delete_body_with_model_array(self,
                                     models)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `models` | [`List of Employee`](/doc/models/employee.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
models = []

models.append(Employee())
models[0].department = 'department6'
models[0].dependents = []

models[0].dependents.append(Person())
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].dependents[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents.append(Person())
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].dependents[1].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents.append(Person())
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].dependents[2].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime
models[0].joining_day = Days.MONDAY
models[0].salary = 84
models[0].working_days = [Days.SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models.append(Employee())
models[1].department = 'department7'
models[1].dependents = []

models[1].dependents.append(Person())
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = dateutil.parser.parse('2016-03-13').date()
models[1].dependents[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime
models[1].joining_day = Days.MONDAY
models[1].salary = 85
models[1].working_days = [Days.MONDAY, Days.TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = dateutil.parser.parse('2016-03-13').date()
models[1].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'


result = body_params_controller.send_delete_body_with_model_array(models)
```


# Update Model Array

```python
def update_model_array(self,
                      models)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `models` | [`List of Employee`](/doc/models/employee.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
models = []

models.append(Employee())
models[0].department = 'department6'
models[0].dependents = []

models[0].dependents.append(Person())
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].dependents[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents.append(Person())
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].dependents[1].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents.append(Person())
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].dependents[2].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime
models[0].joining_day = Days.MONDAY
models[0].salary = 84
models[0].working_days = [Days.SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = dateutil.parser.parse('2016-03-13').date()
models[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models.append(Employee())
models[1].department = 'department7'
models[1].dependents = []

models[1].dependents.append(Person())
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = dateutil.parser.parse('2016-03-13').date()
models[1].dependents[0].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = APIHelper.HttpDateTime.from_value('Mon, 15 Jun 2009 20:45:30 GMT').datetime
models[1].joining_day = Days.MONDAY
models[1].salary = 85
models[1].working_days = [Days.MONDAY, Days.TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = dateutil.parser.parse('2016-03-13').date()
models[1].birthtime = dateutil.parser.parse('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'


result = body_params_controller.update_model_array(models)
```


# Update String 1

```python
def update_string_1(self,
                   value)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `string` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
value = 'value2'

result = body_params_controller.update_string_1(value)
```


# Update String Array

```python
def update_string_array(self,
                       strings)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `strings` | `List of string` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
strings = ['strings5']

result = body_params_controller.update_string_array(strings)
```


# Send String With New Line

```python
def send_string_with_new_line(self,
                             body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TestNstringEncoding`](/doc/models/test-nstring-encoding.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = TestNstringEncoding()
body.field = 'field0'
body.name = 'name6'

result = body_params_controller.send_string_with_new_line(body)
```


# Send String With R

```python
def send_string_with_r(self,
                      body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TestRstringEncoding`](/doc/models/test-rstring-encoding.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = TestRstringEncoding()
body.field = 'field0'
body.name = 'name6'

result = body_params_controller.send_string_with_r(body)
```


# Send String in Body With R N

```python
def send_string_in_body_with_r_n(self,
                                body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TestRNstringEncoding`](/doc/models/test-r-nstring-encoding.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = TestRNstringEncoding()
body.field = 'field0'
body.name = 'name6'

result = body_params_controller.send_string_in_body_with_r_n(body)
```


# Send Optional Unix Date Time in Body

```python
def send_optional_unix_date_time_in_body(self,
                                        date_time=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `datetime` | Body, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date_time = dt.datetime.utcfromtimestamp(1484719381)

result = body_params_controller.send_optional_unix_date_time_in_body(date_time)
```


# Send Optional Rfc 1123 in Body

```python
def send_optional_rfc_1123_in_body(self,
                                  body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `datetime` | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = APIHelper.HttpDateTime.from_value('Sun, 06 Nov 1994 08:49:37 GMT').datetime

result = body_params_controller.send_optional_rfc_1123_in_body(body)
```


# Send Datetime Optional in Endpoint

```python
def send_datetime_optional_in_endpoint(self,
                                      body=None)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `datetime` | Body, Optional | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
result = body_params_controller.send_datetime_optional_in_endpoint()
```


# Send Optional Unix Time Stamp in Model Body

```python
def send_optional_unix_time_stamp_in_model_body(self,
                                               date_time)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`UnixDateTime`](/doc/models/unix-date-time.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date_time = UnixDateTime()
date_time.date_time = dt.datetime.utcfromtimestamp(1484719381)

result = body_params_controller.send_optional_unix_time_stamp_in_model_body(date_time)
```


# Send Optional Unix Time Stamp in Nested Model Body

```python
def send_optional_unix_time_stamp_in_nested_model_body(self,
                                                      date_time)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`SendUnixDateTime`](/doc/models/send-unix-date-time.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date_time = SendUnixDateTime()
date_time.date_time = UnixDateTime()
date_time.date_time.date_time = dt.datetime.utcfromtimestamp(1484719381)

result = body_params_controller.send_optional_unix_time_stamp_in_nested_model_body(date_time)
```


# Send Rfc 1123 Date Time in Nested Model

```python
def send_rfc_1123_date_time_in_nested_model(self,
                                           body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`SendRfc1123DateTime`](/doc/models/send-rfc-1123-date-time.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = SendRfc1123DateTime()
body.date_time = ModelWithOptionalRfc1123DateTime()
body.date_time.date_time = APIHelper.HttpDateTime.from_value('Sun, 06 Nov 1994 08:49:37 GMT').datetime

result = body_params_controller.send_rfc_1123_date_time_in_nested_model(body)
```


# Send Rfc 1123 Date Time in Model

```python
def send_rfc_1123_date_time_in_model(self,
                                    date_time)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`ModelWithOptionalRfc1123DateTime`](/doc/models/model-with-optional-rfc-1123-date-time.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
date_time = ModelWithOptionalRfc1123DateTime()
date_time.date_time = APIHelper.HttpDateTime.from_value('Sun, 06 Nov 1994 08:49:37 GMT').datetime

result = body_params_controller.send_rfc_1123_date_time_in_model(date_time)
```


# Send Optional Datetime in Model

```python
def send_optional_datetime_in_model(self,
                                   body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ModelWithOptionalRfc3339DateTime`](/doc/models/model-with-optional-rfc-3339-date-time.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = ModelWithOptionalRfc3339DateTime()
body.date_time = dateutil.parser.parse('1994-02-13T14:01:54.9571247Z')

result = body_params_controller.send_optional_datetime_in_model(body)
```


# Send Rfc 339 Date Time in Nested Models

```python
def send_rfc_339_date_time_in_nested_models(self,
                                           body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`SendRfc339DateTime`](/doc/models/send-rfc-339-date-time.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = SendRfc339DateTime()
body.date_time = ModelWithOptionalRfc3339DateTime()
body.date_time.date_time = dateutil.parser.parse('1994-02-13T14:01:54.9571247Z')

result = body_params_controller.send_rfc_339_date_time_in_nested_models(body)
```


# Uuid as Optional

```python
def uuid_as_optional(self,
                    body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`UuidAsOptional`](/doc/models/uuid-as-optional.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = UuidAsOptional()
body.uuid = '123e4567-e89b-12d3-a456-426655440000'

result = body_params_controller.uuid_as_optional(body)
```


# Boolean as Optional

```python
def boolean_as_optional(self,
                       body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`BooleanAsOptional`](/doc/models/boolean-as-optional.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = BooleanAsOptional()
body.boolean = True

result = body_params_controller.boolean_as_optional(body)
```


# Date as Optional

```python
def date_as_optional(self,
                    body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DateAsOptional`](/doc/models/date-as-optional.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = DateAsOptional()
body.date = dateutil.parser.parse('1994-02-13').date()

result = body_params_controller.date_as_optional(body)
```


# Dynamic as Optional

```python
def dynamic_as_optional(self,
                       body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DynamicAsOptional`](/doc/models/dynamic-as-optional.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = DynamicAsOptional()
body.dynamic = jsonpickle.decode('{"dynamic":"test"}')

result = body_params_controller.dynamic_as_optional(body)
```


# String as Optional

```python
def string_as_optional(self,
                      body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`StringAsOptional`](/doc/models/string-as-optional.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = StringAsOptional()
body.string = 'test'

result = body_params_controller.string_as_optional(body)
```


# Precision as Optional

```python
def precision_as_optional(self,
                         body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`PrecisionAsOptional`](/doc/models/precision-as-optional.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = PrecisionAsOptional()
body.precision = 1.23

result = body_params_controller.precision_as_optional(body)
```


# Long as Optional

```python
def long_as_optional(self,
                    body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`LongAsOptional`](/doc/models/long-as-optional.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = LongAsOptional()
body.long = 123123

result = body_params_controller.long_as_optional(body)
```


# Send Number as Optional

```python
def send_number_as_optional(self,
                           body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`NumberAsOptional`](/doc/models/number-as-optional.md) | Body, Required | - |

## Response Type

[`ServerResponse`](/doc/models/server-response.md)

## Example Usage

```python
body = NumberAsOptional()
body.number = 1

result = body_params_controller.send_number_as_optional(body)
```

