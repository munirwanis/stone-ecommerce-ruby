module Gateway

  class CreditCard

    attr_accessor :InstantBuyKey

    attr_accessor :CreditCardNumber

    attr_accessor :HolderName

    attr_accessor :SecurityCode

    attr_accessor :ExpMonth

    attr_accessor :ExpYear

    attr_accessor :CreditCardBrand

    attr_accessor :BillingAddress

    def initialize
      @BillingAddress = BillingAddress.new
    end

    def to_json
      hash = {}
      instance_variables.each { |var| hash[var.to_s.delete('@')] = instance_variable_get(var) }
      hash
    end
  end
end