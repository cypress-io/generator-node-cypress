'use strict'

/* eslint-env mocha */
const <%= nameVar %> = require('.')
describe('<%= name %>', () => {
  it('write this test', () => {
    console.assert(<%= nameVar %>, 'should export something')
  })
})
