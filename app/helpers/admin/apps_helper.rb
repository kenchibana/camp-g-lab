module Admin::AppsHelper
  def sidebar_activate(sidebar_link_url)
    current_url = request.headers['PATH_INFO']
    if current_url.match(sidebar_link_url)
      ' class="active"'
    else
      ''
    end
  end

  def users
    "Users"
  end
  def article
    "Article"
  end
  def gaers
    "Gears"
  end
  def campsites
    "Campsites"
  end
end
