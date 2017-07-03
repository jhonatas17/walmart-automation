# language: pt

Funcionalidade: Realizar login
      Sendo um usuário
      Posso logar no sistema herokuapp

@login
Cenario: Realizar login
  Dado que eu esteja na home da aplicação
  Quando eu realizar o login com um usuério válido
  Então verei a mensagem:
    """
    You logged into a secure area!
    
    """
@logout
Cenario: Realizar logout
  Dado que eu esteja logado na aplicação
  Quando eu realizar o logout
  Entao verei a mensagem:
    """
    You logged out of the secure area!
    
    """
 