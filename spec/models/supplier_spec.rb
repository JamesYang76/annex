# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Supplier, type: :model do
  it { should have_attribute :name }
  it { should have_attribute :code }
  it { should have_many :stocks }
  it { should have_many :categories }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:code).case_insensitive }
  end
end
