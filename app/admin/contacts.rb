ActiveAdmin.register Contact do
  permit_params :address_id, :name, :phone, :fax, :text, :image

end
