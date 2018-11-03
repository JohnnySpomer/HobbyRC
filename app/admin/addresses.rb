ActiveAdmin.register Address do
    permit_params :addressId, :address, :city, :province, :postalCode, :country
end
