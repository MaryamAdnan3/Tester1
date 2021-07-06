
# Gloss Div

## Structure

`GlossDiv`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `title` | `string` | Required | - |
| `gloss_list` | [`GlossList`](/doc/models/gloss-list.md) | Required | - |

## Example (as JSON)

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

