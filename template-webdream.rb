class mytemplate < Thor
  include Thor::Actions
   #Define arguments and options
   argument :name
   class_option :test_framework, :default => :test_unit

  def self.source_root
      File.dirname(__FILE__)
  end

  def instalar_config
    if yes?("Quieres instalar la configuracion")
        copy_file  "config/modelo", "app/models/config"
        copy_file  "config/config_controller", "app/controllers/config_controller"
        directory  "view/", "app/view/config_view.html"
    else
       say("Sin config entonces!!", GREEN)
    end
  end

  def instalar_dc-config
  end

  def instalar_blog
  end

  def instalar_devise
  end

  def instalar_categorias
  end

  def instalar_articulos
  end


end
