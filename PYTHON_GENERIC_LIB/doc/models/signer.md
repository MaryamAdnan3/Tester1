
# Signer

## Structure

`Signer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `string` | Required | - |
| `url` | `string` | Required | - |
| `links` | `List of string` | Required | - |
| `external_signer_id` | `string` | Required | - |
| `redirect_settings` | [`RedirectSettings`](/doc/models/redirect-settings.md) | Required | - |
| `signature_type` | [`SignatureType`](/doc/models/signature-type.md) | Required | - |
| `ui` | [`Ui`](/doc/models/ui.md) | Required | - |
| `tags` | `List of string` | Required | - |
| `order` | `int` | Required | - |
| `required` | `bool` | Required | - |

## Example (as JSON)

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

