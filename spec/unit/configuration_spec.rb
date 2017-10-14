# encoding: utf-8

RSpec.describe Loaf::Configuration do
  it "allows to set and read attributes" do
    config = Loaf::Configuration.new

    config.crumb_length = 4

    expect(config.crumb_length).to eq(4)
  end

  it "accepts attributes at initialization" do
    options = { crumb_length: 12 }
    config = Loaf::Configuration.new(options)

    expect(config.crumb_length).to eq(12)
  end

  it "exports configuration as hash" do
    config = Loaf::Configuration.new
    expect(config.to_hash).to eq({
      capitalize: false,
      crumb_length: 30,
      locales_path: '/'
    })
  end
end
