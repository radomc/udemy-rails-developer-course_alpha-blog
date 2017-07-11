module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    gavatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    garatar_url = "https://secure.gravatar.com/avatar/#{gavatar_id}?s=#{size}"
    image_tag(garatar_url, alt: user.username, class: 'img-circle')
  end
end
