require_relative "base_api"

class Singup < BaseApi
   

    def createuser(payload)

       # payload = { name: nome, email: email, password: pass}


        return self.class.post(
            "/signup", 
            body: payload.to_json,
            headers: {
             "Content-type": "application/json",
            },
        )
    end
end