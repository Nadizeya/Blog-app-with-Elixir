defmodule BlogAppWeb.PostView do
	use BlogAppWeb, :view
	alias BlogApp.Posts
  

	def get_comments_count(post_id) do
		Posts.get_number_of_comments(post_id)
	end
end