
# Client Class Documentation

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

## Tester Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

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

