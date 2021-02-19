module Seeder
  class Suppliers
    def initialize(yaml_path, logger)
      @logger = logger
      @data = YAML.load_file(Rails.root.join(yaml_path))
    end

    def seed
      @data.each do |supplier_data|
        supplier = Supplier.find_or_initialize_by(code: supplier_data.fetch('code'))
        supplier.name = supplier_data.fetch('name')
        supplier.save!
        log(supplier)
      end
    end

    private

    def log(model)
      @logger.info "Updated:#{model}"
    end
  end
end