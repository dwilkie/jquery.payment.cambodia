assert = require('assert')

describe 'jquery.payment', ->
  describe 'Validating a card number', ->
    it 'should validate Wing cards', ->
      assert($.payment.validateCardNumber('5018188000001614'), 'wing')
    it 'should validate ACLEDA cards', ->
      assert($.payment.validateCardNumber('9116013344556677'), 'acleda')
      assert($.payment.validateCardNumber('9116043344556677'), 'acleda')
      assert($.payment.validateCardNumber('91160133445566778'), 'acleda')
      assert($.payment.validateCardNumber('91160433445566778'), 'acleda')

  describe 'Validating a CVC number', ->
    it 'should validate a four digit number with card type wing', ->
      topic = $.payment.validateCardCVC('1234', 'wing')
      assert.equal topic, true

    it 'should validate a three digit number with card type wing', ->
      topic = $.payment.validateCardCVC('123', 'wing')
      assert.equal topic, false

  describe 'Getting a card type', ->
    it 'should return correct type for wing cards', ->
      assert.equal($.payment.cardType('5018188000001614'), 'wing')
    it 'should return correct type for acleda cards', ->
      assert.equal($.payment.cardType('9116013344556677'), 'acleda')
      assert.equal($.payment.cardType('9116043344556677'), 'acleda')
      assert.equal($.payment.cardType('91160133445566778'), 'acleda')
      assert.equal($.payment.cardType('91160433445566778'), 'acleda')
