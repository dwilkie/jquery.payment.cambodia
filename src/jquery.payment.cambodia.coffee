$.payment.cards.unshift(
  {
    type: "wing"
    pattern: /^501818/
    format:  /(\d{1,4})/g
    length: [16]
    cvcLength: [4]
    luhn: false
  }
)
