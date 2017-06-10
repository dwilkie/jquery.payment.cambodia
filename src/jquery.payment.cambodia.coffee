defaultFormat = /(\d{1,4})/g

$.payment.cards.unshift(
  {
    type: "wing"
    patterns: [501818]
    pattern: /^501818/
    format: defaultFormat
    length: [16]
    cvcLength: [4]
    luhn: false
  },
  {
    type: "acleda"
    patterns: [911601, 911604]
    pattern: /^(911601|911604)/
    format: defaultFormat
    length: [16..17]
    cvcLength: [4]
    luhn: false
  }
)
