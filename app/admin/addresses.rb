ActiveAdmin.register Address do
    permit_params :address, :city, :province_id, :postalCode, :country
end
