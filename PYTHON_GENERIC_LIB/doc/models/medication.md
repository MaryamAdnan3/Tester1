
# Medication

## Structure

`Medication`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ace_inhibitors` | [`List of AceInhibitor`](/doc/models/ace-inhibitor.md) | Required | - |
| `antianginal` | [`List of Antianginal`](/doc/models/antianginal.md) | Required | - |
| `anticoagulants` | [`List of Anticoagulant`](/doc/models/anticoagulant.md) | Required | - |
| `beta_blocker` | [`List of BetaBlocker`](/doc/models/beta-blocker.md) | Required | - |
| `diuretic` | [`List of Diuretic`](/doc/models/diuretic.md) | Required | - |
| `mineral` | [`List of Mineral`](/doc/models/mineral.md) | Required | - |

## Example (as JSON)

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

