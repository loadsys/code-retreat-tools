var Demo = require('../lib/demo'),
    expect = require('chai').expect;

describe('Demo', function() {
  it('.method', function() {
    var demo = new Demo();
    expect(demo.method()).to.equal('demo response');
  });
});
