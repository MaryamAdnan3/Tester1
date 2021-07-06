
# Gloss Entry

## Structure

`GlossEntry`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `string` | Required | - |
| `sort_as` | `string` | Required | - |
| `gloss_term` | `string` | Required | - |
| `acronym` | `string` | Required | - |
| `abbrev` | `string` | Required | - |
| `gloss_def` | [`GlossDef`](/doc/models/gloss-def.md) | Required | - |
| `gloss_see` | `string` | Required | - |

## Example (as JSON)

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

