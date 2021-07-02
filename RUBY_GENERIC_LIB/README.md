# Getting Started with Tester

## Getting Started

### Introduction

Testing various
api
features

### Building

The generated code depends on a few Ruby gems. The references to these gems are added in the gemspec file. The easiest way to resolve the dependencies, build the gem and install it is through Rake:

1. Install Rake if not already installed: `gem install rake`
2. Install Bundler if not already installed: `gem install bundler`
3. From terminal/cmd navigate to the root directory of the SDK.
4. Invoke: `rake install`

Alternatively, you can build and install the gem manually:

1. From terminal/cmd navigate to the root directory of the SDK.
2. Run the build command: `gem build tester.gemspec`
3. Run the install command: `gem install tester-1.1.0.gem`

![Installing Gem](https://apidocs.io/illustration/ruby?workspaceFolder=Tester&gemVer=1.1.0&gemName=tester&step=buildSDK)

### Installation

The following section explains how to use the tester ruby gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

#### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting `File -> Close Project`. Next, click on `Create New Project` to create a new project from scratch.

![Create a new project in RubyMine - Step 1](https://apidocs.io/illustration/ruby?workspaceFolder=Tester&step=createNewProject0)

Next, provide `TestApp` as the project name, choose `Rails Application` as the project type, and click `OK`.

![Create a new Rails Application in RubyMine - Step 2](https://apidocs.io/illustration/ruby?workspaceFolder=Tester&step=createNewProject1)

In the next dialog make sure that the correct Ruby SDK is being used (minimum 2.0.0) and click `OK`.

![Create a new Rails Application in RubyMine - Step 3](https://apidocs.io/illustration/ruby?workspaceFolder=Tester&step=createNewProject2)

#### 2. Add reference of the gem

In order to use the Tester gem in the new project we must add a gem reference. Locate the `Gemfile` in the Project Explorer window under the `TestApp` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: `gem 'tester', '1.1.0'`

![Add new reference to the Gemfile](https://apidocs.io/illustration/ruby?workspaceFolder=Tester&gemVer=1.1.0&gemName=tester&step=addReference)

#### 3. Adding a new Rails Controller

Once the `TestApp` project is created, a folder named `controllers` will be visible in the *Project Explorer* under the following path: `TestApp > app > controllers`. Right click on this folder and select `New -> Run Rails Generator...`.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?workspaceFolder=Tester&gemVer=1.1.0&gemName=tester&step=addCode0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the `controller` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=Tester&step=addCode1)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide `Hello` and include an action named `Index` and click `OK`.

![Add a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=Tester&gemVer=1.1.0&gemName=tester&step=addCode2)

A new controller class named `HelloController` will be created in a file named `hello_controller.rb` containing a method named `Index`. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?workspaceFolder=Tester&gemName=tester&step=addCode3)

### Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

#### Fields

| Name | Description |
|  --- | --- |
| production | - |
| testing | **Default** |

### Initialize the API Client

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `port` | `String` | *Default*: `'80'` |
| `suites` | `SuiteCode` | *Default*: `SuiteCode::HEARTS` |
| `environment` | Environment | The API environment. <br> **Default: `Environment.TESTING`** |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 3** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |

The API client can be initialized as follows:

```ruby
client = Tester::Client.new(
  environment: Environment::TESTING,
  port: '80',
  suites: SuiteCode::HEARTS,
)
```

### Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

### API Errors

Here is the list of errors that the API might throw.

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | 400 Global | `APIException` |
| 402 | 402 Global | `APIException` |
| 403 | 403 Global | `APIException` |
| 404 | 404 Global | `APIException` |
| 412 | Precondition Failed | [`NestedModelException`](#nested-model-exception) |
| 450 | caught global exception | [`CustomErrorResponseException`](#custom-error-response) |
| 452 | global exception with string | [`ExceptionWithStringException`](#exception-with-string) |
| 453 | boolean in global exception | [`ExceptionWithBooleanException`](#exception-with-boolean) |
| 454 | dynamic in global exception | [`ExceptionWithDynamicException`](#exception-with-dynamic) |
| 455 | uuid in global exception | [`ExceptionWithUUIDException`](#exception-with-uuid) |
| 456 | date in global exception | [`ExceptionWithDateException`](#exception-with-date) |
| 457 | number in global  exception | [`ExceptionWithNumberException`](#exception-with-number) |
| 458 | long in global exception | [`ExceptionWithLongException`](#exception-with-long) |
| 459 | precision in global  exception | [`ExceptionWithPrecisionException`](#exception-with-precision) |
| 460 | rfc3339 in global exception | [`ExceptionWithRfc3339DateTimeException`](#exception-with-rfc-3339-date-time) |
| 461 | unix time stamp in global exception | [`UnixTimeStampException`](#unix-time-stamp-exception) |
| 462 | rfc1123 in global exception | [`Rfc1123Exception`](#rfc-1123-exception) |
| 463 | boolean in model as global exception | [`SendBooleanInModelAsException`](#send-boolean-in-model-as-exception) |
| 464 | rfc3339 in model as global exception | [`SendRfc3339InModelAsException`](#send-rfc-3339-in-model-as-exception) |
| 465 | rfc1123 in model as global exception | [`SendRfc1123InModelAsException`](#send-rfc-1123-in-model-as-exception) |
| 466 | unix time stamp in model as global exception | [`SendUnixTimeStampInModelAsException`](#send-unix-time-stamp-in-model-as-exception) |
| 467 | send date in model as global exception | [`SendDateInModelAsException`](#send-date-in-model-as-exception) |
| 468 | send dynamic in model as global exception | [`SendDynamicInModelAsException`](#send-dynamic-in-model-as-exception) |
| 469 | send string in model as global exception | [`SendStringInModelAsException`](#send-string-in-model-as-exception) |
| 470 | send long in model as global exception | [`SendLongInModelAsException`](#send-long-in-model-as-exception) |
| 471 | send number in model as global exception | [`SendNumberInModelAsException`](#send-number-in-model-as-exception) |
| 472 | send precision in model as global exception | [`SendPrecisionInModelAsException`](#send-precision-in-model-as-exception) |
| 473 | send uuid in model as global exception | [`SendUuidInModelAsException`](#send-uuid-in-model-as-exception) |
| 500 | 500 Global | [`GlobalTestException`](#global-test-exception) |
| Default | Invalid response. | [`GlobalTestException`](#global-test-exception) |

## Client Class Documentation

### Tester Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

### Controllers

| Name | Description |
|  --- | --- |
| response_types | Gets ResponseTypesController |
| form_params | Gets FormParamsController |
| body_params | Gets BodyParamsController |
| error_codes | Gets ErrorCodesController |
| query_param | Gets QueryParamController |
| echo | Gets EchoController |
| header | Gets HeaderController |
| template_params | Gets TemplateParamsController |
| query_params | Gets QueryParamsController |

## API Reference

### List of APIs

* [Response Types](#response-types)
* [Form Params](#form-params)
* [Body Params](#body-params)
* [Error Codes](#error-codes)
* [Query Param](#query-param)
* [Echo](#echo)
* [Header](#header)
* [Template Params](#template-params)
* [Query Params](#query-params)

### Response Types

#### Overview

##### Get instance

An instance of the `ResponseTypesController` class can be accessed from the API Client.

```
response_types_controller = client.response_types
```

#### Get Date Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_date_array
```

##### Response Type

`Array<Date>`

##### Example Usage

```ruby
result = response_types_controller.get_date_array()
```

#### Get Date

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_date
```

##### Response Type

`Date`

##### Example Usage

```ruby
result = response_types_controller.get_date()
```

#### Return Company Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def return_company_model
```

##### Response Type

[`Company`](#company)

##### Example Usage

```ruby
result = response_types_controller.return_company_model()
```

##### Example Response *(as JSON)*

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601"
}
```

#### Return Boss Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def return_boss_model
```

##### Response Type

[`BossCompany`](#boss-company)

##### Example Usage

```ruby
result = response_types_controller.return_boss_model()
```

##### Example Response *(as JSON)*

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601",
  "first name": "Adeel",
  "last name": "Ali",
  "address_boss": "nust"
}
```

#### Return Employee Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def return_employee_model
```

##### Response Type

[`EmployeeComp`](#employee-comp)

##### Example Usage

```ruby
result = response_types_controller.return_employee_model()
```

##### Example Response *(as JSON)*

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601",
  "first name": "Nauman",
  "last name": "Ali",
  "id": "123456"
}
```

#### Return Developer Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def return_developer_model
```

##### Response Type

[`Developer`](#developer)

##### Example Usage

```ruby
result = response_types_controller.return_developer_model()
```

##### Example Response *(as JSON)*

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601",
  "first name": "Nauman",
  "last name": "Ali",
  "id": "123456",
  "team": "CORE",
  "designation": "Manager",
  "role": "Team Lead"
}
```

#### Return Tester Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def return_tester_model
```

##### Response Type

[`SoftwareTester`](#software-tester)

##### Example Usage

```ruby
result = response_types_controller.return_tester_model()
```

##### Example Response *(as JSON)*

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601",
  "first name": "Muhammad",
  "last name": "Farhan",
  "id": "123456",
  "team": "Testing",
  "designation": "Tester",
  "role": "Testing"
}
```

#### Return Complex 1 Object

:information_source: **Note** This endpoint does not require authentication.

```ruby
def return_complex1_object
```

##### Response Type

[`Complex1`](#complex-1)

##### Example Usage

```ruby
result = response_types_controller.return_complex1_object()
```

##### Example Response *(as JSON)*

```json
{
  "medications": [
    {
      "aceInhibitors": [
        {
          "name": "lisinopril",
          "strength": "10 mg Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ],
      "antianginal": [
        {
          "name": "nitroglycerin",
          "strength": "0.4 mg Sublingual Tab",
          "dose": "1 tab",
          "route": "SL",
          "sig": "q15min PRN",
          "pillCount": "#30",
          "refills": "Refill 1"
        }
      ],
      "anticoagulants": [
        {
          "name": "warfarin sodium",
          "strength": "3 mg Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ],
      "betaBlocker": [
        {
          "name": "metoprolol tartrate",
          "strength": "25 mg Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ],
      "diuretic": [
        {
          "name": "furosemide",
          "strength": "40 mg Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ],
      "mineral": [
        {
          "name": "potassium chloride ER",
          "strength": "10 mEq Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ]
    }
  ],
  "labs": [
    {
      "name": "Arterial Blood Gas",
      "time": "Today",
      "location": "Main Hospital Lab"
    },
    {
      "name": "BMP",
      "time": "Today",
      "location": "Primary Care Clinic"
    },
    {
      "name": "BNP",
      "time": "3 Weeks",
      "location": "Primary Care Clinic"
    },
    {
      "name": "BUN",
      "time": "1 Year",
      "location": "Primary Care Clinic"
    },
    {
      "name": "Cardiac Enzymes",
      "time": "Today",
      "location": "Primary Care Clinic"
    },
    {
      "name": "CBC",
      "time": "1 Year",
      "location": "Primary Care Clinic"
    },
    {
      "name": "Creatinine",
      "time": "1 Year",
      "location": "Main Hospital Lab"
    },
    {
      "name": "Electrolyte Panel",
      "time": "1 Year",
      "location": "Primary Care Clinic"
    },
    {
      "name": "Glucose",
      "time": "1 Year",
      "location": "Main Hospital Lab"
    },
    {
      "name": "PT/INR",
      "time": "3 Weeks",
      "location": "Primary Care Clinic"
    },
    {
      "name": "PTT",
      "time": "3 Weeks",
      "location": "Coumadin Clinic"
    },
    {
      "name": "TSH",
      "time": "1 Year",
      "location": "Primary Care Clinic"
    }
  ],
  "imaging": [
    {
      "name": "Chest X-Ray",
      "time": "Today",
      "location": "Main Hospital Radiology"
    },
    {
      "name": "Chest X-Ray",
      "time": "Today",
      "location": "Main Hospital Radiology"
    },
    {
      "name": "Chest X-Ray",
      "time": "Today",
      "location": "Main Hospital Radiology"
    }
  ]
}
```

#### Return Response With Enums

:information_source: **Note** This endpoint does not require authentication.

```ruby
def return_response_with_enums
```

##### Response Type

[`ResponseWithEnum`](#response-with-enum)

##### Example Usage

```ruby
result = response_types_controller.return_response_with_enums()
```

##### Example Response *(as JSON)*

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

#### Return Complex 2 Object

:information_source: **Note** This endpoint does not require authentication.

```ruby
def return_complex2_object
```

##### Response Type

[`Complex2`](#complex-2)

##### Example Usage

```ruby
result = response_types_controller.return_complex2_object()
```

##### Example Response *(as JSON)*

```json
{
  "glossary": {
    "title": "example glossary",
    "GlossDiv": {
      "title": "S",
      "GlossList": {
        "GlossEntry": {
          "ID": "SGML",
          "SortAs": "SGML",
          "GlossTerm": "Standard Generalized Markup Language",
          "Acronym": "SGML",
          "Abbrev": "ISO 8879:1986",
          "GlossDef": {
            "para": "A meta-markup language, used to create markup languages such as DocBook.",
            "GlossSeeAlso": [
              "GML",
              "XML"
            ]
          },
          "GlossSee": "markup"
        }
      }
    }
  }
}
```

#### Return Complex 3 Object

:information_source: **Note** This endpoint does not require authentication.

```ruby
def return_complex3_object
```

##### Response Type

[`Complex3`](#complex-3)

##### Example Usage

```ruby
result = response_types_controller.return_complex3_object()
```

##### Example Response *(as JSON)*

```json
{
  "documentId": "099cceda-38a8-4b01-87b9-a8f2007675d6",
  "signers": [
    {
      "id": "1bef97d1-0704-4eb2-a490-a8f2007675db",
      "url": "https://sign-test.idfy.io/start?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzM4NCJ9.eyJrdmVyc2lvbiI6IjdmNzhjNzNkMmQ1MjQzZWRiYjdiNDI0MmI2MDE1MWU4IiwiZG9jaWQiOiIwOTljY2VkYS0zOGE4LTRiMDEtODdiOS1hOGYyMDA3Njc1ZDYiLCJhaWQiOiJjMGNlMTQ2OC1hYzk0LTRiMzQtODc2ZS1hODg1MDBjMmI5YTEiLCJsZyI6ImVuIiwiZXJyIjpudWxsLCJpZnIiOmZhbHNlLCJ3Ym1zZyI6ZmFsc2UsInNmaWQiOiIxYmVmOTdkMS0wNzA0LTRlYjItYTQ5MC1hOGYyMDA3Njc1ZGIiLCJ1cmxleHAiOm51bGwsImF0aCI6bnVsbCwiZHQiOiJUZXN0IGRvY3VtZW50IiwidmYiOmZhbHNlLCJhbiI6IklkZnkgU0RLIGRlbW8iLCJ0aCI6IlBpbmsiLCJzcCI6IkN1YmVzIiwiZG9tIjpudWxsLCJyZGlyIjpmYWxzZSwidXQiOiJ3ZWIiLCJ1dHYiOm51bGwsInNtIjoidGVzdEB0ZXN0LmNvbSJ9.Dyy2RSeR6dmU8qxOEi-2gEX3Gg7wry6JhkZIWOuADDdu5jJWidQLcxfJn_qAHNpb",
      "links": [],
      "externalSignerId": "uoiahsd321982983jhrmnec2wsadm32",
      "redirectSettings": {
        "redirectMode": "donot_redirect"
      },
      "signatureType": {
        "mechanism": "pkisignature",
        "onEacceptUseHandWrittenSignature": false
      },
      "ui": {
        "dialogs": {
          "before": {
            "useCheckBox": false,
            "title": "Info",
            "message": "Please read the contract on the next pages carefully. Pay some extra attention to paragraph 5."
          }
        },
        "language": "EN",
        "styling": {
          "colorTheme": "Pink",
          "spinner": "Cubes"
        }
      },
      "tags": [],
      "order": 0,
      "required": false
    }
  ],
  "status": {
    "documentStatus": "unsigned",
    "completedPackages": [],
    "attachmentPackages": {}
  },
  "title": "Test document",
  "description": "This is an important document",
  "externalId": "ae7b9ca7-3839-4e0d-a070-9f14bffbbf55",
  "dataToSign": {
    "fileName": "sample.txt",
    "convertToPDF": false
  },
  "contactDetails": {
    "email": "test@test.com",
    "url": "https://idfy.io"
  },
  "advanced": {
    "tags": [
      "develop",
      "fun_with_documents"
    ],
    "attachments": 0,
    "requiredSignatures": 0,
    "getSocialSecurityNumber": false,
    "timeToLive": {
      "deadline": "2018-06-29T14:57:25Z",
      "deleteAfterHours": 1
    }
  }
}
```

#### Get Long

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_long
```

##### Server

`Server::DEFAULT`

##### Response Type

`Long`

##### Example Usage

```ruby
result = response_types_controller.get_long()
```

#### Get Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_model
```

##### Response Type

[`Person`](#person)

##### Example Usage

```ruby
result = response_types_controller.get_model()
```

#### Get String Enum Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_string_enum_array
```

##### Response Type

[`Array<Days>`](#days)

##### Example Usage

```ruby
result = response_types_controller.get_string_enum_array()
```

#### Get String Enum

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_string_enum
```

##### Response Type

[`Days`](#days)

##### Example Usage

```ruby
result = response_types_controller.get_string_enum()
```

#### Get Model Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_model_array
```

##### Response Type

[`Array<Person>`](#person)

##### Example Usage

```ruby
result = response_types_controller.get_model_array()
```

#### Get Int Enum

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_int_enum
```

##### Response Type

[`SuiteCode`](#suite-code)

##### Example Usage

```ruby
result = response_types_controller.get_int_enum()
```

#### Get Int Enum Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_int_enum_array
```

##### Response Type

[`Array<SuiteCode>`](#suite-code)

##### Example Usage

```ruby
result = response_types_controller.get_int_enum_array()
```

#### Get Precision

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_precision
```

##### Response Type

`Float`

##### Example Usage

```ruby
result = response_types_controller.get_precision()
```

#### Get Binary

gets a binary object

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_binary
```

##### Response Type

`Binary`

##### Example Usage

```ruby
result = response_types_controller.get_binary()
```

#### Get Integer

Gets a integer response

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_integer
```

##### Response Type

`Integer`

##### Example Usage

```ruby
result = response_types_controller.get_integer()
```

#### Get Integer Array

Get an array of integers.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_integer_array
```

##### Response Type

`Array<Integer>`

##### Example Usage

```ruby
result = response_types_controller.get_integer_array()
```

#### Get Dynamic

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_dynamic
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = response_types_controller.get_dynamic()
```

#### Get Dynamic Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_dynamic_array
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = response_types_controller.get_dynamic_array()
```

#### Get 3339 Datetime

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_3339_datetime
```

##### Response Type

`DateTime`

##### Example Usage

```ruby
result = response_types_controller.get_3339_datetime()
```

#### Get 3339 Datetime Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_3339_datetime_array
```

##### Response Type

`Array<DateTime>`

##### Example Usage

```ruby
result = response_types_controller.get_3339_datetime_array()
```

#### Get Boolean

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_boolean
```

##### Response Type

`Boolean`

##### Example Usage

```ruby
result = response_types_controller.get_boolean()
```

#### Get Boolean Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_boolean_array
```

##### Response Type

`Array<Boolean>`

##### Example Usage

```ruby
result = response_types_controller.get_boolean_array()
```

#### Get Headers

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_headers
```

##### Response Type

`void`

##### Example Usage

```ruby
result = response_types_controller.get_headers()
```

#### Get 1123 Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_1123_date_time
```

##### Response Type

`DateTime`

##### Example Usage

```ruby
result = response_types_controller.get_1123_date_time()
```

#### Get Unix Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_unix_date_time
```

##### Response Type

`DateTime`

##### Example Usage

```ruby
result = response_types_controller.get_unix_date_time()
```

#### Get 1123 Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_1123_date_time_array
```

##### Response Type

`Array<DateTime>`

##### Example Usage

```ruby
result = response_types_controller.get_1123_date_time_array()
```

#### Get Unix Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_unix_date_time_array
```

##### Response Type

`Array<DateTime>`

##### Example Usage

```ruby
result = response_types_controller.get_unix_date_time_array()
```

#### Get Content Type Headers

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_content_type_headers
```

##### Response Type

`void`

##### Example Usage

```ruby
result = response_types_controller.get_content_type_headers()
```

### Form Params

#### Overview

##### Get instance

An instance of the `FormParamsController` class can be accessed from the API Client.

```
form_params_controller = client.form_params
```

#### Send Delete Form

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_delete_form(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeleteBody`](#delete-body) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = DeleteBody.new
body.name = 'name6'
body.field = 'field0'

result = form_params_controller.send_delete_form(body)
```

#### Send Delete Multipart

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_delete_multipart(file)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `file` | `File \| UploadIO` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
file = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')

result = form_params_controller.send_delete_multipart(file)
```

#### Send Date Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_date_array(dates)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dates` | `Array<Date>` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
dates = [Date.iso8601('2016-03-13'), Date.iso8601('2016-03-13')]

result = form_params_controller.send_date_array(dates)
```

#### Send Date

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_date(date)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date` | `Date` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date = Date.iso8601('2016-03-13')

result = form_params_controller.send_date(date)
```

#### Send Unix Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_unix_date_time(datetime)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `DateTime` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetime = Time.at(1480809600).utc.to_datetime

result = form_params_controller.send_unix_date_time(datetime)
```

#### Send Rfc 1123 Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc1123_date_time(datetime)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `DateTime` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetime = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')

result = form_params_controller.send_rfc1123_date_time(datetime)
```

#### Send Rfc 3339 Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc3339_date_time(datetime)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `DateTime` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')

result = form_params_controller.send_rfc3339_date_time(datetime)
```

#### Send Unix Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_unix_date_time_array(datetimes)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `Array<DateTime>` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetimes = [Time.at(1480809600).utc.to_datetime, Time.at(1480809600).utc.to_datetime, Time.at(1480809600).utc.to_datetime]

result = form_params_controller.send_unix_date_time_array(datetimes)
```

#### Send Rfc 1123 Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc1123_date_time_array(datetimes)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `Array<DateTime>` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetimes = [DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT'), DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT'), DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')]

result = form_params_controller.send_rfc1123_date_time_array(datetimes)
```

#### Send Long

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_long(value)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Long` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
value = 64

result = form_params_controller.send_long(value)
```

#### Send Integer Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_integer_array(integers)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `integers` | `Array<Integer>` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
integers = [45, 46, 47]

result = form_params_controller.send_integer_array(integers)
```

#### Send String Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_array(strings)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `strings` | `Array<String>` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
strings = ['strings5']

result = form_params_controller.send_string_array(strings)
```

#### Allow Dynamic Form Fields

:information_source: **Note** This endpoint does not require authentication.

```ruby
def allow_dynamic_form_fields(name,
                              _field_parameters: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Form, Required | - |
| `_field_parameters` | `array` | Optional | Pass additional field parameters. |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
name = 'name0'
_field_parameters = {'key0' => 'additionalFieldParams9' } 

result = form_params_controller.allow_dynamic_form_fields(name, _field_parameters: _field_parameters)
```

#### Send Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_model(model)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Employee`](#employee) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
model = Employee.new
model.department = 'department8'
model.dependents = []


model.dependents[0] = Person.new
model.dependents[0].address = 'address5'
model.dependents[0].age = 237
model.dependents[0].birthday = Date.iso8601('2016-03-13')
model.dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.dependents[0].name = 'name9'
model.dependents[0].uid = 'uid9'

model.hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
model.joining_day = Days::MONDAY
model.salary = 240
model.working_days = [Days::THURSDAY, Days::WEDNESDAY_, Days::TUESDAY]
model.address = 'address8'
model.age = 186
model.birthday = Date.iso8601('2016-03-13')
model.birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.name = 'name2'
model.uid = 'uid2'

result = form_params_controller.send_model(model)
```

#### Send Model Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_model_array(models)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `models` | [`Array<Employee>`](#employee) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
models = []


models[0] = Employee.new
models[0].department = 'department6'
models[0].dependents = []


models[0].dependents[0] = Person.new
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = Date.iso8601('2016-03-13')
models[0].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents[1] = Person.new
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = Date.iso8601('2016-03-13')
models[0].dependents[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents[2] = Person.new
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = Date.iso8601('2016-03-13')
models[0].dependents[2].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[0].joining_day = Days::MONDAY
models[0].salary = 84
models[0].working_days = [Days::SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = Date.iso8601('2016-03-13')
models[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models[1] = Employee.new
models[1].department = 'department7'
models[1].dependents = []


models[1].dependents[0] = Person.new
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = Date.iso8601('2016-03-13')
models[1].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[1].joining_day = Days::MONDAY
models[1].salary = 85
models[1].working_days = [Days::MONDAY, Days::TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = Date.iso8601('2016-03-13')
models[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'


result = form_params_controller.send_model_array(models)
```

#### Send File

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_file(file)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `file` | `File \| UploadIO` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
file = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')

result = form_params_controller.send_file(file)
```

#### Send Multiple Files

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_multiple_files(file,
                        file1)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `file` | `File \| UploadIO` | Form, Required | - |
| `file_1` | `File \| UploadIO` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
file = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')
file1 = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')

result = form_params_controller.send_multiple_files(file, file1)
```

#### Send String

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string(value)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `String` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
value = 'value2'

result = form_params_controller.send_string(value)
```

#### Send Rfc 3339 Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc3339_date_time_array(datetimes)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `Array<DateTime>` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetimes = [DateTime.rfc3339('2016-03-13T12:52:32.123Z'), DateTime.rfc3339('2016-03-13T12:52:32.123Z'), DateTime.rfc3339('2016-03-13T12:52:32.123Z')]

result = form_params_controller.send_rfc3339_date_time_array(datetimes)
```

#### Send Mixed Array

Send a variety for form params. Returns file count and body params

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_mixed_array(options = {})
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `file` | `File \| UploadIO` | Form, Required | - |
| `integers` | `Array<Integer>` | Form, Required | - |
| `models` | [`Array<Employee>`](#employee) | Form, Required | - |
| `strings` | `Array<String>` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
collect = {}

file = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')
collect['file'] = file;

integers = [45, 46, 47]
collect['integers'] = integers;

models = []


models[0] = Employee.new
models[0].department = 'department6'
models[0].dependents = []


models[0].dependents[0] = Person.new
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = Date.iso8601('2016-03-13')
models[0].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents[1] = Person.new
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = Date.iso8601('2016-03-13')
models[0].dependents[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents[2] = Person.new
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = Date.iso8601('2016-03-13')
models[0].dependents[2].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[0].joining_day = Days::MONDAY
models[0].salary = 84
models[0].working_days = [Days::SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = Date.iso8601('2016-03-13')
models[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models[1] = Employee.new
models[1].department = 'department7'
models[1].dependents = []


models[1].dependents[0] = Person.new
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = Date.iso8601('2016-03-13')
models[1].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[1].joining_day = Days::MONDAY
models[1].salary = 85
models[1].working_days = [Days::MONDAY, Days::TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = Date.iso8601('2016-03-13')
models[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'

collect['models'] = models;

strings = ['strings5']
collect['strings'] = strings;

result = form_params_controller.send_mixed_array(collect)
```

#### Update Model With Form

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_model_with_form(model)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Employee`](#employee) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
model = Employee.new
model.department = 'department8'
model.dependents = []


model.dependents[0] = Person.new
model.dependents[0].address = 'address5'
model.dependents[0].age = 237
model.dependents[0].birthday = Date.iso8601('2016-03-13')
model.dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.dependents[0].name = 'name9'
model.dependents[0].uid = 'uid9'

model.hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
model.joining_day = Days::MONDAY
model.salary = 240
model.working_days = [Days::THURSDAY, Days::WEDNESDAY_, Days::TUESDAY]
model.address = 'address8'
model.age = 186
model.birthday = Date.iso8601('2016-03-13')
model.birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.name = 'name2'
model.uid = 'uid2'

result = form_params_controller.update_model_with_form(model)
```

#### Send Delete Form 1

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_delete_form1(model)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Employee`](#employee) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
model = Employee.new
model.department = 'department8'
model.dependents = []


model.dependents[0] = Person.new
model.dependents[0].address = 'address5'
model.dependents[0].age = 237
model.dependents[0].birthday = Date.iso8601('2016-03-13')
model.dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.dependents[0].name = 'name9'
model.dependents[0].uid = 'uid9'

model.hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
model.joining_day = Days::MONDAY
model.salary = 240
model.working_days = [Days::THURSDAY, Days::WEDNESDAY_, Days::TUESDAY]
model.address = 'address8'
model.age = 186
model.birthday = Date.iso8601('2016-03-13')
model.birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.name = 'name2'
model.uid = 'uid2'

result = form_params_controller.send_delete_form1(model)
```

#### Send Delete Form With Model Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_delete_form_with_model_array(models)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `models` | [`Array<Employee>`](#employee) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
models = []


models[0] = Employee.new
models[0].department = 'department6'
models[0].dependents = []


models[0].dependents[0] = Person.new
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = Date.iso8601('2016-03-13')
models[0].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents[1] = Person.new
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = Date.iso8601('2016-03-13')
models[0].dependents[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents[2] = Person.new
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = Date.iso8601('2016-03-13')
models[0].dependents[2].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[0].joining_day = Days::MONDAY
models[0].salary = 84
models[0].working_days = [Days::SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = Date.iso8601('2016-03-13')
models[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models[1] = Employee.new
models[1].department = 'department7'
models[1].dependents = []


models[1].dependents[0] = Person.new
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = Date.iso8601('2016-03-13')
models[1].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[1].joining_day = Days::MONDAY
models[1].salary = 85
models[1].working_days = [Days::MONDAY, Days::TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = Date.iso8601('2016-03-13')
models[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'


result = form_params_controller.send_delete_form_with_model_array(models)
```

#### Update Model Array With Form

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_model_array_with_form(models)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `models` | [`Array<Employee>`](#employee) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
models = []


models[0] = Employee.new
models[0].department = 'department6'
models[0].dependents = []


models[0].dependents[0] = Person.new
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = Date.iso8601('2016-03-13')
models[0].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents[1] = Person.new
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = Date.iso8601('2016-03-13')
models[0].dependents[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents[2] = Person.new
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = Date.iso8601('2016-03-13')
models[0].dependents[2].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[0].joining_day = Days::MONDAY
models[0].salary = 84
models[0].working_days = [Days::SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = Date.iso8601('2016-03-13')
models[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models[1] = Employee.new
models[1].department = 'department7'
models[1].dependents = []


models[1].dependents[0] = Person.new
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = Date.iso8601('2016-03-13')
models[1].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[1].joining_day = Days::MONDAY
models[1].salary = 85
models[1].working_days = [Days::MONDAY, Days::TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = Date.iso8601('2016-03-13')
models[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'


result = form_params_controller.update_model_array_with_form(models)
```

#### Update String With Form

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_string_with_form(value)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `String` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
value = 'value2'

result = form_params_controller.update_string_with_form(value)
```

#### Update String Array With Form

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_string_array_with_form(strings)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `strings` | `Array<String>` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
strings = ['strings5']

result = form_params_controller.update_string_array_with_form(strings)
```

#### Send Integer Enum Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_integer_enum_array(suites)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `suites` | [`Array<SuiteCode>`](#suite-code) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
suites = [SuiteCode::HEARTS, SuiteCode::SPADES, SuiteCode::CLUBS]

result = form_params_controller.send_integer_enum_array(suites)
```

#### Send String Enum Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_enum_array(days)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `days` | [`Array<Days>`](#days) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
days = [Days::SUNDAY, Days::MONDAY, Days::TUESDAY]

result = form_params_controller.send_string_enum_array(days)
```

#### Send String in Form With New Line

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_in_form_with_new_line(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TestNstringEncoding`](#test-nstring-encoding) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = TestNstringEncoding.new
body.field = 'field0'
body.name = 'name6'

result = form_params_controller.send_string_in_form_with_new_line(body)
```

#### Send String in Form With R

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_in_form_with_r(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TestRstringEncoding`](#test-rstring-encoding) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = TestRstringEncoding.new
body.field = 'field0'
body.name = 'name6'

result = form_params_controller.send_string_in_form_with_r(body)
```

#### Send String in Form With R N

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_in_form_with_r_n(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TestRNstringEncoding`](#test-r-nstring-encoding) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = TestRNstringEncoding.new
body.field = 'field0'
body.name = 'name6'

result = form_params_controller.send_string_in_form_with_r_n(body)
```

#### Send Optional Unix Date Time in Body

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_unix_date_time_in_body(date_time: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Form, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = Time.at(1484719381).utc.to_datetime

result = form_params_controller.send_optional_unix_date_time_in_body(date_time: date_time)
```

#### Send Optional Rfc 1123 in Body

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_rfc1123_in_body(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `DateTime` | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

result = form_params_controller.send_optional_rfc1123_in_body(body)
```

#### Send Datetime Optional in Endpoint

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_datetime_optional_in_endpoint(body: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `DateTime` | Form, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
result = form_params_controller.send_datetime_optional_in_endpoint()
```

#### Send Optional Unix Time Stamp in Model Body

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_unix_time_stamp_in_model_body(date_time)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`UnixDateTime`](#unix-date-time-1) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = UnixDateTime.new
date_time.date_time = Time.at(1484719381).utc.to_datetime

result = form_params_controller.send_optional_unix_time_stamp_in_model_body(date_time)
```

#### Send Optional Unix Time Stamp in Nested Model Body

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_unix_time_stamp_in_nested_model_body(date_time)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`SendUnixDateTime`](#send-unix-date-time-2) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = SendUnixDateTime.new
date_time.date_time = UnixDateTime.new
date_time.date_time.date_time = Time.at(1484719381).utc.to_datetime

result = form_params_controller.send_optional_unix_time_stamp_in_nested_model_body(date_time)
```

#### Send Rfc 1123 Date Time in Nested Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc1123_date_time_in_nested_model(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`SendRfc1123DateTime`](#send-rfc-1123-date-time-2) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = SendRfc1123DateTime.new
body.date_time = ModelWithOptionalRfc1123DateTime.new
body.date_time.date_time = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

result = form_params_controller.send_rfc1123_date_time_in_nested_model(body)
```

#### Send Rfc 1123 Date Time in Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc1123_date_time_in_model(date_time)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`ModelWithOptionalRfc1123DateTime`](#model-with-optional-rfc-1123-date-time) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = ModelWithOptionalRfc1123DateTime.new
date_time.date_time = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

result = form_params_controller.send_rfc1123_date_time_in_model(date_time)
```

#### Send Optional Datetime in Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_datetime_in_model(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ModelWithOptionalRfc3339DateTime`](#model-with-optional-rfc-3339-date-time) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = ModelWithOptionalRfc3339DateTime.new
body.date_time = DateTime.rfc3339('1994-02-13T14:01:54.9571247Z')

result = form_params_controller.send_optional_datetime_in_model(body)
```

#### Send Rfc 339 Date Time in Nested Models

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc339_date_time_in_nested_models(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`SendRfc339DateTime`](#send-rfc-339-date-time) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = SendRfc339DateTime.new
body.date_time = ModelWithOptionalRfc3339DateTime.new
body.date_time.date_time = DateTime.rfc3339('1994-02-13T14:01:54.9571247Z')

result = form_params_controller.send_rfc339_date_time_in_nested_models(body)
```

#### Uuid as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def uuid_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`UuidAsOptional`](#uuid-as-optional-2) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = UuidAsOptional.new
body.uuid = '123e4567-e89b-12d3-a456-426655440000'

result = form_params_controller.uuid_as_optional(body)
```

#### Boolean as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def boolean_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`BooleanAsOptional`](#boolean-as-optional-3) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = BooleanAsOptional.new
body.boolean = true

result = form_params_controller.boolean_as_optional(body)
```

#### Date as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def date_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DateAsOptional`](#date-as-optional-2) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = DateAsOptional.new
body.date = Date.iso8601('1994-02-13')

result = form_params_controller.date_as_optional(body)
```

#### Dynamic as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def dynamic_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DynamicAsOptional`](#dynamic-as-optional-2) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = DynamicAsOptional.new
body.dynamic = JSON.parse('{"dynamic":"test"}')

result = form_params_controller.dynamic_as_optional(body)
```

#### String as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def string_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`StringAsOptional`](#string-as-optional-2) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = StringAsOptional.new
body.string = 'test'

result = form_params_controller.string_as_optional(body)
```

#### Precision as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def precision_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`PrecisionAsOptional`](#precision-as-optional-3) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = PrecisionAsOptional.new
body.precision = 1.23

result = form_params_controller.precision_as_optional(body)
```

#### Long as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def long_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`LongAsOptional`](#long-as-optional-2) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = LongAsOptional.new
body.long = 123123

result = form_params_controller.long_as_optional(body)
```

#### Send Number as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_number_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`NumberAsOptional`](#number-as-optional) | Form, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = NumberAsOptional.new
body.number = 1

result = form_params_controller.send_number_as_optional(body)
```

### Body Params

#### Overview

##### Get instance

An instance of the `BodyParamsController` class can be accessed from the API Client.

```
body_params_controller = client.body_params
```

#### Send Delete Plain Text

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_delete_plain_text(text_string)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `text_string` | `String` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
text_string = 'textString2'

result = body_params_controller.send_delete_plain_text(text_string)
```

#### Send Delete Body

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_delete_body(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeleteBody`](#delete-body) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = DeleteBody.new
body.name = 'name6'
body.field = 'field0'

result = body_params_controller.send_delete_body(body)
```

#### Send Date Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_date_array(dates)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dates` | `Array<Date>` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
dates = [Date.iso8601('2016-03-13'), Date.iso8601('2016-03-13')]

result = body_params_controller.send_date_array(dates)
```

#### Send Date

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_date(date)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date` | `Date` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date = Date.iso8601('2016-03-13')

result = body_params_controller.send_date(date)
```

#### Send Unix Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_unix_date_time(datetime)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `DateTime` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetime = Time.at(1480809600).utc.to_datetime

result = body_params_controller.send_unix_date_time(datetime)
```

#### Send Rfc 1123 Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc1123_date_time(datetime)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `DateTime` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetime = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')

result = body_params_controller.send_rfc1123_date_time(datetime)
```

#### Send Rfc 3339 Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc3339_date_time(datetime)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `DateTime` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')

result = body_params_controller.send_rfc3339_date_time(datetime)
```

#### Send Unix Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_unix_date_time_array(datetimes)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `Array<DateTime>` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetimes = [Time.at(1480809600).utc.to_datetime, Time.at(1480809600).utc.to_datetime, Time.at(1480809600).utc.to_datetime]

result = body_params_controller.send_unix_date_time_array(datetimes)
```

#### Send Rfc 1123 Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc1123_date_time_array(datetimes)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `Array<DateTime>` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetimes = [DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT'), DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT'), DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')]

result = body_params_controller.send_rfc1123_date_time_array(datetimes)
```

#### Send Rfc 3339 Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc3339_date_time_array(datetimes)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `Array<DateTime>` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetimes = [DateTime.rfc3339('2016-03-13T12:52:32.123Z'), DateTime.rfc3339('2016-03-13T12:52:32.123Z'), DateTime.rfc3339('2016-03-13T12:52:32.123Z')]

result = body_params_controller.send_rfc3339_date_time_array(datetimes)
```

#### Send String Array

sends a string body param

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_array(sarray)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `sarray` | `Array<String>` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
sarray = ['sarray8', 'sarray9']

result = body_params_controller.send_string_array(sarray)
```

#### Update String

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_string(value)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `String` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
value = 'value2'

result = body_params_controller.update_string(value)
```

#### Send Integer Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_integer_array(integers)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `integers` | `Array<Integer>` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
integers = [45, 46, 47]

result = body_params_controller.send_integer_array(integers)
```

#### Wrap Body in Object

:information_source: **Note** This endpoint does not require authentication.

```ruby
def wrap_body_in_object(field,
                        name)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `field` | `String` | Body, Required | - |
| `name` | `String` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
field = 'field6'
name = 'name0'

result = body_params_controller.wrap_body_in_object(field, name)
```

#### Additional Model Parameters

:information_source: **Note** This endpoint does not require authentication.

```ruby
def additional_model_parameters(model)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`AdditionalModelParameters`](#additional-model-parameters-1) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
model = AdditionalModelParameters.new
model.name = 'name2'
model.field = 'field4'
model.address = 'address8'
model.job = Job.new
model.job.company = 'company8'

result = body_params_controller.additional_model_parameters(model)
```

#### Validate Required Parameter

:information_source: **Note** This endpoint does not require authentication.

```ruby
def validate_required_parameter(model,
                                option: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Validate`](#validate) | Body, Required | - |
| `option` | `String` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
model = Validate.new
model.field = 'field4'
model.name = 'name2'

result = body_params_controller.validate_required_parameter(model, )
```

#### Additional Model Parameters 1

:information_source: **Note** This endpoint does not require authentication.

```ruby
def additional_model_parameters1(model)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`AdditionalModelParameters`](#additional-model-parameters-1) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
model = AdditionalModelParameters.new
model.name = 'name2'
model.field = 'field4'
model.address = 'address8'
model.job = Job.new
model.job.company = 'company8'

result = body_params_controller.additional_model_parameters1(model)
```

#### Send Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_model(model)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Employee`](#employee) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
model = Employee.new
model.department = 'department8'
model.dependents = []


model.dependents[0] = Person.new
model.dependents[0].address = 'address5'
model.dependents[0].age = 237
model.dependents[0].birthday = Date.iso8601('2016-03-13')
model.dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.dependents[0].name = 'name9'
model.dependents[0].uid = 'uid9'

model.hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
model.joining_day = Days::MONDAY
model.salary = 240
model.working_days = [Days::THURSDAY, Days::WEDNESDAY_, Days::TUESDAY]
model.address = 'address8'
model.age = 186
model.birthday = Date.iso8601('2016-03-13')
model.birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.name = 'name2'
model.uid = 'uid2'

result = body_params_controller.send_model(model)
```

#### Send Model Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_model_array(models)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `models` | [`Array<Employee>`](#employee) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
models = []


models[0] = Employee.new
models[0].department = 'department6'
models[0].dependents = []


models[0].dependents[0] = Person.new
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = Date.iso8601('2016-03-13')
models[0].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents[1] = Person.new
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = Date.iso8601('2016-03-13')
models[0].dependents[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents[2] = Person.new
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = Date.iso8601('2016-03-13')
models[0].dependents[2].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[0].joining_day = Days::MONDAY
models[0].salary = 84
models[0].working_days = [Days::SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = Date.iso8601('2016-03-13')
models[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models[1] = Employee.new
models[1].department = 'department7'
models[1].dependents = []


models[1].dependents[0] = Person.new
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = Date.iso8601('2016-03-13')
models[1].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[1].joining_day = Days::MONDAY
models[1].salary = 85
models[1].working_days = [Days::MONDAY, Days::TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = Date.iso8601('2016-03-13')
models[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'


result = body_params_controller.send_model_array(models)
```

#### Send Dynamic

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_dynamic(dynamic)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dynamic` | `Object` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
dynamic = JSON.parse('{"key1":"val1","key2":"val2"}')

result = body_params_controller.send_dynamic(dynamic)
```

#### Send String

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string(value)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `String` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
value = 'value2'

result = body_params_controller.send_string(value)
```

#### Send String Enum Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_enum_array(days)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `days` | [`Array<Days>`](#days) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
days = [Days::SUNDAY, Days::MONDAY, Days::TUESDAY]

result = body_params_controller.send_string_enum_array(days)
```

#### Send Integer Enum Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_integer_enum_array(suites)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `suites` | [`Array<SuiteCode>`](#suite-code) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
suites = [SuiteCode::HEARTS, SuiteCode::SPADES, SuiteCode::CLUBS]

result = body_params_controller.send_integer_enum_array(suites)
```

#### Update Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_model(model)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Employee`](#employee) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
model = Employee.new
model.department = 'department8'
model.dependents = []


model.dependents[0] = Person.new
model.dependents[0].address = 'address5'
model.dependents[0].age = 237
model.dependents[0].birthday = Date.iso8601('2016-03-13')
model.dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.dependents[0].name = 'name9'
model.dependents[0].uid = 'uid9'

model.hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
model.joining_day = Days::MONDAY
model.salary = 240
model.working_days = [Days::THURSDAY, Days::WEDNESDAY_, Days::TUESDAY]
model.address = 'address8'
model.age = 186
model.birthday = Date.iso8601('2016-03-13')
model.birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.name = 'name2'
model.uid = 'uid2'

result = body_params_controller.update_model(model)
```

#### Send Delete Body With Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_delete_body_with_model(model)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `model` | [`Employee`](#employee) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
model = Employee.new
model.department = 'department8'
model.dependents = []


model.dependents[0] = Person.new
model.dependents[0].address = 'address5'
model.dependents[0].age = 237
model.dependents[0].birthday = Date.iso8601('2016-03-13')
model.dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.dependents[0].name = 'name9'
model.dependents[0].uid = 'uid9'

model.hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
model.joining_day = Days::MONDAY
model.salary = 240
model.working_days = [Days::THURSDAY, Days::WEDNESDAY_, Days::TUESDAY]
model.address = 'address8'
model.age = 186
model.birthday = Date.iso8601('2016-03-13')
model.birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
model.name = 'name2'
model.uid = 'uid2'

result = body_params_controller.send_delete_body_with_model(model)
```

#### Send Delete Body With Model Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_delete_body_with_model_array(models)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `models` | [`Array<Employee>`](#employee) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
models = []


models[0] = Employee.new
models[0].department = 'department6'
models[0].dependents = []


models[0].dependents[0] = Person.new
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = Date.iso8601('2016-03-13')
models[0].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents[1] = Person.new
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = Date.iso8601('2016-03-13')
models[0].dependents[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents[2] = Person.new
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = Date.iso8601('2016-03-13')
models[0].dependents[2].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[0].joining_day = Days::MONDAY
models[0].salary = 84
models[0].working_days = [Days::SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = Date.iso8601('2016-03-13')
models[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models[1] = Employee.new
models[1].department = 'department7'
models[1].dependents = []


models[1].dependents[0] = Person.new
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = Date.iso8601('2016-03-13')
models[1].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[1].joining_day = Days::MONDAY
models[1].salary = 85
models[1].working_days = [Days::MONDAY, Days::TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = Date.iso8601('2016-03-13')
models[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'


result = body_params_controller.send_delete_body_with_model_array(models)
```

#### Update Model Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_model_array(models)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `models` | [`Array<Employee>`](#employee) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
models = []


models[0] = Employee.new
models[0].department = 'department6'
models[0].dependents = []


models[0].dependents[0] = Person.new
models[0].dependents[0].address = 'address9'
models[0].dependents[0].age = 49
models[0].dependents[0].birthday = Date.iso8601('2016-03-13')
models[0].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[0].name = 'name3'
models[0].dependents[0].uid = 'uid3'

models[0].dependents[1] = Person.new
models[0].dependents[1].address = 'address0'
models[0].dependents[1].age = 50
models[0].dependents[1].birthday = Date.iso8601('2016-03-13')
models[0].dependents[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[1].name = 'name4'
models[0].dependents[1].uid = 'uid4'

models[0].dependents[2] = Person.new
models[0].dependents[2].address = 'address1'
models[0].dependents[2].age = 51
models[0].dependents[2].birthday = Date.iso8601('2016-03-13')
models[0].dependents[2].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].dependents[2].name = 'name5'
models[0].dependents[2].uid = 'uid5'

models[0].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[0].joining_day = Days::MONDAY
models[0].salary = 84
models[0].working_days = [Days::SUNDAY]
models[0].address = 'address2'
models[0].age = 254
models[0].birthday = Date.iso8601('2016-03-13')
models[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[0].name = 'name6'
models[0].uid = 'uid6'

models[1] = Employee.new
models[1].department = 'department7'
models[1].dependents = []


models[1].dependents[0] = Person.new
models[1].dependents[0].address = 'address0'
models[1].dependents[0].age = 50
models[1].dependents[0].birthday = Date.iso8601('2016-03-13')
models[1].dependents[0].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].dependents[0].name = 'name4'
models[1].dependents[0].uid = 'uid4'

models[1].hired_at = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')
models[1].joining_day = Days::MONDAY
models[1].salary = 85
models[1].working_days = [Days::MONDAY, Days::TUESDAY]
models[1].address = 'address3'
models[1].age = 255
models[1].birthday = Date.iso8601('2016-03-13')
models[1].birthtime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')
models[1].name = 'name7'
models[1].uid = 'uid7'


result = body_params_controller.update_model_array(models)
```

#### Update String 1

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_string1(value)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `String` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
value = 'value2'

result = body_params_controller.update_string1(value)
```

#### Update String Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_string_array(strings)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `strings` | `Array<String>` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
strings = ['strings5']

result = body_params_controller.update_string_array(strings)
```

#### Send String With New Line

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_with_new_line(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TestNstringEncoding`](#test-nstring-encoding) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = TestNstringEncoding.new
body.field = 'field0'
body.name = 'name6'

result = body_params_controller.send_string_with_new_line(body)
```

#### Send String With R

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_with_r(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TestRstringEncoding`](#test-rstring-encoding) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = TestRstringEncoding.new
body.field = 'field0'
body.name = 'name6'

result = body_params_controller.send_string_with_r(body)
```

#### Send String in Body With R N

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_in_body_with_r_n(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TestRNstringEncoding`](#test-r-nstring-encoding) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = TestRNstringEncoding.new
body.field = 'field0'
body.name = 'name6'

result = body_params_controller.send_string_in_body_with_r_n(body)
```

#### Send Optional Unix Date Time in Body

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_unix_date_time_in_body(date_time: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Body, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = Time.at(1484719381).utc.to_datetime

result = body_params_controller.send_optional_unix_date_time_in_body(date_time: date_time)
```

#### Send Optional Rfc 1123 in Body

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_rfc1123_in_body(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `DateTime` | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

result = body_params_controller.send_optional_rfc1123_in_body(body)
```

#### Send Datetime Optional in Endpoint

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_datetime_optional_in_endpoint(body: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `DateTime` | Body, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
result = body_params_controller.send_datetime_optional_in_endpoint()
```

#### Send Optional Unix Time Stamp in Model Body

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_unix_time_stamp_in_model_body(date_time)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`UnixDateTime`](#unix-date-time-1) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = UnixDateTime.new
date_time.date_time = Time.at(1484719381).utc.to_datetime

result = body_params_controller.send_optional_unix_time_stamp_in_model_body(date_time)
```

#### Send Optional Unix Time Stamp in Nested Model Body

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_unix_time_stamp_in_nested_model_body(date_time)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`SendUnixDateTime`](#send-unix-date-time-2) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = SendUnixDateTime.new
date_time.date_time = UnixDateTime.new
date_time.date_time.date_time = Time.at(1484719381).utc.to_datetime

result = body_params_controller.send_optional_unix_time_stamp_in_nested_model_body(date_time)
```

#### Send Rfc 1123 Date Time in Nested Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc1123_date_time_in_nested_model(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`SendRfc1123DateTime`](#send-rfc-1123-date-time-2) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = SendRfc1123DateTime.new
body.date_time = ModelWithOptionalRfc1123DateTime.new
body.date_time.date_time = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

result = body_params_controller.send_rfc1123_date_time_in_nested_model(body)
```

#### Send Rfc 1123 Date Time in Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc1123_date_time_in_model(date_time)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`ModelWithOptionalRfc1123DateTime`](#model-with-optional-rfc-1123-date-time) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = ModelWithOptionalRfc1123DateTime.new
date_time.date_time = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

result = body_params_controller.send_rfc1123_date_time_in_model(date_time)
```

#### Send Optional Datetime in Model

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_optional_datetime_in_model(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ModelWithOptionalRfc3339DateTime`](#model-with-optional-rfc-3339-date-time) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = ModelWithOptionalRfc3339DateTime.new
body.date_time = DateTime.rfc3339('1994-02-13T14:01:54.9571247Z')

result = body_params_controller.send_optional_datetime_in_model(body)
```

#### Send Rfc 339 Date Time in Nested Models

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_rfc339_date_time_in_nested_models(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`SendRfc339DateTime`](#send-rfc-339-date-time) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = SendRfc339DateTime.new
body.date_time = ModelWithOptionalRfc3339DateTime.new
body.date_time.date_time = DateTime.rfc3339('1994-02-13T14:01:54.9571247Z')

result = body_params_controller.send_rfc339_date_time_in_nested_models(body)
```

#### Uuid as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def uuid_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`UuidAsOptional`](#uuid-as-optional-2) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = UuidAsOptional.new
body.uuid = '123e4567-e89b-12d3-a456-426655440000'

result = body_params_controller.uuid_as_optional(body)
```

#### Boolean as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def boolean_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`BooleanAsOptional`](#boolean-as-optional-3) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = BooleanAsOptional.new
body.boolean = true

result = body_params_controller.boolean_as_optional(body)
```

#### Date as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def date_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DateAsOptional`](#date-as-optional-2) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = DateAsOptional.new
body.date = Date.iso8601('1994-02-13')

result = body_params_controller.date_as_optional(body)
```

#### Dynamic as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def dynamic_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DynamicAsOptional`](#dynamic-as-optional-2) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = DynamicAsOptional.new
body.dynamic = JSON.parse('{"dynamic":"test"}')

result = body_params_controller.dynamic_as_optional(body)
```

#### String as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def string_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`StringAsOptional`](#string-as-optional-2) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = StringAsOptional.new
body.string = 'test'

result = body_params_controller.string_as_optional(body)
```

#### Precision as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def precision_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`PrecisionAsOptional`](#precision-as-optional-3) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = PrecisionAsOptional.new
body.precision = 1.23

result = body_params_controller.precision_as_optional(body)
```

#### Long as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def long_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`LongAsOptional`](#long-as-optional-2) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = LongAsOptional.new
body.long = 123123

result = body_params_controller.long_as_optional(body)
```

#### Send Number as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_number_as_optional(body)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`NumberAsOptional`](#number-as-optional) | Body, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
body = NumberAsOptional.new
body.number = 1

result = body_params_controller.send_number_as_optional(body)
```

### Error Codes

#### Overview

##### Get instance

An instance of the `ErrorCodesController` class can be accessed from the API Client.

```
error_codes_controller = client.error_codes
```

#### Catch 412 Global Error

:information_source: **Note** This endpoint does not require authentication.

```ruby
def catch_412_global_error
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.catch_412_global_error()
```

#### Get 501

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get501
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.get501()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 501 | error 501 | [`NestedModelException`](#nested-model-exception) |

#### Get 400

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get400
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.get400()
```

#### Get 500

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get500
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.get500()
```

#### Get 401

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get401
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.get401()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | 401 Local | [`LocalTestException`](#local-test-exception) |
| 421 | Default | [`LocalTestException`](#local-test-exception) |
| 431 | Default | [`LocalTestException`](#local-test-exception) |
| 432 | Default | [`LocalTestException`](#local-test-exception) |
| 441 | Default | [`LocalTestException`](#local-test-exception) |
| Default | Invalid response. | [`LocalTestException`](#local-test-exception) |

#### Receive Exception With Unixtimestamp Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def receive_exception_with_unixtimestamp_exception
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.receive_exception_with_unixtimestamp_exception()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | unixtimestamp exception | [`UnixTimeStampException`](#unix-time-stamp-exception) |

#### Receive Exception With Rfc 1123 Datetime

:information_source: **Note** This endpoint does not require authentication.

```ruby
def receive_exception_with_rfc_1123_datetime
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.receive_exception_with_rfc_1123_datetime()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | Rfc1123 Exception | [`Rfc1123Exception`](#rfc-1123-exception) |

#### Receive Exception With Rfc 3339 Datetime

:information_source: **Note** This endpoint does not require authentication.

```ruby
def receive_exception_with_rfc_3339_datetime
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.receive_exception_with_rfc_3339_datetime()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | DateTime Exception | [`ExceptionWithRfc3339DateTimeException`](#exception-with-rfc-3339-date-time) |

#### Receive Endpoint Level Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def receive_endpoint_level_exception
```

##### Response Type

[`Complex5`](#complex-5)

##### Example Usage

```ruby
result = error_codes_controller.receive_endpoint_level_exception()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 451 | caught endpoint exception | [`CustomErrorResponseException`](#custom-error-response) |

#### Receive Global Level Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def receive_global_level_exception
```

##### Response Type

[`Complex5`](#complex-5)

##### Example Usage

```ruby
result = error_codes_controller.receive_global_level_exception()
```

#### Date in Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def date_in_exception
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.date_in_exception()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | date in exception | [`ExceptionWithDateException`](#exception-with-date) |

#### UUID in Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def uuid_in_exception
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.uuid_in_exception()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | uuid in exception | [`ExceptionWithUUIDException`](#exception-with-uuid) |

#### Dynamic in Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def dynamic_in_exception
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.dynamic_in_exception()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | dynamic in Exception | [`ExceptionWithDynamicException`](#exception-with-dynamic) |

#### Precision in Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def precision_in_exception
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.precision_in_exception()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | precision in Exception | [`ExceptionWithPrecisionException`](#exception-with-precision) |

#### Boolean in Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def boolean_in_exception
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.boolean_in_exception()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | Boolean in Exception | [`ExceptionWithBooleanException`](#exception-with-boolean) |

#### Long in Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def long_in_exception
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.long_in_exception()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | long in exception | [`ExceptionWithLongException`](#exception-with-long) |

#### Number in Exception

:information_source: **Note** This endpoint does not require authentication.

```ruby
def number_in_exception
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.number_in_exception()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | number in exception | [`ExceptionWithNumberException`](#exception-with-number) |

#### Get Exception With String

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_exception_with_string
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = error_codes_controller.get_exception_with_string()
```

##### Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 444 | exception with string | [`ExceptionWithStringException`](#exception-with-string) |

### Query Param

#### Overview

##### Get instance

An instance of the `QueryParamController` class can be accessed from the API Client.

```
query_param_controller = client.query_param
```

#### Date Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def date_array(dates)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dates` | `Array<Date>` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
dates = [Date.iso8601('2016-03-13'), Date.iso8601('2016-03-13')]

result = query_param_controller.date_array(dates)
```

#### Optional Dynamic Query Param

get optional dynamic query parameter

:information_source: **Note** This endpoint does not require authentication.

```ruby
def optional_dynamic_query_param(name,
                                 _query_parameters: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Query, Required | - |
| `_query_parameters` | `array` | Optional | Pass additional query parameters. |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
name = 'name0'
_query_parameters = {'key0' => 'additionalQueryParams2' } 

result = query_param_controller.optional_dynamic_query_param(name, _query_parameters: _query_parameters)
```

#### Date

:information_source: **Note** This endpoint does not require authentication.

```ruby
def date(date)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date` | `Date` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date = Date.iso8601('2016-03-13')

result = query_param_controller.date(date)
```

#### Unix Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def unix_date_time_array(datetimes)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `Array<DateTime>` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetimes = [Time.at(1480809600).utc.to_datetime, Time.at(1480809600).utc.to_datetime, Time.at(1480809600).utc.to_datetime]

result = query_param_controller.unix_date_time_array(datetimes)
```

#### Unix Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def unix_date_time(datetime)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `DateTime` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetime = Time.at(1480809600).utc.to_datetime

result = query_param_controller.unix_date_time(datetime)
```

#### Rfc 1123 Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def rfc1123_date_time(datetime)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `DateTime` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetime = DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')

result = query_param_controller.rfc1123_date_time(datetime)
```

#### Rfc 1123 Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def rfc1123_date_time_array(datetimes)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `Array<DateTime>` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetimes = [DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT'), DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT'), DateTime.httpdate('Mon, 15 Jun 2009 20:45:30 GMT')]

result = query_param_controller.rfc1123_date_time_array(datetimes)
```

#### Rfc 3339 Date Time Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def rfc3339_date_time_array(datetimes)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetimes` | `Array<DateTime>` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetimes = [DateTime.rfc3339('2016-03-13T12:52:32.123Z'), DateTime.rfc3339('2016-03-13T12:52:32.123Z'), DateTime.rfc3339('2016-03-13T12:52:32.123Z')]

result = query_param_controller.rfc3339_date_time_array(datetimes)
```

#### Rfc 3339 Date Time

:information_source: **Note** This endpoint does not require authentication.

```ruby
def rfc3339_date_time(datetime)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `datetime` | `DateTime` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
datetime = DateTime.rfc3339('2016-03-13T12:52:32.123Z')

result = query_param_controller.rfc3339_date_time(datetime)
```

#### No Params

:information_source: **Note** This endpoint does not require authentication.

```ruby
def no_params
```

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
result = query_param_controller.no_params()
```

#### String Param

:information_source: **Note** This endpoint does not require authentication.

```ruby
def string_param(string)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `string` | `String` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
string = 'string4'

result = query_param_controller.string_param(string)
```

#### Url Param

:information_source: **Note** This endpoint does not require authentication.

```ruby
def url_param(url)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
url = 'url4'

result = query_param_controller.url_param(url)
```

#### Number Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def number_array(integers)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `integers` | `Array<Integer>` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
integers = [45, 46, 47]

result = query_param_controller.number_array(integers)
```

#### String Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def string_array(strings)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `strings` | `Array<String>` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
strings = ['strings5']

result = query_param_controller.string_array(strings)
```

#### Simple Query

:information_source: **Note** This endpoint does not require authentication.

```ruby
def simple_query(boolean,
                 number,
                 string,
                 _query_parameters: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `boolean` | `Boolean` | Query, Required | - |
| `number` | `Integer` | Query, Required | - |
| `string` | `String` | Query, Required | - |
| `_query_parameters` | `array` | Optional | Pass additional query parameters. |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
boolean = false
number = 158
string = 'string4'
_query_parameters = {'key0' => 'additionalQueryParams2' } 

result = query_param_controller.simple_query(boolean, number, string, _query_parameters: _query_parameters)
```

#### String Enum Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def string_enum_array(days)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `days` | [`Array<Days>`](#days) | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
days = [Days::SUNDAY, Days::MONDAY, Days::TUESDAY]

result = query_param_controller.string_enum_array(days)
```

#### Multiple Params

:information_source: **Note** This endpoint does not require authentication.

```ruby
def multiple_params(number,
                    precision,
                    string,
                    url)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `Integer` | Query, Required | - |
| `precision` | `Float` | Query, Required | - |
| `string` | `String` | Query, Required | - |
| `url` | `String` | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
number = 158
precision = 112.04
string = 'string4'
url = 'url4'

result = query_param_controller.multiple_params(number, precision, string, url)
```

#### Integer Enum Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def integer_enum_array(suites)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `suites` | [`Array<SuiteCode>`](#suite-code) | Query, Required | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
suites = [SuiteCode::HEARTS, SuiteCode::SPADES, SuiteCode::CLUBS]

result = query_param_controller.integer_enum_array(suites)
```

### Echo

#### Overview

##### Get instance

An instance of the `EchoController` class can be accessed from the API Client.

```
echo_controller = client.echo
```

#### Json Echo

Echo's back the request

:information_source: **Note** This endpoint does not require authentication.

```ruby
def json_echo(input)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `input` | `Object` | Body, Required | - |

##### Response Type

`Mixed`

##### Example Usage

```ruby
input = JSON.parse('{"key1":"val1","key2":"val2"}')

result = echo_controller.json_echo(input)
```

#### Form Echo

Sends the request including any form params as JSON

:information_source: **Note** This endpoint does not require authentication.

```ruby
def form_echo(input)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `input` | `Object` | Form, Required | - |

##### Response Type

`Mixed`

##### Example Usage

```ruby
input = JSON.parse('{"key1":"val1","key2":"val2"}')

result = echo_controller.form_echo(input)
```

#### Query Echo

:information_source: **Note** This endpoint does not require authentication.

```ruby
def query_echo(_query_parameters: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `_query_parameters` | `array` | Optional | Pass additional query parameters. |

##### Response Type

[`EchoResponse`](#echo-response)

##### Example Usage

```ruby
_query_parameters = {'key0' => 'additionalQueryParams2' } 

result = echo_controller.query_echo(_query_parameters: _query_parameters)
```

### Header

#### Overview

##### Get instance

An instance of the `HeaderController` class can be accessed from the API Client.

```
header_controller = client.header
```

#### Send Headers

Sends a single header params

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_headers(custom_header,
                 value)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `custom_header` | `String` | Header, Required | - |
| `value` | `String` | Form, Required | Represents the value of the custom header |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
custom_header = 'custom-header2'
value = 'value2'

result = header_controller.send_headers(custom_header, value)
```

### Template Params

#### Overview

##### Get instance

An instance of the `TemplateParamsController` class can be accessed from the API Client.

```
template_params_controller = client.template_params
```

#### Send String Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_array(strings)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `strings` | `Array<String>` | Template, Required | - |

##### Response Type

[`EchoResponse`](#echo-response)

##### Example Usage

```ruby
strings = ['strings5']

result = template_params_controller.send_string_array(strings)
```

#### Send Integer Array

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_integer_array(integers)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `integers` | `Array<Integer>` | Template, Required | - |

##### Response Type

[`EchoResponse`](#echo-response)

##### Example Usage

```ruby
integers = [45, 46, 47]

result = template_params_controller.send_integer_array(integers)
```

### Query Params

#### Overview

##### Get instance

An instance of the `QueryParamsController` class can be accessed from the API Client.

```
query_params_controller = client.query_params
```

#### Send Number as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_number_as_optional(number,
                            number1: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `Integer` | Query, Required | - |
| `number_1` | `Integer` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
number = 1
number1 = 1

result = query_params_controller.send_number_as_optional(number, number1: number1)
```

#### Send Long as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_long_as_optional(long,
                          long1: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `long` | `Long` | Query, Required | - |
| `long_1` | `Long` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
long = 123123
long1 = 123123

result = query_params_controller.send_long_as_optional(long, long1: long1)
```

#### Precision as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def precision_as_optional(precision,
                          precision1: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `precision` | `Float` | Query, Required | - |
| `precision_1` | `Float` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
precision = 1.23
precision1 = 1.23

result = query_params_controller.precision_as_optional(precision, precision1: precision1)
```

#### Boolean as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def boolean_as_optional(boolean,
                        boolean1: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `boolean` | `Boolean` | Query, Required | - |
| `boolean_1` | `Boolean` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
boolean = true
boolean1 = true

result = query_params_controller.boolean_as_optional(boolean, boolean1: boolean1)
```

#### Rfc 1123 Datetime as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def rfc1123_datetime_as_optional(date_time,
                                 date_time1: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Query, Required | - |
| `date_time_1` | `DateTime` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')
date_time1 = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

result = query_params_controller.rfc1123_datetime_as_optional(date_time, date_time1: date_time1)
```

#### Rfc 3339 Datetime as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def rfc3339_datetime_as_optional(date_time,
                                 date_time1: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Query, Required | - |
| `date_time_1` | `DateTime` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = DateTime.rfc3339('1994-02-13 14:01:54')
date_time1 = DateTime.rfc3339('1994-02-13 14:01:54')

result = query_params_controller.rfc3339_datetime_as_optional(date_time, date_time1: date_time1)
```

#### Send Date as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_date_as_optional(date,
                          date1: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date` | `Date` | Query, Required | - |
| `date_1` | `Date` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date = Date.iso8601('1994-02-13')
date1 = Date.iso8601('1994-02-13')

result = query_params_controller.send_date_as_optional(date, date1: date1)
```

#### Send String as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def send_string_as_optional(string,
                            string1: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `string` | `String` | Query, Required | - |
| `string_1` | `String` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
string = 'test'
string1 = 'test'

result = query_params_controller.send_string_as_optional(string, string1: string1)
```

#### Unixdatetime as Optional

:information_source: **Note** This endpoint does not require authentication.

```ruby
def unixdatetime_as_optional(date_time,
                             date_time1: nil)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Query, Required | - |
| `date_time_1` | `DateTime` | Query, Optional | - |

##### Response Type

[`ServerResponse`](#server-response)

##### Example Usage

```ruby
date_time = Time.at(1484719381).utc.to_datetime
date_time1 = Time.at(1484719381).utc.to_datetime

result = query_params_controller.unixdatetime_as_optional(date_time, date_time1: date_time1)
```

## Model Reference

### Structures

* [Employee](#employee)
* [Boss](#boss)
* [Delete Body](#delete-body)
* [Echo Response](#echo-response)
* [Person](#person)
* [Server Response](#server-response)
* [Query Parameter](#query-parameter)
* [Job](#job)
* [Additional Model Parameters](#additional-model-parameters-1)
* [Validate](#validate)
* [Test Nstring Encoding](#test-nstring-encoding)
* [Test Rstring Encoding](#test-rstring-encoding)
* [Test R Nstring Encoding](#test-r-nstring-encoding)
* [Send Rfc 1123 Date Time](#send-rfc-1123-date-time-2)
* [Model With Optional Rfc 1123 Date Time](#model-with-optional-rfc-1123-date-time)
* [Send Rfc 339 Date Time](#send-rfc-339-date-time)
* [Uuid as Optional](#uuid-as-optional-2)
* [Dynamic as Optional](#dynamic-as-optional-2)
* [Model With Optional Rfc 3339 Date Time](#model-with-optional-rfc-3339-date-time)
* [Unix Date Time](#unix-date-time-1)
* [Send Unix Date Time](#send-unix-date-time-2)
* [Precision as Optional](#precision-as-optional-3)
* [String as Optional](#string-as-optional-2)
* [Long as Optional](#long-as-optional-2)
* [Number as Optional](#number-as-optional)
* [Boolean as Optional](#boolean-as-optional-3)
* [Software Tester](#software-tester)
* [Developer](#developer)
* [Gloss Entry](#gloss-entry)
* [Mineral](#mineral)
* [Diuretic](#diuretic)
* [Boss Company](#boss-company)
* [Beta Blocker](#beta-blocker)
* [Anticoagulant](#anticoagulant)
* [Employee Comp](#employee-comp)
* [Company](#company)
* [Attributes](#attributes)
* [Response With Enum](#response-with-enum)
* [Gloss Def](#gloss-def)
* [Gloss List](#gloss-list)
* [Gloss Div](#gloss-div)
* [Glossary](#glossary)
* [Imaging](#imaging)
* [Lab](#lab)
* [Antianginal](#antianginal)
* [Ace Inhibitor](#ace-inhibitor)
* [Medication](#medication)
* [Complex 1](#complex-1)
* [Complex 2](#complex-2)
* [Advanced](#advanced)
* [Data to Sign](#data-to-sign)
* [Contact Details](#contact-details)
* [Styling](#styling)
* [Dialogs](#dialogs)
* [Signature Type](#signature-type)
* [Redirect Settings](#redirect-settings)
* [Time to Live](#time-to-live)
* [Status](#status)
* [Before](#before)
* [Ui](#ui)
* [Complex 3](#complex-3)
* [Signer](#signer)
* [Complex 5](#complex-5)
* [Response Data](#response-data)
* [Feed](#feed)
* [Entry](#entry)
* [Date as Optional](#date-as-optional-2)
* [Add Precision in Exception](#add-precision-in-exception)
* [Add Uuid in Global Exception](#add-uuid-in-global-exception)
* [Add Rfc 1123 Datetime in Global Exception](#add-rfc-1123-datetime-in-global-exception)
* [Add Number in Exception](#add-number-in-exception)
* [Add Dynamic in Exception](#add-dynamic-in-exception)
* [Add Rfc 3339 Datetime in Global Exception](#add-rfc-3339-datetime-in-global-exception)
* [Add Boolean in Global Exception](#add-boolean-in-global-exception)
* [Add Date in Global Exception](#add-date-in-global-exception)
* [Add String in Global Exception](#add-string-in-global-exception)
* [Add Unix Time Stamp in Global Exception](#add-unix-time-stamp-in-global-exception)
* [Add Long in Global Exception](#add-long-in-global-exception)

#### Employee

##### Class Name

`Employee`

##### Inherits From

[`Person`](#person)

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `department` | `String` | Required | - |
| `dependents` | [`Array<Person>`](#person) | Required | - |
| `hired_at` | `DateTime` | Required | - |
| `joining_day` | [`Days`](#days) | Required | **Default**: `Days::MONDAY`<br>*Default: `Days::MONDAY`* |
| `salary` | `Integer` | Required | - |
| `working_days` | [`Array<Days>`](#days) | Required | - |
| `boss` | [`Person`](#person) | Optional | - |

##### Example (as JSON)

```json
{
  "department": null,
  "dependents": null,
  "hiredAt": null,
  "joiningDay": "Monday",
  "salary": null,
  "workingDays": null
}
```

#### Boss

Testing circular reference.

##### Class Name

`Boss`

##### Inherits From

[`Employee`](#employee)

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `promoted_at` | `DateTime` | Required | - |
| `assistant` | [`Employee`](#employee) | Optional | - |

##### Example (as JSON)

```json
{
  "promotedAt": 1480809600,
  "assistant": null,
  "department": "department0",
  "dependents": [
    {
      "address": "address3",
      "age": 45,
      "birthday": "2016-03-13",
      "birthtime": "2016-03-13T12:52:32.123Z",
      "name": "name7",
      "uid": "uid7",
      "personType": null
    },
    {
      "address": "address4",
      "age": 46,
      "birthday": "2016-03-13",
      "birthtime": "2016-03-13T12:52:32.123Z",
      "name": "name8",
      "uid": "uid8",
      "personType": null
    },
    {
      "address": "address5",
      "age": 47,
      "birthday": "2016-03-13",
      "birthtime": "2016-03-13T12:52:32.123Z",
      "name": "name9",
      "uid": "uid9",
      "personType": null
    }
  ],
  "hiredAt": "Mon, 15 Jun 2009 20:45:30 GMT",
  "joiningDay": "Sunday",
  "salary": 176,
  "workingDays": [
    "Monday"
  ],
  "boss": null,
  "address": "address6",
  "age": 250,
  "birthday": "2016-03-13",
  "birthtime": "2016-03-13T12:52:32.123Z",
  "name": "name0",
  "uid": "uid0",
  "personType": null
}
```

#### Delete Body

##### Class Name

`DeleteBody`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `field` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "name": "name0",
  "field": "field6"
}
```

#### Echo Response

Raw http Request info

##### Class Name

`EchoResponse`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `Hash` | Optional | - |
| `headers` | `Hash` | Optional | - |
| `method` | `String` | Optional | - |
| `path` | `String` | Optional | relativePath |
| `query` | [`Hash`](#query-parameter) | Optional | - |
| `upload_count` | `Integer` | Optional | - |

##### Example (as JSON)

```json
{
  "body": null,
  "headers": null,
  "method": null,
  "path": null,
  "query": null,
  "uploadCount": null
}
```

#### Person

##### Class Name

`Person`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address` | `String` | Required | - |
| `age` | `Long` | Required | - |
| `birthday` | `Date` | Required | - |
| `birthtime` | `DateTime` | Required | - |
| `name` | `String` | Required | - |
| `uid` | `String` | Required | - |
| `person_type` | `String` | Optional | - |

##### Example (as JSON)

```json
{
  "address": "address6",
  "age": 250,
  "birthday": "2016-03-13",
  "birthtime": "2016-03-13T12:52:32.123Z",
  "name": "name0",
  "uid": "uid0",
  "personType": null
}
```

#### Server Response

##### Class Name

`ServerResponse`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `passed` | `Boolean` | Required | - |
| `message` | `String` | Optional | - |
| `input` | `Hash` | Optional | - |

##### Example (as JSON)

```json
{
  "passed": false,
  "Message": null,
  "input": null
}
```

#### Query Parameter

Query parameter key value pair echoed back from the server.

##### Class Name

`QueryParameter`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `key` | `String` | Optional | - |

##### Example (as JSON)

```json
{
  "key": null
}
```

#### Job

##### Class Name

`Job`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `company` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "company": "company0"
}
```

#### Additional Model Parameters

##### Class Name

`AdditionalModelParameters`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `field` | `String` | Required | - |
| `address` | `String` | Required | - |
| `job` | [`Job`](#job) | Required | - |

##### Example (as JSON)

```json
{
  "name": "name0",
  "field": "field6",
  "address": "address6",
  "Job": {
    "company": "company6"
  }
}
```

#### Validate

##### Class Name

`Validate`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `field` | `String` | Required | - |
| `name` | `String` | Required | - |
| `address` | `String` | Optional | - |

##### Example (as JSON)

```json
{
  "field": "field6",
  "name": "name0",
  "address": null
}
```

#### Test Nstring Encoding

##### Class Name

`TestNstringEncoding`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `field` | `String` | Required | - |
| `name` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "field": "field6",
  "name": "name0"
}
```

#### Test Rstring Encoding

##### Class Name

`TestRstringEncoding`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `field` | `String` | Required | - |
| `name` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "field": "field6",
  "name": "name0"
}
```

#### Test R Nstring Encoding

##### Class Name

`TestRNstringEncoding`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `field` | `String` | Required | - |
| `name` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "field": "field6",
  "name": "name0"
}
```

#### Send Rfc 1123 Date Time

##### Class Name

`SendRfc1123DateTime`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`ModelWithOptionalRfc1123DateTime`](#model-with-optional-rfc-1123-date-time) | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": null
}
```

#### Model With Optional Rfc 1123 Date Time

##### Class Name

`ModelWithOptionalRfc1123DateTime`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": null
}
```

#### Send Rfc 339 Date Time

##### Class Name

`SendRfc339DateTime`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`ModelWithOptionalRfc3339DateTime`](#model-with-optional-rfc-3339-date-time) | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": {
    "dateTime": "1994-02-13T14:01:54.9571247Z"
  }
}
```

#### Uuid as Optional

##### Class Name

`UuidAsOptional`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uuid` | `UUID \| String` | Optional | - |

##### Example (as JSON)

```json
{
  "uuid": null
}
```

#### Dynamic as Optional

##### Class Name

`DynamicAsOptional`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dynamic` | `Object` | Optional | - |

##### Example (as JSON)

```json
{
  "dynamic": null
}
```

#### Model With Optional Rfc 3339 Date Time

##### Class Name

`ModelWithOptionalRfc3339DateTime`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": null
}
```

#### Unix Date Time

##### Class Name

`UnixDateTime`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": null
}
```

#### Send Unix Date Time

##### Class Name

`SendUnixDateTime`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | [`UnixDateTime`](#unix-date-time-1) | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": null
}
```

#### Precision as Optional

##### Class Name

`PrecisionAsOptional`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `precision` | `Float` | Optional | - |

##### Example (as JSON)

```json
{
  "precision": null
}
```

#### String as Optional

##### Class Name

`StringAsOptional`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `string` | `String` | Optional | - |

##### Example (as JSON)

```json
{
  "string": null
}
```

#### Long as Optional

##### Class Name

`LongAsOptional`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `long` | `Long` | Optional | - |

##### Example (as JSON)

```json
{
  "long": null
}
```

#### Number as Optional

##### Class Name

`NumberAsOptional`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `Integer` | Optional | - |

##### Example (as JSON)

```json
{
  "number": null
}
```

#### Boolean as Optional

##### Class Name

`BooleanAsOptional`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `boolean` | `Boolean` | Optional | - |

##### Example (as JSON)

```json
{
  "boolean": null
}
```

#### Software Tester

##### Class Name

`SoftwareTester`

##### Inherits From

[`EmployeeComp`](#employee-comp)

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `team` | `String` | Required | - |
| `designation` | `String` | Required | - |
| `role` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601",
  "first name": "Muhammad",
  "last name": "Farhan",
  "id": "123456",
  "team": "Testing",
  "designation": "Tester",
  "role": "Testing"
}
```

#### Developer

##### Class Name

`Developer`

##### Inherits From

[`EmployeeComp`](#employee-comp)

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `team` | `String` | Required | - |
| `designation` | `String` | Required | - |
| `role` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601",
  "first name": "Muhammad",
  "last name": "Farhan",
  "id": "123456",
  "team": "CORE",
  "designation": "Manager",
  "role": "Team Lead"
}
```

#### Gloss Entry

##### Class Name

`GlossEntry`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | - |
| `sort_as` | `String` | Required | - |
| `gloss_term` | `String` | Required | - |
| `acronym` | `String` | Required | - |
| `abbrev` | `String` | Required | - |
| `gloss_def` | [`GlossDef`](#gloss-def) | Required | - |
| `gloss_see` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "ID": "SGML",
  "SortAs": "SGML",
  "GlossTerm": "Standard Generalized Markup Language",
  "Acronym": "SGML",
  "Abbrev": "ISO 8879:1986",
  "GlossDef": {
    "para": "A meta-markup language, used to create markup languages such as DocBook.",
    "GlossSeeAlso": [
      "GML",
      "XML"
    ]
  },
  "GlossSee": "markup"
}
```

#### Mineral

##### Class Name

`Mineral`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `strength` | `String` | Required | - |
| `dose` | `String` | Required | - |
| `route` | `String` | Required | - |
| `sig` | `String` | Required | - |
| `pill_count` | `String` | Required | - |
| `refills` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "name": "potassium chloride ER",
  "strength": "10 mEq Tab",
  "dose": "1 tab",
  "route": "PO",
  "sig": "daily",
  "pillCount": "#90",
  "refills": "Refill 3"
}
```

#### Diuretic

##### Class Name

`Diuretic`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `strength` | `String` | Required | - |
| `dose` | `String` | Required | - |
| `route` | `String` | Required | - |
| `sig` | `String` | Required | - |
| `pill_count` | `String` | Required | - |
| `refills` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "name": "furosemide",
  "strength": "40 mg Tab",
  "dose": "1 tab",
  "route": "PO",
  "sig": "daily",
  "pillCount": "#90",
  "refills": "Refill 3"
}
```

#### Boss Company

##### Class Name

`BossCompany`

##### Inherits From

[`Company`](#company)

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Required | - |
| `last_name` | `String` | Required | - |
| `address_boss` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601",
  "first name": "Adeel",
  "last name": "Ali",
  "address_boss": "nust"
}
```

#### Beta Blocker

##### Class Name

`BetaBlocker`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `strength` | `String` | Required | - |
| `dose` | `String` | Required | - |
| `route` | `String` | Required | - |
| `sig` | `String` | Required | - |
| `pill_count` | `String` | Required | - |
| `refills` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "name": "metoprolol tartrate",
  "strength": "25 mg Tab",
  "dose": "1 tab",
  "route": "PO",
  "sig": "daily",
  "pillCount": "#90",
  "refills": "Refill 3"
}
```

#### Anticoagulant

##### Class Name

`Anticoagulant`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `strength` | `String` | Required | - |
| `dose` | `String` | Required | - |
| `route` | `String` | Required | - |
| `sig` | `String` | Required | - |
| `pill_count` | `String` | Required | - |
| `refills` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "name": "warfarin sodium",
  "strength": "3 mg Tab",
  "dose": "1 tab",
  "route": "PO",
  "sig": "daily",
  "pillCount": "#90",
  "refills": "Refill 3"
}
```

#### Employee Comp

##### Class Name

`EmployeeComp`

##### Inherits From

[`Company`](#company)

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Required | - |
| `last_name` | `String` | Required | - |
| `id` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601",
  "first name": "Muhammad",
  "last name": "Farhan",
  "id": "123456"
}
```

#### Company

##### Class Name

`Company`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `company_name` | `String` | Required | - |
| `address` | `String` | Required | - |
| `cell_number` | `String` | Required | - |
| `company` | `String` | Optional | - |

##### Example (as JSON)

```json
{
  "company name": "APIMatic",
  "address": "nust",
  "cell number": "090078601"
}
```

#### Attributes

##### Class Name

`Attributes`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `exclusive_maximum` | `Boolean` | Required | - |
| `exclusive_minimum` | `Boolean` | Required | - |
| `id` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "exclusiveMaximum": false,
  "exclusiveMinimum": false,
  "id": "5a9fcb01caacc310dc6bab51"
}
```

#### Response With Enum

##### Class Name

`ResponseWithEnum`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `param_format` | [`ParamFormat`](#param-format) | Required | - |
| `optional` | `Boolean` | Required | - |
| `type` | [`Type`](#type) | Required | - |
| `constant` | `Boolean` | Required | - |
| `is_array` | `Boolean` | Required | - |
| `is_stream` | `Boolean` | Required | - |
| `is_attribute` | `Boolean` | Required | - |
| `is_map` | `Boolean` | Required | - |
| `attributes` | [`Attributes`](#attributes) | Required | - |
| `nullable` | `Boolean` | Required | - |
| `id` | `String` | Required | - |
| `name` | `String` | Required | - |
| `description` | `String` | Required | - |

##### Example (as JSON)

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

#### Gloss Def

##### Class Name

`GlossDef`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `para` | `String` | Required | - |
| `gloss_see_also` | `Array<String>` | Required | - |

##### Example (as JSON)

```json
{
  "para": "A meta-markup language, used to create markup languages such as DocBook.",
  "GlossSeeAlso": [
    "GML",
    "XML"
  ]
}
```

#### Gloss List

##### Class Name

`GlossList`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `gloss_entry` | [`GlossEntry`](#gloss-entry) | Required | - |

##### Example (as JSON)

```json
{
  "GlossEntry": {
    "ID": "SGML",
    "SortAs": "SGML",
    "GlossTerm": "Standard Generalized Markup Language",
    "Acronym": "SGML",
    "Abbrev": "ISO 8879:1986",
    "GlossDef": {
      "para": "A meta-markup language, used to create markup languages such as DocBook.",
      "GlossSeeAlso": [
        "GML",
        "XML"
      ]
    },
    "GlossSee": "markup"
  }
}
```

#### Gloss Div

##### Class Name

`GlossDiv`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `title` | `String` | Required | - |
| `gloss_list` | [`GlossList`](#gloss-list) | Required | - |

##### Example (as JSON)

```json
{
  "title": "S",
  "GlossList": {
    "GlossEntry": {
      "ID": "SGML",
      "SortAs": "SGML",
      "GlossTerm": "Standard Generalized Markup Language",
      "Acronym": "SGML",
      "Abbrev": "ISO 8879:1986",
      "GlossDef": {
        "para": "A meta-markup language, used to create markup languages such as DocBook.",
        "GlossSeeAlso": [
          "GML",
          "XML"
        ]
      },
      "GlossSee": "markup"
    }
  }
}
```

#### Glossary

##### Class Name

`Glossary`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `title` | `String` | Required | - |
| `gloss_div` | [`GlossDiv`](#gloss-div) | Required | - |

##### Example (as JSON)

```json
{
  "title": "example glossary",
  "GlossDiv": {
    "title": "S",
    "GlossList": {
      "GlossEntry": {
        "ID": "SGML",
        "SortAs": "SGML",
        "GlossTerm": "Standard Generalized Markup Language",
        "Acronym": "SGML",
        "Abbrev": "ISO 8879:1986",
        "GlossDef": {
          "para": "A meta-markup language, used to create markup languages such as DocBook.",
          "GlossSeeAlso": [
            "GML",
            "XML"
          ]
        },
        "GlossSee": "markup"
      }
    }
  }
}
```

#### Imaging

##### Class Name

`Imaging`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `time` | `String` | Required | - |
| `location` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "name": "Chest X-Ray",
  "time": "Today",
  "location": "Main Hospital Radiology"
}
```

#### Lab

##### Class Name

`Lab`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `time` | `String` | Required | - |
| `location` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "name": "Arterial Blood Gas",
  "time": "Today",
  "location": "Main Hospital Lab"
}
```

#### Antianginal

##### Class Name

`Antianginal`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `strength` | `String` | Required | - |
| `dose` | `String` | Required | - |
| `route` | `String` | Required | - |
| `sig` | `String` | Required | - |
| `pill_count` | `String` | Required | - |
| `refills` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "name": "nitroglycerin",
  "strength": "0.4 mg Sublingual Tab",
  "dose": "1 tab",
  "route": "SL",
  "sig": "q15min PRN",
  "pillCount": "#30",
  "refills": "Refill 1"
}
```

#### Ace Inhibitor

##### Class Name

`AceInhibitor`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `strength` | `String` | Required | - |
| `dose` | `String` | Required | - |
| `route` | `String` | Required | - |
| `sig` | `String` | Required | - |
| `pill_count` | `String` | Required | - |
| `refills` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "name": "lisinopril",
  "strength": "10 mg Tab",
  "dose": "1 tab",
  "route": "PO",
  "sig": "daily",
  "pillCount": "#90",
  "refills": "Refill 3"
}
```

#### Medication

##### Class Name

`Medication`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ace_inhibitors` | [`Array<AceInhibitor>`](#ace-inhibitor) | Required | - |
| `antianginal` | [`Array<Antianginal>`](#antianginal) | Required | - |
| `anticoagulants` | [`Array<Anticoagulant>`](#anticoagulant) | Required | - |
| `beta_blocker` | [`Array<BetaBlocker>`](#beta-blocker) | Required | - |
| `diuretic` | [`Array<Diuretic>`](#diuretic) | Required | - |
| `mineral` | [`Array<Mineral>`](#mineral) | Required | - |

##### Example (as JSON)

```json
{
  "aceInhibitors": [
    {
      "name": "lisinopril",
      "strength": "10 mg Tab",
      "dose": "1 tab",
      "route": "PO",
      "sig": "daily",
      "pillCount": "#90",
      "refills": "Refill 3"
    }
  ],
  "antianginal": [
    {
      "name": "nitroglycerin",
      "strength": "0.4 mg Sublingual Tab",
      "dose": "1 tab",
      "route": "SL",
      "sig": "q15min PRN",
      "pillCount": "#30",
      "refills": "Refill 1"
    }
  ],
  "anticoagulants": [
    {
      "name": "warfarin sodium",
      "strength": "3 mg Tab",
      "dose": "1 tab",
      "route": "PO",
      "sig": "daily",
      "pillCount": "#90",
      "refills": "Refill 3"
    }
  ],
  "betaBlocker": [
    {
      "name": "metoprolol tartrate",
      "strength": "25 mg Tab",
      "dose": "1 tab",
      "route": "PO",
      "sig": "daily",
      "pillCount": "#90",
      "refills": "Refill 3"
    }
  ],
  "diuretic": [
    {
      "name": "furosemide",
      "strength": "40 mg Tab",
      "dose": "1 tab",
      "route": "PO",
      "sig": "daily",
      "pillCount": "#90",
      "refills": "Refill 3"
    }
  ],
  "mineral": [
    {
      "name": "potassium chloride ER",
      "strength": "10 mEq Tab",
      "dose": "1 tab",
      "route": "PO",
      "sig": "daily",
      "pillCount": "#90",
      "refills": "Refill 3"
    }
  ]
}
```

#### Complex 1

##### Class Name

`Complex1`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `medications` | [`Array<Medication>`](#medication) | Required | - |
| `labs` | [`Array<Lab>`](#lab) | Required | - |
| `imaging` | [`Array<Imaging>`](#imaging) | Required | - |

##### Example (as JSON)

```json
{
  "medications": [
    {
      "aceInhibitors": [
        {
          "name": "lisinopril",
          "strength": "10 mg Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ],
      "antianginal": [
        {
          "name": "nitroglycerin",
          "strength": "0.4 mg Sublingual Tab",
          "dose": "1 tab",
          "route": "SL",
          "sig": "q15min PRN",
          "pillCount": "#30",
          "refills": "Refill 1"
        }
      ],
      "anticoagulants": [
        {
          "name": "warfarin sodium",
          "strength": "3 mg Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ],
      "betaBlocker": [
        {
          "name": "metoprolol tartrate",
          "strength": "25 mg Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ],
      "diuretic": [
        {
          "name": "furosemide",
          "strength": "40 mg Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ],
      "mineral": [
        {
          "name": "potassium chloride ER",
          "strength": "10 mEq Tab",
          "dose": "1 tab",
          "route": "PO",
          "sig": "daily",
          "pillCount": "#90",
          "refills": "Refill 3"
        }
      ]
    }
  ],
  "labs": [
    {
      "name": "Arterial Blood Gas",
      "time": "Today",
      "location": "Main Hospital Lab"
    },
    {
      "name": "BMP",
      "time": "Today",
      "location": "Primary Care Clinic"
    },
    {
      "name": "BNP",
      "time": "3 Weeks",
      "location": "Primary Care Clinic"
    },
    {
      "name": "BUN",
      "time": "1 Year",
      "location": "Primary Care Clinic"
    },
    {
      "name": "Cardiac Enzymes",
      "time": "Today",
      "location": "Primary Care Clinic"
    },
    {
      "name": "CBC",
      "time": "1 Year",
      "location": "Primary Care Clinic"
    },
    {
      "name": "Creatinine",
      "time": "1 Year",
      "location": "Main Hospital Lab"
    },
    {
      "name": "Electrolyte Panel",
      "time": "1 Year",
      "location": "Primary Care Clinic"
    },
    {
      "name": "Glucose",
      "time": "1 Year",
      "location": "Main Hospital Lab"
    },
    {
      "name": "PT/INR",
      "time": "3 Weeks",
      "location": "Primary Care Clinic"
    },
    {
      "name": "PTT",
      "time": "3 Weeks",
      "location": "Coumadin Clinic"
    },
    {
      "name": "TSH",
      "time": "1 Year",
      "location": "Primary Care Clinic"
    }
  ],
  "imaging": [
    {
      "name": "Chest X-Ray",
      "time": "Today",
      "location": "Main Hospital Radiology"
    },
    {
      "name": "Chest X-Ray",
      "time": "Today",
      "location": "Main Hospital Radiology"
    },
    {
      "name": "Chest X-Ray",
      "time": "Today",
      "location": "Main Hospital Radiology"
    }
  ]
}
```

#### Complex 2

##### Class Name

`Complex2`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `glossary` | [`Glossary`](#glossary) | Required | - |

##### Example (as JSON)

```json
{
  "glossary": {
    "title": "example glossary",
    "GlossDiv": {
      "title": "S",
      "GlossList": {
        "GlossEntry": {
          "ID": "SGML",
          "SortAs": "SGML",
          "GlossTerm": "Standard Generalized Markup Language",
          "Acronym": "SGML",
          "Abbrev": "ISO 8879:1986",
          "GlossDef": {
            "para": "A meta-markup language, used to create markup languages such as DocBook.",
            "GlossSeeAlso": [
              "GML",
              "XML"
            ]
          },
          "GlossSee": "markup"
        }
      }
    }
  }
}
```

#### Advanced

##### Class Name

`Advanced`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `tags` | `Array<String>` | Required | - |
| `attachments` | `Integer` | Required | - |
| `required_signatures` | `Integer` | Required | - |
| `get_social_security_number` | `Boolean` | Required | - |
| `time_to_live` | [`TimeToLive`](#time-to-live) | Required | - |

##### Example (as JSON)

```json
{
  "tags": [
    "develop",
    "fun_with_documents"
  ],
  "attachments": 0,
  "requiredSignatures": 0,
  "getSocialSecurityNumber": false,
  "timeToLive": {
    "deadline": "2018-06-29T14:57:25Z",
    "deleteAfterHours": 1
  }
}
```

#### Data to Sign

##### Class Name

`DataToSign`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `file_name` | `String` | Required | - |
| `convert_to_pdf` | `Boolean` | Required | - |

##### Example (as JSON)

```json
{
  "fileName": "sample.txt",
  "convertToPDF": false
}
```

#### Contact Details

##### Class Name

`ContactDetails`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `email` | `String` | Required | - |
| `url` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "email": "test@test.com",
  "url": "https://idfy.io"
}
```

#### Styling

##### Class Name

`Styling`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `color_theme` | `String` | Required | - |
| `spinner` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "colorTheme": "Pink",
  "spinner": "Cubes"
}
```

#### Dialogs

##### Class Name

`Dialogs`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `before` | [`Before`](#before) | Required | - |

##### Example (as JSON)

```json
{
  "before": {
    "useCheckBox": false,
    "title": "Info",
    "message": "Please read the contract on the next pages carefully. Pay some extra attention to paragraph 5."
  }
}
```

#### Signature Type

##### Class Name

`SignatureType`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mechanism` | `String` | Required | - |
| `on_eaccept_use_hand_written_signature` | `Boolean` | Required | - |

##### Example (as JSON)

```json
{
  "mechanism": "pkisignature",
  "onEacceptUseHandWrittenSignature": false
}
```

#### Redirect Settings

##### Class Name

`RedirectSettings`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `redirect_mode` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "redirectMode": "donot_redirect"
}
```

#### Time to Live

##### Class Name

`TimeToLive`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `deadline` | `String` | Required | - |
| `delete_after_hours` | `Integer` | Required | - |

##### Example (as JSON)

```json
{
  "deadline": "2018-06-29T14:57:25Z",
  "deleteAfterHours": 1
}
```

#### Status

##### Class Name

`Status`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `document_status` | `String` | Required | - |
| `completed_packages` | `Array<String>` | Required | - |
| `attachment_packages` | `Object` | Required | - |

##### Example (as JSON)

```json
{
  "documentStatus": "unsigned",
  "completedPackages": [],
  "attachmentPackages": {}
}
```

#### Before

##### Class Name

`Before`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `use_check_box` | `Boolean` | Required | - |
| `title` | `String` | Required | - |
| `message` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "useCheckBox": false,
  "title": "Info",
  "message": "Please read the contract on the next pages carefully. Pay some extra attention to paragraph 5."
}
```

#### Ui

##### Class Name

`Ui`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dialogs` | [`Dialogs`](#dialogs) | Required | - |
| `language` | [`LanguageEnum`](#language-enum) | Required | - |
| `styling` | [`Styling`](#styling) | Required | - |

##### Example (as JSON)

```json
{
  "dialogs": {
    "before": {
      "useCheckBox": false,
      "title": "Info",
      "message": "Please read the contract on the next pages carefully. Pay some extra attention to paragraph 5."
    }
  },
  "language": "EN",
  "styling": {
    "colorTheme": "Pink",
    "spinner": "Cubes"
  }
}
```

#### Complex 3

##### Class Name

`Complex3`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `document_id` | `String` | Required | - |
| `signers` | [`Array<Signer>`](#signer) | Required | - |
| `status` | [`Status`](#status) | Required | - |
| `title` | `String` | Required | - |
| `description` | `String` | Required | - |
| `external_id` | `String` | Required | - |
| `data_to_sign` | [`DataToSign`](#data-to-sign) | Required | - |
| `contact_details` | [`ContactDetails`](#contact-details) | Required | - |
| `advanced` | [`Advanced`](#advanced) | Required | - |

##### Example (as JSON)

```json
{
  "documentId": "099cceda-38a8-4b01-87b9-a8f2007675d6",
  "signers": [
    {
      "id": "1bef97d1-0704-4eb2-a490-a8f2007675db",
      "url": "https://sign-test.idfy.io/start?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzM4NCJ9.eyJrdmVyc2lvbiI6IjdmNzhjNzNkMmQ1MjQzZWRiYjdiNDI0MmI2MDE1MWU4IiwiZG9jaWQiOiIwOTljY2VkYS0zOGE4LTRiMDEtODdiOS1hOGYyMDA3Njc1ZDYiLCJhaWQiOiJjMGNlMTQ2OC1hYzk0LTRiMzQtODc2ZS1hODg1MDBjMmI5YTEiLCJsZyI6ImVuIiwiZXJyIjpudWxsLCJpZnIiOmZhbHNlLCJ3Ym1zZyI6ZmFsc2UsInNmaWQiOiIxYmVmOTdkMS0wNzA0LTRlYjItYTQ5MC1hOGYyMDA3Njc1ZGIiLCJ1cmxleHAiOm51bGwsImF0aCI6bnVsbCwiZHQiOiJUZXN0IGRvY3VtZW50IiwidmYiOmZhbHNlLCJhbiI6IklkZnkgU0RLIGRlbW8iLCJ0aCI6IlBpbmsiLCJzcCI6IkN1YmVzIiwiZG9tIjpudWxsLCJyZGlyIjpmYWxzZSwidXQiOiJ3ZWIiLCJ1dHYiOm51bGwsInNtIjoidGVzdEB0ZXN0LmNvbSJ9.Dyy2RSeR6dmU8qxOEi-2gEX3Gg7wry6JhkZIWOuADDdu5jJWidQLcxfJn_qAHNpb",
      "links": [],
      "externalSignerId": "uoiahsd321982983jhrmnec2wsadm32",
      "redirectSettings": {
        "redirectMode": "donot_redirect"
      },
      "signatureType": {
        "mechanism": "pkisignature",
        "onEacceptUseHandWrittenSignature": false
      },
      "ui": {
        "dialogs": {
          "before": {
            "useCheckBox": false,
            "title": "Info",
            "message": "Please read the contract on the next pages carefully. Pay some extra attention to paragraph 5."
          }
        },
        "language": "EN",
        "styling": {
          "colorTheme": "Pink",
          "spinner": "Cubes"
        }
      },
      "tags": [],
      "order": 0,
      "required": false
    }
  ],
  "status": {
    "documentStatus": "unsigned",
    "completedPackages": [],
    "attachmentPackages": {}
  },
  "title": "Test document",
  "description": "This is an important document",
  "externalId": "ae7b9ca7-3839-4e0d-a070-9f14bffbbf55",
  "dataToSign": {
    "fileName": "sample.txt",
    "convertToPDF": false
  },
  "contactDetails": {
    "email": "test@test.com",
    "url": "https://idfy.io"
  },
  "advanced": {
    "tags": [
      "develop",
      "fun_with_documents"
    ],
    "attachments": 0,
    "requiredSignatures": 0,
    "getSocialSecurityNumber": false,
    "timeToLive": {
      "deadline": "2018-06-29T14:57:25Z",
      "deleteAfterHours": 1
    }
  }
}
```

#### Signer

##### Class Name

`Signer`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | - |
| `url` | `String` | Required | - |
| `links` | `Array<String>` | Required | - |
| `external_signer_id` | `String` | Required | - |
| `redirect_settings` | [`RedirectSettings`](#redirect-settings) | Required | - |
| `signature_type` | [`SignatureType`](#signature-type) | Required | - |
| `ui` | [`Ui`](#ui) | Required | - |
| `tags` | `Array<String>` | Required | - |
| `order` | `Integer` | Required | - |
| `required` | `Boolean` | Required | - |

##### Example (as JSON)

```json
{
  "id": "1bef97d1-0704-4eb2-a490-a8f2007675db",
  "url": "https://sign-test.idfy.io/start?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzM4NCJ9.eyJrdmVyc2lvbiI6IjdmNzhjNzNkMmQ1MjQzZWRiYjdiNDI0MmI2MDE1MWU4IiwiZG9jaWQiOiIwOTljY2VkYS0zOGE4LTRiMDEtODdiOS1hOGYyMDA3Njc1ZDYiLCJhaWQiOiJjMGNlMTQ2OC1hYzk0LTRiMzQtODc2ZS1hODg1MDBjMmI5YTEiLCJsZyI6ImVuIiwiZXJyIjpudWxsLCJpZnIiOmZhbHNlLCJ3Ym1zZyI6ZmFsc2UsInNmaWQiOiIxYmVmOTdkMS0wNzA0LTRlYjItYTQ5MC1hOGYyMDA3Njc1ZGIiLCJ1cmxleHAiOm51bGwsImF0aCI6bnVsbCwiZHQiOiJUZXN0IGRvY3VtZW50IiwidmYiOmZhbHNlLCJhbiI6IklkZnkgU0RLIGRlbW8iLCJ0aCI6IlBpbmsiLCJzcCI6IkN1YmVzIiwiZG9tIjpudWxsLCJyZGlyIjpmYWxzZSwidXQiOiJ3ZWIiLCJ1dHYiOm51bGwsInNtIjoidGVzdEB0ZXN0LmNvbSJ9.Dyy2RSeR6dmU8qxOEi-2gEX3Gg7wry6JhkZIWOuADDdu5jJWidQLcxfJn_qAHNpb",
  "links": [],
  "externalSignerId": "uoiahsd321982983jhrmnec2wsadm32",
  "redirectSettings": {
    "redirectMode": "donot_redirect"
  },
  "signatureType": {
    "mechanism": "pkisignature",
    "onEacceptUseHandWrittenSignature": false
  },
  "ui": {
    "dialogs": {
      "before": {
        "useCheckBox": false,
        "title": "Info",
        "message": "Please read the contract on the next pages carefully. Pay some extra attention to paragraph 5."
      }
    },
    "language": "EN",
    "styling": {
      "colorTheme": "Pink",
      "spinner": "Cubes"
    }
  },
  "tags": [],
  "order": 0,
  "required": false
}
```

#### Complex 5

##### Class Name

`Complex5`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `response_data` | [`ResponseData`](#response-data) | Required | - |
| `response_details` | `String` | Optional | - |
| `response_status` | `Integer` | Required | - |

##### Example (as JSON)

```json
{
  "responseData": {
    "feed": {
      "feedUrl": "http://ramrojob.com/feed",
      "title": "Ramro Job",
      "link": "http://ramrojob.com",
      "author": "",
      "description": "...your pathway to success",
      "type": "rss20",
      "entries": [
        {
          "title": "Monitoring and Evaluation Specialist Wanted at GRM International",
          "link": "http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-specialist-wanted-at-grm-international.html",
          "author": "Bandana Aryal",
          "publishedDate": "Sun, 12 May 2013 01:10:24 -0700",
          "contentSnippet": "Key Responsibilities Under direction of the Team Leader, responsible for the design and roll out of programme M&#38;E plan, ...",
          "content": "<p><strong>Key Responsibilities</strong></p>\n<ul>\n<li>Under direction of the Team Leader, responsible for the design and roll out of programme M&amp;E plan, including design of the logframe and key performance indicators.</li>\n<li>Track programme progress against indicators and ensure early identification of any areas requiring remedial action.</li>\n<li>Carry out site visits and provide M&amp;E support and training for local partners.</li>\n<li>Harmonise programme monitoring indicators and systems with national M&amp;E systems.</li>\n<li>Promote use of data to inform decision making and link evidence-based approaches to achievement of results.</li>\n<li>Support operations research and specialised studies, such as client satisfaction, cost-effectiveness, and impact evaluation.</li>\n<li>Solicit and manage local data collection and research teams, as needed.</li>\n<li>Contribute to the preparation of regular progress reports, technical deliverables, presentations, and annual work plans.</li>\n</ul>\n<p><strong>Qualifications</strong></p>\n<ul>\n<li>Seven or more years of experience monitoring and evaluating reproductive health and family planning programmes, including promoting use of data for decision-making.</li>\n<li>Strong technical grasp of relevant health issues: sexual and reproductive health; family planning; maternal, new-born, and child health; HIV and AIDS; and health equity.</li>\n<li>Understanding of health market dynamics and the health system in Nepal.</li>\n<li>Demonstrated experience working with government, private sector, and nongovernmental health sector partners in Nepal, at national and decentralised levels.</li>\n<li>Experience supporting DFID, European Union, USAID, World Bank, or other donor-funded or government health programmes.</li>\n<li>Strong quantitative and qualitative research and analysis skills.</li>\n<li>Demonstrated experience with computerised management information systems, databases, MS Office, and other relevant skills.</li>\n<li>Ability to graphically present data in ways that engage and influence target audiences.</li>\n<li>Knowledge of in-country and international guidelines pertaining to research ethics.</li>\n<li>Strong personal qualities, including integrity, commitment to excellence, equality, openness, inclusiveness, and collegiality.</li>\n<li>Excellent written and spoken English required, local languages are a distinct advantage.</li>\n<li>Advanced degree/s in relevant discipline preferred.</li>\n<li>Nepali nationals strongly encouraged to apply.</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-specialist-wanted-at-grm-international.html\">Monitoring and Evaluation Specialist Wanted at GRM International</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
          "categories": [
            "Uncategorized"
          ]
        },
        {
          "title": "Director of Finance and Admin Wanted at Abt Associates",
          "link": "http://ramrojob.com/job/2013/05/12/director-of-finance-and-admin-wanted-at-abt-associates.html",
          "author": "Bandana Aryal",
          "publishedDate": "Sun, 12 May 2013 01:02:28 -0700",
          "contentSnippet": "Job Responsibilities: Abt Associates seeks a Director of Finance and Administration for an upcoming DFID-funded family planning ...",
          "content": "<p><strong>Job Responsibilities:</strong></p>\n<p>Abt Associates seeks a Director of Finance and Administration for an upcoming DFID-funded family planning program in Nepal. The initiative will work with the Ministry of Health and Population to increase use of modern high-quality family planning methods by the most vulnerable and excluded women by supply innovative and high quality family planning services. The program will also work with the Ministry of Health and Population to ensure better choices and availabilites of reproductive health commodities.</p>\n<p>The Director of Finance and Administration will be responsible for the management of the contract, procurement, subcontracting, financial management and reporting, and general administrative support of the program. S/he will develop and track budgets, manage payroll and vendor relations, and control all financial transactions and reporting, both for the client and for Abt Associates headquarters.</p>\n<p>Specific responsibilities will include:</p>\n<ul>\n<li>Ensure compliance with terms and references in the contract;</li>\n<li>Develop and implement financial and administrative policies and procedures that meet project requirements and donor regulations;</li>\n<li>Create and maintain financial reporting and tracking systems, and provide financial performance updates on project activities;</li>\n<li>Prepare budgets and revenue plans for project programming and corporate reporting;</li>\n<li>Oversee financial and HR administration of project (purchase requisitions, consulting agreements, vendor invoices, client invoices, payroll etc.);</li>\n<li>Manage vendors and subcontractors in compliance with Abt and DfID policies and regulations;</li>\n<li>Supervise all financial and administrative staff;</li>\n<li>Provide training to field staff on project procedures as well as building skill-levels of project staff in the area of finance, administration, and project management.</li>\n</ul>\n<p><strong>Skills Prerequisites:</strong></p>\n<ul>\n<li>Bachelor�s Degree (minimum) or master�s degree (preferred) in Business, Finance, Accounting or other relevant field;</li>\n<li>10 years of experience in administration, project management and/or financial management;</li>\n<li>5 years of experience working with international donors in a development setting;</li>\n<li>Experience with DfID contracts desirable;</li>\n<li>Strong analytical and computer skills, with emphasis on budgeting and financial analysis;</li>\n<li>Excellent inter-personal, communication and organizational skills;</li>\n<li>Capabilities in Nepali or other South Asian languages are desirable.</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/director-of-finance-and-admin-wanted-at-abt-associates.html\">Director of Finance and Admin Wanted at Abt Associates</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
          "categories": [
            "Uncategorized"
          ]
        },
        {
          "title": "Technical Director Wanted at Family Planning Nepal",
          "link": "http://ramrojob.com/job/2013/05/12/technical-director-wanted-at-family-planning-nepal.html",
          "author": "Bandana Aryal",
          "publishedDate": "Sun, 12 May 2013 00:57:03 -0700",
          "contentSnippet": "Skills Prerequisites: Masters Degree (minimum) in Public Health, Business Administration or related relevant discipline Ten ...",
          "content": "<p><strong>Skills Prerequisites:</strong></p>\n<ul>\n<li>Masters Degree (minimum) in Public Health, Business Administration or related relevant discipline</li>\n<li>Ten years (10) of relevant professional experience, including sales or marketing, and strong business acumen in areas of business process and analysis would be highly valued</li>\n<li>Eight (8) years experience working in health sector projects or initiatives involving multiple stakeholder groups, including NGOs and the private health sector</li>\n<li>Successful prior experience in social marketing or franchising</li>\n<li>Proven track record of building and sustaining effective partnerships, advocating effectively and communicating to various constituencies</li>\n<li>Ability to coordinate in a dynamic environment</li>\n<li>Substantial experience in building capacity in the non-state/private sector</li>\n<li>Ability to independently plan and execute complex tasks while addressing daily management details and remaining organized and focused on long-term deadlines and strategies</li>\n<li>Solid professional reputation and strong, demonstrated interpersonal skills</li>\n<li>Professional working experience in Nepal desirable</li>\n<li>Fluency in Nepali desirable</li>\n<li>Excellent written and oral presentation skills in English</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/technical-director-wanted-at-family-planning-nepal.html\">Technical Director Wanted at Family Planning Nepal</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
          "categories": [
            "Uncategorized"
          ]
        },
        {
          "title": "Monitoring and Evaluation Analyst Wanted at UN Women",
          "link": "http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-analyst-wanted-at-un-women.html",
          "author": "Bandana Aryal",
          "publishedDate": "Sun, 12 May 2013 00:46:37 -0700",
          "contentSnippet": "Core Competencies Knowledge of current practices in the area of monitoring and evaluation, knowledge management Promotes the ...",
          "content": "<p><b>Core Competencies</b></p>\n<ul>\n<li>Knowledge of current practices in the area of monitoring and evaluation, knowledge management</li>\n<li>Promotes the vision, mission, and strategic goals of UN Women;</li>\n<li>Displays cultural, gender, religion, race, nationality and age sensitivity and adaptability</li>\n<li>Fostering innovation and empowerment</li>\n<li>Working in teams at all levels</li>\n<li>Communicating information and ideas/knowledge sharing</li>\n<li>Analytical and strategic thinking/results orientation/commitment to Excellence</li>\n</ul>\n<p><span style=\"text-decoration:underline\"><strong>Qualifications and Experience:</strong></span></p>\n<ul>\n<li>Master�s Degree in Economics, Management, Rural Development, Social Sciences, or related field. Additional certification in statistics, MIS management and Monitoring and Evaluation will be considered as an asset.</li>\n<li>Two years of relevant professional experience in the field of rights based monitoring and evaluation;</li>\n<li>Experience in the management of gender equality and women�s empowerment programmes or analytic work in gender and development, gender analysis and/or human rights;</li>\n<li> Good knowledge of rights-based approach and result-based management.</li>\n<li> Experience related to UN Women�s mandate and activities would be an added advantage;</li>\n<li> Sound knowledge of international standards on human rights, women�s rights and related instruments;</li>\n<li>A proven ability to liaise with a myriad of stakeholders and partners, including government, civil society, international organizations and grassroots organizations</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-analyst-wanted-at-un-women.html\">Monitoring and Evaluation Analyst Wanted at UN Women</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
          "categories": [
            "The Himalayan Times"
          ]
        }
      ]
    }
  },
  "responseStatus": 200
}
```

#### Response Data

##### Class Name

`ResponseData`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `feed` | [`Feed`](#feed) | Required | - |

##### Example (as JSON)

```json
{
  "feed": {
    "feedUrl": "http://ramrojob.com/feed",
    "title": "Ramro Job",
    "link": "http://ramrojob.com",
    "author": "",
    "description": "...your pathway to success",
    "type": "rss20",
    "entries": [
      {
        "title": "Monitoring and Evaluation Specialist Wanted at GRM International",
        "link": "http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-specialist-wanted-at-grm-international.html",
        "author": "Bandana Aryal",
        "publishedDate": "Sun, 12 May 2013 01:10:24 -0700",
        "contentSnippet": "Key Responsibilities Under direction of the Team Leader, responsible for the design and roll out of programme M&#38;E plan, ...",
        "content": "<p><strong>Key Responsibilities</strong></p>\n<ul>\n<li>Under direction of the Team Leader, responsible for the design and roll out of programme M&amp;E plan, including design of the logframe and key performance indicators.</li>\n<li>Track programme progress against indicators and ensure early identification of any areas requiring remedial action.</li>\n<li>Carry out site visits and provide M&amp;E support and training for local partners.</li>\n<li>Harmonise programme monitoring indicators and systems with national M&amp;E systems.</li>\n<li>Promote use of data to inform decision making and link evidence-based approaches to achievement of results.</li>\n<li>Support operations research and specialised studies, such as client satisfaction, cost-effectiveness, and impact evaluation.</li>\n<li>Solicit and manage local data collection and research teams, as needed.</li>\n<li>Contribute to the preparation of regular progress reports, technical deliverables, presentations, and annual work plans.</li>\n</ul>\n<p><strong>Qualifications</strong></p>\n<ul>\n<li>Seven or more years of experience monitoring and evaluating reproductive health and family planning programmes, including promoting use of data for decision-making.</li>\n<li>Strong technical grasp of relevant health issues: sexual and reproductive health; family planning; maternal, new-born, and child health; HIV and AIDS; and health equity.</li>\n<li>Understanding of health market dynamics and the health system in Nepal.</li>\n<li>Demonstrated experience working with government, private sector, and nongovernmental health sector partners in Nepal, at national and decentralised levels.</li>\n<li>Experience supporting DFID, European Union, USAID, World Bank, or other donor-funded or government health programmes.</li>\n<li>Strong quantitative and qualitative research and analysis skills.</li>\n<li>Demonstrated experience with computerised management information systems, databases, MS Office, and other relevant skills.</li>\n<li>Ability to graphically present data in ways that engage and influence target audiences.</li>\n<li>Knowledge of in-country and international guidelines pertaining to research ethics.</li>\n<li>Strong personal qualities, including integrity, commitment to excellence, equality, openness, inclusiveness, and collegiality.</li>\n<li>Excellent written and spoken English required, local languages are a distinct advantage.</li>\n<li>Advanced degree/s in relevant discipline preferred.</li>\n<li>Nepali nationals strongly encouraged to apply.</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-specialist-wanted-at-grm-international.html\">Monitoring and Evaluation Specialist Wanted at GRM International</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
        "categories": [
          "Uncategorized"
        ]
      },
      {
        "title": "Director of Finance and Admin Wanted at Abt Associates",
        "link": "http://ramrojob.com/job/2013/05/12/director-of-finance-and-admin-wanted-at-abt-associates.html",
        "author": "Bandana Aryal",
        "publishedDate": "Sun, 12 May 2013 01:02:28 -0700",
        "contentSnippet": "Job Responsibilities: Abt Associates seeks a Director of Finance and Administration for an upcoming DFID-funded family planning ...",
        "content": "<p><strong>Job Responsibilities:</strong></p>\n<p>Abt Associates seeks a Director of Finance and Administration for an upcoming DFID-funded family planning program in Nepal. The initiative will work with the Ministry of Health and Population to increase use of modern high-quality family planning methods by the most vulnerable and excluded women by supply innovative and high quality family planning services. The program will also work with the Ministry of Health and Population to ensure better choices and availabilites of reproductive health commodities.</p>\n<p>The Director of Finance and Administration will be responsible for the management of the contract, procurement, subcontracting, financial management and reporting, and general administrative support of the program. S/he will develop and track budgets, manage payroll and vendor relations, and control all financial transactions and reporting, both for the client and for Abt Associates headquarters.</p>\n<p>Specific responsibilities will include:</p>\n<ul>\n<li>Ensure compliance with terms and references in the contract;</li>\n<li>Develop and implement financial and administrative policies and procedures that meet project requirements and donor regulations;</li>\n<li>Create and maintain financial reporting and tracking systems, and provide financial performance updates on project activities;</li>\n<li>Prepare budgets and revenue plans for project programming and corporate reporting;</li>\n<li>Oversee financial and HR administration of project (purchase requisitions, consulting agreements, vendor invoices, client invoices, payroll etc.);</li>\n<li>Manage vendors and subcontractors in compliance with Abt and DfID policies and regulations;</li>\n<li>Supervise all financial and administrative staff;</li>\n<li>Provide training to field staff on project procedures as well as building skill-levels of project staff in the area of finance, administration, and project management.</li>\n</ul>\n<p><strong>Skills Prerequisites:</strong></p>\n<ul>\n<li>Bachelor�s Degree (minimum) or master�s degree (preferred) in Business, Finance, Accounting or other relevant field;</li>\n<li>10 years of experience in administration, project management and/or financial management;</li>\n<li>5 years of experience working with international donors in a development setting;</li>\n<li>Experience with DfID contracts desirable;</li>\n<li>Strong analytical and computer skills, with emphasis on budgeting and financial analysis;</li>\n<li>Excellent inter-personal, communication and organizational skills;</li>\n<li>Capabilities in Nepali or other South Asian languages are desirable.</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/director-of-finance-and-admin-wanted-at-abt-associates.html\">Director of Finance and Admin Wanted at Abt Associates</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
        "categories": [
          "Uncategorized"
        ]
      },
      {
        "title": "Technical Director Wanted at Family Planning Nepal",
        "link": "http://ramrojob.com/job/2013/05/12/technical-director-wanted-at-family-planning-nepal.html",
        "author": "Bandana Aryal",
        "publishedDate": "Sun, 12 May 2013 00:57:03 -0700",
        "contentSnippet": "Skills Prerequisites: Masters Degree (minimum) in Public Health, Business Administration or related relevant discipline Ten ...",
        "content": "<p><strong>Skills Prerequisites:</strong></p>\n<ul>\n<li>Masters Degree (minimum) in Public Health, Business Administration or related relevant discipline</li>\n<li>Ten years (10) of relevant professional experience, including sales or marketing, and strong business acumen in areas of business process and analysis would be highly valued</li>\n<li>Eight (8) years experience working in health sector projects or initiatives involving multiple stakeholder groups, including NGOs and the private health sector</li>\n<li>Successful prior experience in social marketing or franchising</li>\n<li>Proven track record of building and sustaining effective partnerships, advocating effectively and communicating to various constituencies</li>\n<li>Ability to coordinate in a dynamic environment</li>\n<li>Substantial experience in building capacity in the non-state/private sector</li>\n<li>Ability to independently plan and execute complex tasks while addressing daily management details and remaining organized and focused on long-term deadlines and strategies</li>\n<li>Solid professional reputation and strong, demonstrated interpersonal skills</li>\n<li>Professional working experience in Nepal desirable</li>\n<li>Fluency in Nepali desirable</li>\n<li>Excellent written and oral presentation skills in English</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/technical-director-wanted-at-family-planning-nepal.html\">Technical Director Wanted at Family Planning Nepal</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
        "categories": [
          "Uncategorized"
        ]
      },
      {
        "title": "Monitoring and Evaluation Analyst Wanted at UN Women",
        "link": "http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-analyst-wanted-at-un-women.html",
        "author": "Bandana Aryal",
        "publishedDate": "Sun, 12 May 2013 00:46:37 -0700",
        "contentSnippet": "Core Competencies Knowledge of current practices in the area of monitoring and evaluation, knowledge management Promotes the ...",
        "content": "<p><b>Core Competencies</b></p>\n<ul>\n<li>Knowledge of current practices in the area of monitoring and evaluation, knowledge management</li>\n<li>Promotes the vision, mission, and strategic goals of UN Women;</li>\n<li>Displays cultural, gender, religion, race, nationality and age sensitivity and adaptability</li>\n<li>Fostering innovation and empowerment</li>\n<li>Working in teams at all levels</li>\n<li>Communicating information and ideas/knowledge sharing</li>\n<li>Analytical and strategic thinking/results orientation/commitment to Excellence</li>\n</ul>\n<p><span style=\"text-decoration:underline\"><strong>Qualifications and Experience:</strong></span></p>\n<ul>\n<li>Master�s Degree in Economics, Management, Rural Development, Social Sciences, or related field. Additional certification in statistics, MIS management and Monitoring and Evaluation will be considered as an asset.</li>\n<li>Two years of relevant professional experience in the field of rights based monitoring and evaluation;</li>\n<li>Experience in the management of gender equality and women�s empowerment programmes or analytic work in gender and development, gender analysis and/or human rights;</li>\n<li> Good knowledge of rights-based approach and result-based management.</li>\n<li> Experience related to UN Women�s mandate and activities would be an added advantage;</li>\n<li> Sound knowledge of international standards on human rights, women�s rights and related instruments;</li>\n<li>A proven ability to liaise with a myriad of stakeholders and partners, including government, civil society, international organizations and grassroots organizations</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-analyst-wanted-at-un-women.html\">Monitoring and Evaluation Analyst Wanted at UN Women</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
        "categories": [
          "The Himalayan Times"
        ]
      }
    ]
  }
}
```

#### Feed

##### Class Name

`Feed`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `feed_url` | `String` | Required | - |
| `title` | `String` | Required | - |
| `link` | `String` | Required | - |
| `author` | `String` | Required | - |
| `description` | `String` | Required | - |
| `type` | `String` | Required | - |
| `entries` | [`Array<Entry>`](#entry) | Required | - |

##### Example (as JSON)

```json
{
  "feedUrl": "http://ramrojob.com/feed",
  "title": "Ramro Job",
  "link": "http://ramrojob.com",
  "author": "",
  "description": "...your pathway to success",
  "type": "rss20",
  "entries": [
    {
      "title": "Monitoring and Evaluation Specialist Wanted at GRM International",
      "link": "http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-specialist-wanted-at-grm-international.html",
      "author": "Bandana Aryal",
      "publishedDate": "Sun, 12 May 2013 01:10:24 -0700",
      "contentSnippet": "Key Responsibilities Under direction of the Team Leader, responsible for the design and roll out of programme M&#38;E plan, ...",
      "content": "<p><strong>Key Responsibilities</strong></p>\n<ul>\n<li>Under direction of the Team Leader, responsible for the design and roll out of programme M&amp;E plan, including design of the logframe and key performance indicators.</li>\n<li>Track programme progress against indicators and ensure early identification of any areas requiring remedial action.</li>\n<li>Carry out site visits and provide M&amp;E support and training for local partners.</li>\n<li>Harmonise programme monitoring indicators and systems with national M&amp;E systems.</li>\n<li>Promote use of data to inform decision making and link evidence-based approaches to achievement of results.</li>\n<li>Support operations research and specialised studies, such as client satisfaction, cost-effectiveness, and impact evaluation.</li>\n<li>Solicit and manage local data collection and research teams, as needed.</li>\n<li>Contribute to the preparation of regular progress reports, technical deliverables, presentations, and annual work plans.</li>\n</ul>\n<p><strong>Qualifications</strong></p>\n<ul>\n<li>Seven or more years of experience monitoring and evaluating reproductive health and family planning programmes, including promoting use of data for decision-making.</li>\n<li>Strong technical grasp of relevant health issues: sexual and reproductive health; family planning; maternal, new-born, and child health; HIV and AIDS; and health equity.</li>\n<li>Understanding of health market dynamics and the health system in Nepal.</li>\n<li>Demonstrated experience working with government, private sector, and nongovernmental health sector partners in Nepal, at national and decentralised levels.</li>\n<li>Experience supporting DFID, European Union, USAID, World Bank, or other donor-funded or government health programmes.</li>\n<li>Strong quantitative and qualitative research and analysis skills.</li>\n<li>Demonstrated experience with computerised management information systems, databases, MS Office, and other relevant skills.</li>\n<li>Ability to graphically present data in ways that engage and influence target audiences.</li>\n<li>Knowledge of in-country and international guidelines pertaining to research ethics.</li>\n<li>Strong personal qualities, including integrity, commitment to excellence, equality, openness, inclusiveness, and collegiality.</li>\n<li>Excellent written and spoken English required, local languages are a distinct advantage.</li>\n<li>Advanced degree/s in relevant discipline preferred.</li>\n<li>Nepali nationals strongly encouraged to apply.</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-specialist-wanted-at-grm-international.html\">Monitoring and Evaluation Specialist Wanted at GRM International</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
      "categories": [
        "Uncategorized"
      ]
    },
    {
      "title": "Director of Finance and Admin Wanted at Abt Associates",
      "link": "http://ramrojob.com/job/2013/05/12/director-of-finance-and-admin-wanted-at-abt-associates.html",
      "author": "Bandana Aryal",
      "publishedDate": "Sun, 12 May 2013 01:02:28 -0700",
      "contentSnippet": "Job Responsibilities: Abt Associates seeks a Director of Finance and Administration for an upcoming DFID-funded family planning ...",
      "content": "<p><strong>Job Responsibilities:</strong></p>\n<p>Abt Associates seeks a Director of Finance and Administration for an upcoming DFID-funded family planning program in Nepal. The initiative will work with the Ministry of Health and Population to increase use of modern high-quality family planning methods by the most vulnerable and excluded women by supply innovative and high quality family planning services. The program will also work with the Ministry of Health and Population to ensure better choices and availabilites of reproductive health commodities.</p>\n<p>The Director of Finance and Administration will be responsible for the management of the contract, procurement, subcontracting, financial management and reporting, and general administrative support of the program. S/he will develop and track budgets, manage payroll and vendor relations, and control all financial transactions and reporting, both for the client and for Abt Associates headquarters.</p>\n<p>Specific responsibilities will include:</p>\n<ul>\n<li>Ensure compliance with terms and references in the contract;</li>\n<li>Develop and implement financial and administrative policies and procedures that meet project requirements and donor regulations;</li>\n<li>Create and maintain financial reporting and tracking systems, and provide financial performance updates on project activities;</li>\n<li>Prepare budgets and revenue plans for project programming and corporate reporting;</li>\n<li>Oversee financial and HR administration of project (purchase requisitions, consulting agreements, vendor invoices, client invoices, payroll etc.);</li>\n<li>Manage vendors and subcontractors in compliance with Abt and DfID policies and regulations;</li>\n<li>Supervise all financial and administrative staff;</li>\n<li>Provide training to field staff on project procedures as well as building skill-levels of project staff in the area of finance, administration, and project management.</li>\n</ul>\n<p><strong>Skills Prerequisites:</strong></p>\n<ul>\n<li>Bachelor�s Degree (minimum) or master�s degree (preferred) in Business, Finance, Accounting or other relevant field;</li>\n<li>10 years of experience in administration, project management and/or financial management;</li>\n<li>5 years of experience working with international donors in a development setting;</li>\n<li>Experience with DfID contracts desirable;</li>\n<li>Strong analytical and computer skills, with emphasis on budgeting and financial analysis;</li>\n<li>Excellent inter-personal, communication and organizational skills;</li>\n<li>Capabilities in Nepali or other South Asian languages are desirable.</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/director-of-finance-and-admin-wanted-at-abt-associates.html\">Director of Finance and Admin Wanted at Abt Associates</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
      "categories": [
        "Uncategorized"
      ]
    },
    {
      "title": "Technical Director Wanted at Family Planning Nepal",
      "link": "http://ramrojob.com/job/2013/05/12/technical-director-wanted-at-family-planning-nepal.html",
      "author": "Bandana Aryal",
      "publishedDate": "Sun, 12 May 2013 00:57:03 -0700",
      "contentSnippet": "Skills Prerequisites: Masters Degree (minimum) in Public Health, Business Administration or related relevant discipline Ten ...",
      "content": "<p><strong>Skills Prerequisites:</strong></p>\n<ul>\n<li>Masters Degree (minimum) in Public Health, Business Administration or related relevant discipline</li>\n<li>Ten years (10) of relevant professional experience, including sales or marketing, and strong business acumen in areas of business process and analysis would be highly valued</li>\n<li>Eight (8) years experience working in health sector projects or initiatives involving multiple stakeholder groups, including NGOs and the private health sector</li>\n<li>Successful prior experience in social marketing or franchising</li>\n<li>Proven track record of building and sustaining effective partnerships, advocating effectively and communicating to various constituencies</li>\n<li>Ability to coordinate in a dynamic environment</li>\n<li>Substantial experience in building capacity in the non-state/private sector</li>\n<li>Ability to independently plan and execute complex tasks while addressing daily management details and remaining organized and focused on long-term deadlines and strategies</li>\n<li>Solid professional reputation and strong, demonstrated interpersonal skills</li>\n<li>Professional working experience in Nepal desirable</li>\n<li>Fluency in Nepali desirable</li>\n<li>Excellent written and oral presentation skills in English</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/technical-director-wanted-at-family-planning-nepal.html\">Technical Director Wanted at Family Planning Nepal</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
      "categories": [
        "Uncategorized"
      ]
    },
    {
      "title": "Monitoring and Evaluation Analyst Wanted at UN Women",
      "link": "http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-analyst-wanted-at-un-women.html",
      "author": "Bandana Aryal",
      "publishedDate": "Sun, 12 May 2013 00:46:37 -0700",
      "contentSnippet": "Core Competencies Knowledge of current practices in the area of monitoring and evaluation, knowledge management Promotes the ...",
      "content": "<p><b>Core Competencies</b></p>\n<ul>\n<li>Knowledge of current practices in the area of monitoring and evaluation, knowledge management</li>\n<li>Promotes the vision, mission, and strategic goals of UN Women;</li>\n<li>Displays cultural, gender, religion, race, nationality and age sensitivity and adaptability</li>\n<li>Fostering innovation and empowerment</li>\n<li>Working in teams at all levels</li>\n<li>Communicating information and ideas/knowledge sharing</li>\n<li>Analytical and strategic thinking/results orientation/commitment to Excellence</li>\n</ul>\n<p><span style=\"text-decoration:underline\"><strong>Qualifications and Experience:</strong></span></p>\n<ul>\n<li>Master�s Degree in Economics, Management, Rural Development, Social Sciences, or related field. Additional certification in statistics, MIS management and Monitoring and Evaluation will be considered as an asset.</li>\n<li>Two years of relevant professional experience in the field of rights based monitoring and evaluation;</li>\n<li>Experience in the management of gender equality and women�s empowerment programmes or analytic work in gender and development, gender analysis and/or human rights;</li>\n<li> Good knowledge of rights-based approach and result-based management.</li>\n<li> Experience related to UN Women�s mandate and activities would be an added advantage;</li>\n<li> Sound knowledge of international standards on human rights, women�s rights and related instruments;</li>\n<li>A proven ability to liaise with a myriad of stakeholders and partners, including government, civil society, international organizations and grassroots organizations</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-analyst-wanted-at-un-women.html\">Monitoring and Evaluation Analyst Wanted at UN Women</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
      "categories": [
        "The Himalayan Times"
      ]
    }
  ]
}
```

#### Entry

##### Class Name

`Entry`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `title` | `String` | Required | - |
| `link` | `String` | Required | - |
| `author` | `String` | Required | - |
| `published_date` | `String` | Required | - |
| `content_snippet` | `String` | Required | - |
| `content` | `String` | Required | - |
| `categories` | `Array<String>` | Required | - |

##### Example (as JSON)

```json
{
  "title": "Monitoring and Evaluation Specialist Wanted at GRM International",
  "link": "http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-specialist-wanted-at-grm-international.html",
  "author": "Bandana Aryal",
  "publishedDate": "Sun, 12 May 2013 01:10:24 -0700",
  "contentSnippet": "Key Responsibilities Under direction of the Team Leader, responsible for the design and roll out of programme M&#38;E plan, ...",
  "content": "<p><strong>Key Responsibilities</strong></p>\n<ul>\n<li>Under direction of the Team Leader, responsible for the design and roll out of programme M&amp;E plan, including design of the logframe and key performance indicators.</li>\n<li>Track programme progress against indicators and ensure early identification of any areas requiring remedial action.</li>\n<li>Carry out site visits and provide M&amp;E support and training for local partners.</li>\n<li>Harmonise programme monitoring indicators and systems with national M&amp;E systems.</li>\n<li>Promote use of data to inform decision making and link evidence-based approaches to achievement of results.</li>\n<li>Support operations research and specialised studies, such as client satisfaction, cost-effectiveness, and impact evaluation.</li>\n<li>Solicit and manage local data collection and research teams, as needed.</li>\n<li>Contribute to the preparation of regular progress reports, technical deliverables, presentations, and annual work plans.</li>\n</ul>\n<p><strong>Qualifications</strong></p>\n<ul>\n<li>Seven or more years of experience monitoring and evaluating reproductive health and family planning programmes, including promoting use of data for decision-making.</li>\n<li>Strong technical grasp of relevant health issues: sexual and reproductive health; family planning; maternal, new-born, and child health; HIV and AIDS; and health equity.</li>\n<li>Understanding of health market dynamics and the health system in Nepal.</li>\n<li>Demonstrated experience working with government, private sector, and nongovernmental health sector partners in Nepal, at national and decentralised levels.</li>\n<li>Experience supporting DFID, European Union, USAID, World Bank, or other donor-funded or government health programmes.</li>\n<li>Strong quantitative and qualitative research and analysis skills.</li>\n<li>Demonstrated experience with computerised management information systems, databases, MS Office, and other relevant skills.</li>\n<li>Ability to graphically present data in ways that engage and influence target audiences.</li>\n<li>Knowledge of in-country and international guidelines pertaining to research ethics.</li>\n<li>Strong personal qualities, including integrity, commitment to excellence, equality, openness, inclusiveness, and collegiality.</li>\n<li>Excellent written and spoken English required, local languages are a distinct advantage.</li>\n<li>Advanced degree/s in relevant discipline preferred.</li>\n<li>Nepali nationals strongly encouraged to apply.</li>\n</ul>\n<p>The post <a href=\"http://ramrojob.com/job/2013/05/12/monitoring-and-evaluation-specialist-wanted-at-grm-international.html\">Monitoring and Evaluation Specialist Wanted at GRM International</a> appeared first on <a href=\"http://ramrojob.com\">Ramro Job</a>.</p>",
  "categories": [
    "Uncategorized"
  ]
}
```

#### Date as Optional

##### Class Name

`DateAsOptional`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date` | `Date` | Optional | - |

##### Example (as JSON)

```json
{
  "date": null
}
```

#### Add Precision in Exception

##### Class Name

`AddPrecisionInException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Float` | Required | - |
| `value_1` | `Float` | Optional | - |

##### Example (as JSON)

```json
{
  "value": 1.23
}
```

#### Add Uuid in Global Exception

##### Class Name

`AddUuidInGlobalException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `UUID \| String` | Required | - |
| `value_1` | `UUID \| String` | Optional | - |

##### Example (as JSON)

```json
{
  "value": "123e4567-e89b-12d3-a456-426655440000"
}
```

#### Add Rfc 1123 Datetime in Global Exception

##### Class Name

`AddRfc1123DatetimeInGlobalException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Required | - |
| `date_time_1` | `DateTime` | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": "Sun, 06 Nov 1994 08:49:37 GMT"
}
```

#### Add Number in Exception

##### Class Name

`AddNumberInException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Integer` | Required | - |
| `value_1` | `Integer` | Optional | - |

##### Example (as JSON)

```json
{
  "value": 1
}
```

#### Add Dynamic in Exception

##### Class Name

`AddDynamicInException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Object` | Required | - |
| `value_1` | `Object` | Optional | - |

##### Example (as JSON)

```json
{
  "value": {
    "value": "test"
  }
}
```

#### Add Rfc 3339 Datetime in Global Exception

##### Class Name

`AddRfc3339DatetimeInGlobalException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Required | - |
| `date_time_1` | `DateTime` | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": "2016-03-13T12:52:32.123Z",
  "dateTime1": null
}
```

#### Add Boolean in Global Exception

##### Class Name

`AddBooleanInGlobalException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Boolean` | Required | - |
| `value_1` | `Boolean` | Optional | - |

##### Example (as JSON)

```json
{
  "value": false,
  "value1": null
}
```

#### Add Date in Global Exception

##### Class Name

`AddDateInGlobalException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Date` | Required | - |
| `value_1` | `Date` | Optional | - |

##### Example (as JSON)

```json
{
  "value": "1994-02-13"
}
```

#### Add String in Global Exception

##### Class Name

`AddStringInGlobalException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `String` | Required | - |
| `value_1` | `String` | Optional | - |

##### Example (as JSON)

```json
{
  "value": "test"
}
```

#### Add Unix Time Stamp in Global Exception

##### Class Name

`AddUnixTimeStampInGlobalException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Required | - |
| `date_time_1` | `DateTime` | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": 1484719381
}
```

#### Add Long in Global Exception

##### Class Name

`AddLongInGlobalException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Long` | Required | - |
| `value_1` | `Long` | Optional | - |

##### Example (as JSON)

```json
{
  "value": 123123
}
```

### Enumerations

* [Days](#days)
* [Suite Code](#suite-code)
* [Param Format](#param-format)
* [Type](#type)
* [Language Enum](#language-enum)
* [Team](#team)
* [Team Integer](#team-integer)

#### Days

A string enum representing days of the week

##### Class Name

`Days`

##### Fields

| Name |
|  --- |
| `SUNDAY` |
| `MONDAY` |
| `TUESDAY` |
| `WEDNESDAY_` |
| `THURSDAY` |
| `FRI_DAY` |
| `SATURDAY` |

#### Suite Code

A integer based enum representing a Suite in a game of cards

##### Class Name

`SuiteCode`

##### Fields

| Name |
|  --- |
| `HEARTS` |
| `SPADES` |
| `CLUBS` |
| `DIAMONDS` |

#### Param Format

##### Class Name

`ParamFormat`

##### Fields

| Name |
|  --- |
| `TEMPLATE` |
| `FORM` |
| `BODY` |
| `HEADER` |
| `QUERY` |

#### Type

##### Class Name

`Type`

##### Fields

| Name |
|  --- |
| `LONG` |
| `NUMBER` |
| `PRECISION` |
| `BOOLEAN` |
| `DATETIME` |
| `DATE` |
| `STRING` |

#### Language Enum

##### Class Name

`LanguageEnum`

##### Fields

| Name |
|  --- |
| `EN` |
| `DZ` |
| `NL` |

#### Team

##### Class Name

`Team`

##### Fields

| Name |
|  --- |
| `CODEGEN` |
| `CGAAS` |
| `UX` |
| `QA` |

#### Team Integer

##### Class Name

`TeamInteger`

##### Fields

| Name |
|  --- |
| `CODEGEN` |
| `CGAAS` |
| `UX` |
| `QA` |

### Exceptions

* [Local Test Exception](#local-test-exception)
* [Global Test Exception](#global-test-exception)
* [Nested Model Exception](#nested-model-exception)
* [Rfc 1123 Exception](#rfc-1123-exception)
* [Unix Time Stamp Exception](#unix-time-stamp-exception)
* [Exception With Rfc 3339 Date Time](#exception-with-rfc-3339-date-time)
* [Exception With Date](#exception-with-date)
* [Exception With UUID](#exception-with-uuid)
* [Exception With Dynamic](#exception-with-dynamic)
* [Exception With Precision](#exception-with-precision)
* [Exception With Boolean](#exception-with-boolean)
* [Exception With Long](#exception-with-long)
* [Exception With Number](#exception-with-number)
* [Exception With String](#exception-with-string)
* [Custom Error Response](#custom-error-response)
* [Send Uuid in Model as Exception](#send-uuid-in-model-as-exception)
* [Send Precision in Model as Exception](#send-precision-in-model-as-exception)
* [Send Number in Model as Exception](#send-number-in-model-as-exception)
* [Send Long in Model as Exception](#send-long-in-model-as-exception)
* [Send String in Model as Exception](#send-string-in-model-as-exception)
* [Send Dynamic in Model as Exception](#send-dynamic-in-model-as-exception)
* [Send Date in Model as Exception](#send-date-in-model-as-exception)
* [Send Unix Time Stamp in Model as Exception](#send-unix-time-stamp-in-model-as-exception)
* [Send Rfc 3339 in Model as Exception](#send-rfc-3339-in-model-as-exception)
* [Send Rfc 1123 in Model as Exception](#send-rfc-1123-in-model-as-exception)
* [Send Boolean in Model as Exception](#send-boolean-in-model-as-exception)
* [Complex Object in Exception](#complex-object-in-exception)
* [Enum in Exception](#enum-in-exception)

#### Local Test Exception

To test specific local exceptions.

##### Class Name

`LocalTestException`

##### Inherits From

[`GlobalTestException`](#global-test-exception)

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `secret_message_for_endpoint` | `String` | Required | Represents the specific endpoint info |

##### Example (as JSON)

```json
{
  "SecretMessageForEndpoint": "SecretMessageForEndpoint6",
  "ServerMessage": "ServerMessage6",
  "ServerCode": 170
}
```

#### Global Test Exception

To test specific global exceptions.

##### Class Name

`GlobalTestException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `server_message` | `String` | Required | Represents the server's exception message |
| `server_code` | `Integer` | Required | Represents the server's error code |

##### Example (as JSON)

```json
{
  "ServerMessage": "ServerMessage6",
  "ServerCode": 170
}
```

#### Nested Model Exception

##### Class Name

`NestedModelException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `server_message` | `String` | Required | - |
| `server_code` | `String` | Required | - |
| `model` | [`Validate`](#validate) | Required | - |

##### Example (as JSON)

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

#### Rfc 1123 Exception

##### Class Name

`Rfc1123Exception`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Required | - |
| `date_time_1` | `DateTime` | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": "Sun, 06 Nov 1994 08:49:37 GMT"
}
```

#### Unix Time Stamp Exception

##### Class Name

`UnixTimeStampException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Required | - |
| `date_time_1` | `DateTime` | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": 1484719381
}
```

#### Exception With Rfc 3339 Date Time

##### Class Name

`ExceptionWithRfc3339DateTimeException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `date_time` | `DateTime` | Required | - |
| `date_time_1` | `DateTime` | Optional | - |

##### Example (as JSON)

```json
{
  "dateTime": "2016-03-13T12:52:32.123Z",
  "dateTime1": null
}
```

#### Exception With Date

##### Class Name

`ExceptionWithDateException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Date` | Required | - |
| `value_1` | `Date` | Optional | - |

##### Example (as JSON)

```json
{
  "value": "1994-02-13"
}
```

#### Exception With UUID

##### Class Name

`ExceptionWithUUIDException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `UUID \| String` | Required | - |
| `value_1` | `UUID \| String` | Optional | - |

##### Example (as JSON)

```json
{
  "value": "123e4567-e89b-12d3-a456-426655440000"
}
```

#### Exception With Dynamic

##### Class Name

`ExceptionWithDynamicException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Object` | Required | - |
| `value_1` | `Object` | Optional | - |

##### Example (as JSON)

```json
{
  "value": {
    "value": "test"
  }
}
```

#### Exception With Precision

##### Class Name

`ExceptionWithPrecisionException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Float` | Required | - |
| `value_1` | `Float` | Optional | - |

##### Example (as JSON)

```json
{
  "value": 1.23
}
```

#### Exception With Boolean

##### Class Name

`ExceptionWithBooleanException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Boolean` | Required | - |
| `value_1` | `Boolean` | Optional | - |

##### Example (as JSON)

```json
{
  "value": true
}
```

#### Exception With Long

##### Class Name

`ExceptionWithLongException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Long` | Required | - |
| `value_1` | `Long` | Optional | - |

##### Example (as JSON)

```json
{
  "value": 12312312
}
```

#### Exception With Number

##### Class Name

`ExceptionWithNumberException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Integer` | Required | - |
| `value_1` | `Integer` | Optional | - |

##### Example (as JSON)

```json
{
  "value": 1
}
```

#### Exception With String

##### Class Name

`ExceptionWithStringException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `String` | Required | - |
| `value_1` | `String` | Optional | - |

##### Example (as JSON)

```json
{
  "value": "test"
}
```

#### Custom Error Response

##### Class Name

`CustomErrorResponseException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `error_description` | `String` | Required | - |
| `caught` | `String` | Required | - |
| `exception` | `String` | Required | - |
| `inner_exception` | `String` | Required | - |

##### Example (as JSON)

```json
{
  "error description": null,
  "caught": "Error in CatchInner caused by calling the ThrowInner method.",
  "Exception": "In catch block of Main method.",
  "Inner Exception": "AppException: Exception in ThrowInner method."
}
```

#### Send Uuid in Model as Exception

##### Class Name

`SendUuidInModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddUuidInGlobalException`](#add-uuid-in-global-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "value": "123e4567-e89b-12d3-a456-426655440000"
  }
}
```

#### Send Precision in Model as Exception

##### Class Name

`SendPrecisionInModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddPrecisionInException`](#add-precision-in-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "value": 1.23
  }
}
```

#### Send Number in Model as Exception

##### Class Name

`SendNumberInModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddNumberInException`](#add-number-in-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "value": 1
  }
}
```

#### Send Long in Model as Exception

##### Class Name

`SendLongInModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddLongInGlobalException`](#add-long-in-global-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "value": 123123
  }
}
```

#### Send String in Model as Exception

##### Class Name

`SendStringInModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddStringInGlobalException`](#add-string-in-global-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "value": "test"
  }
}
```

#### Send Dynamic in Model as Exception

##### Class Name

`SendDynamicInModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddDynamicInException`](#add-dynamic-in-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "value": {
      "value": "test"
    }
  }
}
```

#### Send Date in Model as Exception

##### Class Name

`SendDateInModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddDateInGlobalException`](#add-date-in-global-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "value": "1994-02-13"
  }
}
```

#### Send Unix Time Stamp in Model as Exception

##### Class Name

`SendUnixTimeStampInModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddUnixTimeStampInGlobalException`](#add-unix-time-stamp-in-global-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "dateTime": 1484719381
  }
}
```

#### Send Rfc 3339 in Model as Exception

##### Class Name

`SendRfc3339InModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddRfc3339DatetimeInGlobalException`](#add-rfc-3339-datetime-in-global-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "dateTime": "2016-03-13T12:52:32.123Z",
    "dateTime1": null
  }
}
```

#### Send Rfc 1123 in Model as Exception

##### Class Name

`SendRfc1123InModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddRfc1123DatetimeInGlobalException`](#add-rfc-1123-datetime-in-global-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "dateTime": "Sun, 06 Nov 1994 08:49:37 GMT"
  }
}
```

#### Send Boolean in Model as Exception

##### Class Name

`SendBooleanInModelAsException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddBooleanInGlobalException`](#add-boolean-in-global-exception) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "value": false,
    "value1": null
  }
}
```

#### Complex Object in Exception

##### Class Name

`ComplexObjectInException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Complex3`](#complex-3) | Required | - |

##### Example (as JSON)

```json
{
  "body": {
    "documentId": "099cceda-38a8-4b01-87b9-a8f2007675d6",
    "signers": [
      {
        "id": "1bef97d1-0704-4eb2-a490-a8f2007675db",
        "url": "https://sign-test.idfy.io/start?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzM4NCJ9.eyJrdmVyc2lvbiI6IjdmNzhjNzNkMmQ1MjQzZWRiYjdiNDI0MmI2MDE1MWU4IiwiZG9jaWQiOiIwOTljY2VkYS0zOGE4LTRiMDEtODdiOS1hOGYyMDA3Njc1ZDYiLCJhaWQiOiJjMGNlMTQ2OC1hYzk0LTRiMzQtODc2ZS1hODg1MDBjMmI5YTEiLCJsZyI6ImVuIiwiZXJyIjpudWxsLCJpZnIiOmZhbHNlLCJ3Ym1zZyI6ZmFsc2UsInNmaWQiOiIxYmVmOTdkMS0wNzA0LTRlYjItYTQ5MC1hOGYyMDA3Njc1ZGIiLCJ1cmxleHAiOm51bGwsImF0aCI6bnVsbCwiZHQiOiJUZXN0IGRvY3VtZW50IiwidmYiOmZhbHNlLCJhbiI6IklkZnkgU0RLIGRlbW8iLCJ0aCI6IlBpbmsiLCJzcCI6IkN1YmVzIiwiZG9tIjpudWxsLCJyZGlyIjpmYWxzZSwidXQiOiJ3ZWIiLCJ1dHYiOm51bGwsInNtIjoidGVzdEB0ZXN0LmNvbSJ9.Dyy2RSeR6dmU8qxOEi-2gEX3Gg7wry6JhkZIWOuADDdu5jJWidQLcxfJn_qAHNpb",
        "links": [],
        "externalSignerId": "uoiahsd321982983jhrmnec2wsadm32",
        "redirectSettings": {
          "redirectMode": "donot_redirect"
        },
        "signatureType": {
          "mechanism": "pkisignature",
          "onEacceptUseHandWrittenSignature": false
        },
        "ui": {
          "dialogs": {
            "before": {
              "useCheckBox": false,
              "title": "Info",
              "message": "Please read the contract on the next pages carefully. Pay some extra attention to paragraph 5."
            }
          },
          "language": "EN",
          "styling": {
            "colorTheme": "Pink",
            "spinner": "Cubes"
          }
        },
        "tags": [],
        "order": 0,
        "required": false
      }
    ],
    "status": {
      "documentStatus": "unsigned",
      "completedPackages": [],
      "attachmentPackages": {}
    },
    "title": "Test document",
    "description": "This is an important document",
    "externalId": "ae7b9ca7-3839-4e0d-a070-9f14bffbbf55",
    "dataToSign": {
      "fileName": "sample.txt",
      "convertToPDF": false
    },
    "contactDetails": {
      "email": "test@test.com",
      "url": "https://idfy.io"
    },
    "advanced": {
      "tags": [
        "develop",
        "fun_with_documents"
      ],
      "attachments": 0,
      "requiredSignatures": 0,
      "getSocialSecurityNumber": false,
      "timeToLive": {
        "deadline": "2018-06-29T14:57:25Z",
        "deleteAfterHours": 1
      }
    }
  }
}
```

#### Enum in Exception

##### Class Name

`EnumInException`

##### Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `param` | [`ParamFormat`](#param-format) | Required | - |
| `type` | [`Type`](#type) | Required | - |

##### Example (as JSON)

```json
{
  "param": "Template",
  "type": "Long"
}
```

## Utility Classes Documentation

### ApiHelper Class

API utility class.

### Methods

| Name | Return Type | Description |
|  --- | --- | --- |
| json_deserialize | Hash | Deserializes a JSON string to a Ruby Hash. |
| rfc3339 | DateTime | Safely converts a string into an RFC3339 DateTime object. |

## Common Code Documentation

### HttpResponse

Http response received.

#### Properties

| Name | Type | Description |
|  --- | --- | --- |
| status_code | Integer | The status code returned by the server. |
| reason_phrase | String | The reason phrase returned by the server. |
| headers | Hash | Response headers. |
| raw_body | String | Response body. |
| request | HttpRequest | The request that resulted in this response. |

### HttpRequest

Represents a single Http Request.

#### Properties

| Name | Type | Tag | Description |
|  --- | --- | --- | --- |
| http_method | HttpMethodEnum |  | The HTTP method of the request. |
| query_url | String |  | The endpoint URL for the API request. |
| headers | Hash | Optional | Request headers. |
| parameters | Hash | Optional | Request body. |

