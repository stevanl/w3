module ApplicationHelper
  def link_to_twitter(profile)
    return nil unless !profile.nil?
    link_to profile, "http://twitter.com/#{profile}", rel: "nofollow"
  end
end
