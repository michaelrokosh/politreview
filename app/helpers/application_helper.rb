module ApplicationHelper
	def on_the_edit_page?
		controller_name == 'news' && action_name == 'new' || action_name == 'edit'
	end
end
