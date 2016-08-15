module ApplicationHelpers
  def views_dir
    self.class.name.underscore.gsub('_controller', '')
  end
end
