ActiveAdmin.register Employee do
    permit_params :employeeId, :position, :customerid
end
