
# Getting Started with Tester

## Introduction

Testing various
api
features

## Building

You must have Python `3 >=3.6, <= 3.9` installed on your system to install and run this SDK. This SDK package depends on other Python packages like nose, jsonpickle etc. These dependencies are defined in the `requirements.txt` file that comes with the SDK.To resolve these dependencies, you can use the PIP Dependency manager. Install it by following steps at [https://pip.pypa.io/en/stable/installing/](https://pip.pypa.io/en/stable/installing/).

Python and PIP executables should be defined in your PATH. Open command prompt and type `pip --version`. This should display the version of the PIP Dependency Manager installed if your installation was successful and the paths are properly defined.

* Using command line, navigate to the directory containing the generated files (including `requirements.txt`) for the SDK.
* Run the command `pip install -r requirements.txt`. This should install all the required dependencies.

![Building SDK - Step 1](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&step=installDependencies)

## Installation

The following section explains how to use the tester library in a new project.

### 1. Open Project in an IDE

Open up a Python IDE like PyCharm. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

![Open project in PyCharm - Step 1](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&step=pyCharm)

Click on `Open` in PyCharm to browse to your generated SDK directory and then click `OK`.

![Open project in PyCharm - Step 2](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&step=openProject0)

The project files will be displayed in the side bar as follows:

![Open project in PyCharm - Step 3](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&projectName=tester&step=openProject1)

### 2. Add a new Test Project

Create a new directory by right clicking on the solution name as shown below:

![Add a new project in PyCharm - Step 1](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&projectName=tester&step=createDirectory)

Name the directory as "test".

![Add a new project in PyCharm - Step 2](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&step=nameDirectory)

Add a python file to this project.

![Add a new project in PyCharm - Step 3](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&projectName=tester&step=createFile)

Name it "testSDK".

![Add a new project in PyCharm - Step 4](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&projectName=tester&step=nameFile)

In your python file you will be required to import the generated python library using the following code lines

```python
from tester.tester_client import TesterClient
```

![Add a new project in PyCharm - Step 5](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&projectName=tester&libraryName=tester.tester_client&className=TesterClient&step=projectFiles)

After this you can write code to instantiate an API client object, get a controller object and  make API calls. Sample code is given in the subsequent sections.

### 3. Run the Test Project

To run the file within your test project, right click on your Python file inside your Test project and click on `Run`

![Run Test Project - Step 1](https://apidocs.io/illustration/python?workspaceFolder=Tester-Python&projectName=tester&libraryName=tester.tester_client&className=TesterClient&step=runProject)

## Test the SDK

You can test the generated SDK and the server with test cases. `unittest` is used as the testing framework and `nose` is used as the test runner. You can run the tests as follows:

Navigate to the root directory of the SDK and run the following commands

```
pip install -r test-requirements.txt
nosetests
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `port` | `string` | *Default*: `'80'` |
| `suites` | `SuiteCode` | *Default*: `1` |
| `environment` | Environment | The API environment. <br> **Default: `Environment.TESTING`** |
| `timeout` | `float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `int` | The number of times to retry an endpoint call if it fails. <br> **Default: 3** |
| `backoff_factor` | `float` | A backoff factor to apply between attempts after the second try. <br> **Default: 2** |
| `retry_statuses` | `Array of int` | The http statuses on which retry is to be done. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array of string` | The http methods on which retry is to be done. <br> **Default: ['GET', 'PUT']** |

The API client can be initialized as follows:

```python
from tester.tester_client import TesterClient
from tester.configuration import Environment

client = TesterClient(
    environment=Environment.TESTING,
    port = '80',
    suites = SuiteCode.HEARTS,)
```

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| production | - |
| testing | **Default** |

## API Errors

Here is the list of errors that the API might throw.

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | 400 Global | `APIException` |
| 402 | 402 Global | `APIException` |
| 403 | 403 Global | `APIException` |
| 404 | 404 Global | `APIException` |
| 412 | Precondition Failed | [`NestedModelException`](/doc/models/nested-model-exception.md) |
| 450 | caught global exception | [`CustomErrorResponseException`](/doc/models/custom-error-response-exception.md) |
| 452 | global exception with string | [`ExceptionWithStringException`](/doc/models/exception-with-string-exception.md) |
| 453 | boolean in global exception | [`ExceptionWithBooleanException`](/doc/models/exception-with-boolean-exception.md) |
| 454 | dynamic in global exception | [`ExceptionWithDynamicException`](/doc/models/exception-with-dynamic-exception.md) |
| 455 | uuid in global exception | [`ExceptionWithUUIDException`](/doc/models/exception-with-uuid-exception.md) |
| 456 | date in global exception | [`ExceptionWithDateException`](/doc/models/exception-with-date-exception.md) |
| 457 | number in global  exception | [`ExceptionWithNumberException`](/doc/models/exception-with-number-exception.md) |
| 458 | long in global exception | [`ExceptionWithLongException`](/doc/models/exception-with-long-exception.md) |
| 459 | precision in global  exception | [`ExceptionWithPrecisionException`](/doc/models/exception-with-precision-exception.md) |
| 460 | rfc3339 in global exception | [`ExceptionWithRfc3339DateTimeException`](/doc/models/exception-with-rfc-3339-date-time-exception.md) |
| 461 | unix time stamp in global exception | [`UnixTimeStampException`](/doc/models/unix-time-stamp-exception.md) |
| 462 | rfc1123 in global exception | [`Rfc1123Exception`](/doc/models/rfc-1123-exception.md) |
| 463 | boolean in model as global exception | [`SendBooleanInModelAsException`](/doc/models/send-boolean-in-model-as-exception.md) |
| 464 | rfc3339 in model as global exception | [`SendRfc3339InModelAsException`](/doc/models/send-rfc-3339-in-model-as-exception.md) |
| 465 | rfc1123 in model as global exception | [`SendRfc1123InModelAsException`](/doc/models/send-rfc-1123-in-model-as-exception.md) |
| 466 | unix time stamp in model as global exception | [`SendUnixTimeStampInModelAsException`](/doc/models/send-unix-time-stamp-in-model-as-exception.md) |
| 467 | send date in model as global exception | [`SendDateInModelAsException`](/doc/models/send-date-in-model-as-exception.md) |
| 468 | send dynamic in model as global exception | [`SendDynamicInModelAsException`](/doc/models/send-dynamic-in-model-as-exception.md) |
| 469 | send string in model as global exception | [`SendStringInModelAsException`](/doc/models/send-string-in-model-as-exception.md) |
| 470 | send long in model as global exception | [`SendLongInModelAsException`](/doc/models/send-long-in-model-as-exception.md) |
| 471 | send number in model as global exception | [`SendNumberInModelAsException`](/doc/models/send-number-in-model-as-exception.md) |
| 472 | send precision in model as global exception | [`SendPrecisionInModelAsException`](/doc/models/send-precision-in-model-as-exception.md) |
| 473 | send uuid in model as global exception | [`SendUuidInModelAsException`](/doc/models/send-uuid-in-model-as-exception.md) |
| 500 | 500 Global | [`GlobalTestException`](/doc/models/global-test-exception.md) |
| Default | Invalid response. | [`GlobalTestException`](/doc/models/global-test-exception.md) |

## List of APIs

* [Response Types](/doc/controllers/response-types.md)
* [Form Params](/doc/controllers/form-params.md)
* [Body Params](/doc/controllers/body-params.md)
* [Error Codes](/doc/controllers/error-codes.md)
* [Query Param](/doc/controllers/query-param.md)
* [Echo](/doc/controllers/echo.md)
* [Header](/doc/controllers/header.md)
* [Template Params](/doc/controllers/template-params.md)
* [Query Params](/doc/controllers/query-params.md)

## Classes Documentation

* [Utility Classes](/doc/utility-classes.md)
* [HttpResponse](/doc/http-response.md)
* [HttpRequest](/doc/http-request.md)

