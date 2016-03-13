module SiteHelpers

  def gvwr_by_id(id)
    data.gvwr_classes.detect {|c| c.id == id }
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
