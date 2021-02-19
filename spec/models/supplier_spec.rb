require 'rails_helper'

RSpec.describe Supplier, type: :model do
  it { is_expected.to have_attribute :name }
  it { is_expected.to respond_to :stocks }
  it { is_expected.to respond_to :categories }
end
