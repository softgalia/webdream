class Newgem < Thor::Group
      include Thor::Actions

        # Define arguments and options
         argument :name
         class_option :test_framework, :default => :test_unit


  def self.source_root
      File.dirname(__FILE__)
  end

  def instalar_config
    if yes?("Quieres instalar la configuracion")
        copy_file  "config/modelo ", "app/models/config"

    else
        say "Shame on you…", :re
    end
  end



end
