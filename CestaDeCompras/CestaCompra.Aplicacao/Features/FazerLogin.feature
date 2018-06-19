﻿#language: pt-br

Funcionalidade: FazerLogin
	
Cenário:Sucesso no Login
Dado que eu consumidor acesso a página de entrada do sistema
E eu digito o  meu <login> 
E eu digito a  minha <senha>
Quando  eu pressiono o botão entrar
Então eu acesso a página do menu principal.

Cenário:Insucesso no Login - Login
Dado que eu consumidor acesso a página de entrada do sistema
E eu digito o meu <login> errado
E eu digito a minha <senha>
Quando eu pressiono o botão entrar
Então o sistema informa falha de login dados incorretos

Cenário:Insucesso no Login - Senha
Dado que eu consumidor acesso a página de entrada do sistema
E eu digito o meu <login> 
E eu digito a minha <senha> errada
Quando eu pressiono o botão entrar
Então o sistema informa falha de login dados incorretos