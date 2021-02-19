module Seeder
  class Stocks
    def initialize(yaml_path, logger)
      @logger = logger
      @data = YAML.load_file(Rails.root.join(yaml_path))
    end

    def seed
      @data.fetch('categories').each do |category_data|
        category = Category.find_by(code: category_data.fetch('code'))
        continue if category.nil?
        category_data.fetch('suppliers').each do |supplier_data|
          supplier = Supplier.find_by(code: supplier_data.fetch('code'))
          continue if supplier.nil?
          supplier_data.fetch('stocks').each do |stock_data|
            stock = Stock.find_or_initialize_by(supplier: supplier, category: category, code: stock_data.fetch('code'))
            stock.name = stock_data.fetch('name')
            stock.save!
            log(stock)
          end
        end
      end
    end

    private

    def log(model)
      @logger.info "Updated:#{model}"
    end
  end
end
