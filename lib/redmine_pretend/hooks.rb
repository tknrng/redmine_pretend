module RedminePretend
  class RedminePretendHookListener < Redmine::Hook::ViewListener
    render_on :view_users_form, partial: 'pretend/pretend_to'
    render_on :view_account_left_bottom, partial: 'pretend/pretend_to'
    render_on :view_layouts_base_html_head, partial: 'pretend/unpretend'
  end
end
