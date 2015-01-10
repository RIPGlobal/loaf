# encoding: utf-8

require 'spec_helper'

RSpec.describe Loaf::ViewExtensions, '.breadcrumb?' do
  it 'checks for breadcrumbs existance' do
    instance = DummyView.new
    expect(instance.breadcrumbs?).to eq(false)
    instance.breadcrumb 'Home', :home_path
    expect(instance.breadcrumbs?).to eq(true)
  end
end
