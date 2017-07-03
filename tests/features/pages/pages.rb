include RSpec::Matchers

class Login < SitePrism::Page
  element :username, "#username"
  element :password, "#password"
  element :login, "button.radius"

  def logar(usuario, senha)
    username.set(usuario)
    password.set(senha)
    login.click
  end
  
  def logout
    find("i", :text => "Logout").click
  end
end
