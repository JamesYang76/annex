# frozen_string_literal: true

module Seeder
  class Categories
    def initialize(yaml_path, logger)
      @logger = logger
      @data = YAML.load_file(Rails.root.join(yaml_path))
    end

    def seed
      @data.each do |category_data|
        category = Category.find_or_initialize_by(code: category_data.fetch('code'))
        category.name = category_data.fetch('name')
        category.save!
        log(category)
      end
    end

    private

    def log(model)
      @logger.info "Updated:#{model}"
    end
  end
end
