require 'spec_helper'
require 'demo'

describe Demo do
  it '#method' do
    assert_equal Demo.new.method, 'demo response'
  end
end
