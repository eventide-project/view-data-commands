require_relative './automated_init'

context "Controls" do
  empty_module_methods = Module.new.methods

  control_methods = proc { |mod|
    mod.methods - empty_module_methods
  }

  is_control = proc { |mod|
    if mod.instance_of?(Module)
      control_methods.call(mod).any?
    else
      false
    end
  }

  traverse_controls = proc { |mod=nil, &block|
    mod ||= Controls

    inner_mods = mod.constants.map { |name| mod.const_get(name) }

    controls = inner_mods.select(&is_control)
    controls.each(&block)

    inner_mods.each do |inner_mod|
      traverse_controls.(inner_mod, &block)
    end
  }

  traverse_controls.() do |control|
    context control.name do
      control_methods.call(control).each do |control_method|
        context "##{control_method}" do
          result = control.public_send(control_method)

          test "Control is not nil" do
            refute(result.nil?)
          end

          if result.is_a?(Schema)
            result.attributes.each do |name, value|
              context "Attribute: #{name}" do
                test "Value is not nil" do
                  refute(value.nil?)
                end
              end
            end
          end
        end
      end
    end
  end
end
