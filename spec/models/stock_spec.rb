# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Stock, type: :model do
  it { should have_attribute :name }
  it { should have_attribute :code }
  it { should belong_to :supplier }
  it { should belong_to :category }

  describe 'validations' do
    subject { FactoryBot.create(:stock) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:code).case_insensitive.scoped_to %i[supplier_id category_id] }
  end
end
