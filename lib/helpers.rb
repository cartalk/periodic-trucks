module SiteHelpers

  def gvwr_by_id(id)
    data.gvwr_classes.detect {|c| c.id == id }
  end

# Middleman 
  def svg(name)
    root = Middleman::Application.root 
    file_path = "#{root}/source/images/#{name}.svg" 
    return File.read(file_path) if File.exists?(file_path)
    '(not found)' 
  end


# TAKEN FROM RAILS API DOCS
  def link_to_unless(condition, name, options = {}, html_options = {}, &block)
    if condition
      if block_given?
        block.arity <= 1 ? capture(name, &block) : capture(name, options, html_options, &block)
      else
        name
      end
    else
      link_to(name, options, html_options)
    end
  end

  def link_to_if(condition, name, options = {}, html_options = {}, &block)
    link_to_unless !condition, name, options, html_options, &block
  end

end
