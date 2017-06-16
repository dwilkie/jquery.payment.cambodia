assert = require('assert')

describe 'jquery.payment', ->
  describe 'Validating a card number', ->
    it 'should validate ACLEDA cards', ->
      assert($.payment.validateCardNumber('9116013344556677'), 'acleda')
      assert($.payment.validateCardNumber('9116043344556677'), 'acleda')
      assert($.payment.validateCardNumber('91160133445566778'), 'acleda')
      assert($.payment.validateCardNumber('91160433445566778'), 'acleda')

  describe 'Getting a card type', ->
    it 'should return correct type for acleda cards', ->
      assert.equal($.payment.cardType('9116013344556677'), 'acleda')
      assert.equal($.payment.cardType('9116043344556677'), 'acleda')
      assert.equal($.payment.cardType('91160133445566778'), 'acleda')
      assert.equal($.payment.cardType('91160433445566778'), 'acleda')
