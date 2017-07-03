login = Login.new

Dado(/^que eu esteja na home da aplicação$/) do
  visit 'https://the-internet.herokuapp.com/login'
end

Dado (/^eu realizar o login com um usuério válido$/) do
  login.logar(ENV['USER'], ENV['PASS'])
end

Dado(/^que eu esteja logado na aplicação$/) do
  steps %(
      Dado que eu esteja na home da aplicação
      Quando eu realizar o login com um usuério válido
  )
end

Então(/^verei a mensagem:$/) do |mensagem|
  expect(page).to have_content mensagem
end

Quando(/^eu realizar o logout$/) do
  login.logout
end


