ActiveAdmin.register Address do
    permit_params :address, :city, :province, :postalCode, :country
end
