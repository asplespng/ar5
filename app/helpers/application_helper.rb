module ApplicationHelpers
  def views_dir
    self.class.name.underscore.gsub('_controller', '')
  end

  def format_date(date)
    date.strftime('%m/%d/%Y')
  end
end
