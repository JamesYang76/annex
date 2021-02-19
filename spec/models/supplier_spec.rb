# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Supplier, type: :model do
  it { is_expected.to have_attribute :name }
  it { is_expected.to have_attribute :code }
  it { is_expected.to respond_to :stocks }
  it { is_expected.to respond_to :categories }
end
