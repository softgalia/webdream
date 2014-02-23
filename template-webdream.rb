# GEMas

gem 'execjs'
gem 'therubyracer'

    # cambios en config para que apunte a la base de datos del cliente
    # cambios en el fichero inflector para que pluralize correctametne
    inject_into_file 'config/initializers/inflections.rb', before: "# These inflection rules are supported but not enabled by default:\n" do <<-'CODE'

      ActiveSupport::Inflector.inflections do |inflect|
         inflect.irregular 'configuracion', 'configuraciones'
      end
      CODE
    end
    generate "scaffold", "configuracion empnomcom:string empnomsoc:string"
