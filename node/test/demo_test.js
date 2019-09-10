const Demo = require('../lib/demo');

describe('Demo', () => {
  it('.method does something', () => {
    const demo = new Demo();
    expect(demo.method()).toEqual('demo response');
  });
});
