module ActiveModel
  module Translation
    def human_attribute_name_with_foo attribute, options = {}
      human_attribute_name_without_foo attribute, options.merge( :default => attribute.to_s )
    end

    alias_method_chain :human_attribute_name, :foo
  end
end