module ApplicationHelper
  def activeclass(tab)
    active = case tab
      when 'about'
        @cms_page.try(:slug) == 'about'
      when 'getting_around'
        @cms_page.try(:slug) == 'getting_around'
      when 'businesses'
        @cms_page.try(:slug) == 'businesses'
    end

    'active' if active
  end
end
