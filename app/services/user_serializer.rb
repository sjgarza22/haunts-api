class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :email, :password
end