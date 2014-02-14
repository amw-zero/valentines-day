

module ApplicationHelper

  def get_next_path
    path = case request.env['PATH_INFO']
             when '/' then beak_path
             when beak_path then huggy_path
             when huggy_path then lovey_path
           end
    path
  end

  def get_back_path
    path = case request.env['PATH_INFO']
             when beak_path then '/'
             when huggy_path then beak_path
             when lovey_path then huggy_path
           end
  end
end
