require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to have_attribute :name }
  it { is_expected.to respond_to :stocks }
  it { is_expected.to respond_to :suppliers }
end
