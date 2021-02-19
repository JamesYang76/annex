require 'rails_helper'

RSpec.describe Stock, type: :model do
  it { is_expected.to have_attribute :name }
  it { is_expected.to respond_to :supplier }
  it { is_expected.to respond_to :category }
end
