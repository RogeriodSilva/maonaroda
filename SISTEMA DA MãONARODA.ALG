Algoritmo "Sistema da M�oNaRoda"
// Disciplina  :L�gica de Programa��o
// Professor   : WELLINGTON
// Descri��o   : Adminstra��o do sistema da m�o na roda
// Autor(a)    : Rog�rio, David, Layene & Ma�sa
// Data atual  : 22/03/2022
Var

   //                        Variaveis

   mINT: vetor[1..100] de inteiro
   mREAL: vetor[1..100] de real

   clienteInfo: vetor[1..100] de caracter
   carrosLista: vetor[1..100,1..10] de caracter

   programa:logico
   submenu, resposta:caracter

   //                      Procedimentos
procedimento TabelaDeCarros

inicio
   mINT[1] <- 1

   escreval("<<------------------>>> Tabela de Carros <<<------------------>>")
   escreval()

   repita
      se(carrosLista[mINT[1],1] <> "")entao
         escreval("  Cod.",numpcarac(mINT[1]))
         escreval("     Nome: ", carrosLista[mINT[1],1])
         escreval("     Pre�o: R$ ", carrosLista[mINT[1],2])
         escreval("     Ano: ",carrosLista[mINT[1],3])
         escreval("     Marca: ", carrosLista[mINT[1],4])
         escreval("     Grupo: ",carrosLista[mINT[1],5])
         escreval()

         mINT[1] <- mINT[1] + 1

      senao
         mINT[1] <- 50

      fimse

   ate mINT[1] >= 50

   escreval("<<-------------------------->>>   <<<-------------------------->>")
   escreval()
fimprocedimento


Inicio

   //                         Fun��es

fun��o TAXAS(valor, taxa, meses:real; tipu:caracter):real
//Fun��o de TAXAS: Calcula Desconto, Juro Composto ou Juro Simples

inicio
   escolha(tipu)

   caso "D"
      //Desconto
      valor <- valor-(valor*taxa/100)

   caso "JS"
      //Juros Simples
      valor <- valor+(taxa*meses)

   caso "JC"
      //Juros Composto
      valor <- valor*(1+(taxa/100))^meses
   fimescolha

   retorne valor
fimfun��o

fun��o IDADE():logico
//Fun��o de IDADE: Verifica se o cliente � maior de idade.

inicio
   se(caracpnum(clienteInfo[2]) >= 18)entao
      retorne verdadeiro

   senao
      retorne falso
   fimse
fimfun��o




//                      Pr�-Inicializa��o
carrosLista[1,1] <- "Fusca"
carrosLista[1,2] <- "11900"
carrosLista[1,3] <- "1972"
carrosLista[1,4] <- "Volkswagen"
carrosLista[1,5] <- "A"

carrosLista[2,1] <- "Celta"
carrosLista[2,2] <- "17500"
carrosLista[2,3] <- "2008"
carrosLista[2,4] <- "Chevrolet"
carrosLista[2,5] <- "A"


//                          Sistema

programa <- verdadeiro

// -- Coletando informa��o do clientes  --
escreval("              ..: COLETANDO INFORMA��O DO CLIENTE :..")
escreval()

escreva("Digite o seu NOME: ")
leia(clienteInfo[1])

escreva("Digite a sua IDADE: ")
leia(clienteInfo[2])

escreva(clienteInfo[1], ", voc� possui CNH tipo B?(S - SIM, N - N�O)")
leia(resposta)

se(resposta = "N")entao
   escreval()
   escreval("Desculpa mas voc� pode entrar em nosso sistema,")
   escreval("necessita de uma CNH.")

   escreval()
   escreval("Aperte ENTER para finalizar o programa")
   programa <- falso
   leia(resposta)
fimse

aleatorio 10000000,99999999
leia(mINT[1])
aleatorio off

clienteInfo[3] <- numpcarac(mINT[1])

limpatela


enquanto programa fa�a

   limpatela
   escreval(" |||||||||||||||||||||||||||||||||||||||||||||||")
   escreval(" ||                                           ||")
   escreval(" ||  Seja Bem-Vindo ao Sistema da M�ONARODA   ||")
   escreval(" ||                                           ||")
   escreval(" |||||||||||||||||||||||||||||||||||||||||||||||")

   escreval()
   escreval(" CNPJ 12.345.678/0001-23")
   escreval(" 2022 � M�ONARODA - Todos direitos Reservados")

   escreval()
   escreval()
   escreval(" Ol�, ", clienteInfo[1])
   escreval(" N� ", clienteInfo[3])

   escreval()
   escreval("                      ..: MENU :..")
   escreval(" 1 - Vendas & Algueis")
   escreval(" 2 - Fale Conosco")
   escreval(" 3 - FAQ")
   escreval(" 4 - Sobre N�s")
   escreval(" 5 - Administra��o")
   escreval(" 6 - Sair")

   escreval()
   escreva("Digite o n�mero de uma op��o: ")
   leia(resposta)

   escolha(caracpnum(resposta))

   caso 1
      //Entrou SUBMENU de 'Vendas & Alugueis'
      submenu <- "ALUGUEIS&COMPRA"


      enquanto submenu = "ALUGUEIS&COMPRA" fa�a
         limpatela

         escreval("                    ..: MENU > VENDAS & ALUGUEIS :..")
         escreval()

         escreval(" 1 - Comprar")
         escreval(" 2 - Alugar")
         escreval(" 3 - Simula��o")
         escreval(" 4 - Voltar ao Menu Principal")

         escreval()
         escreva(" Digite o n�mero de uma op��o: ")
         leia(resposta)

         escolha(caracpnum(resposta))fa�a

         caso 1
            //Entrou no SUBMENU de 'Comprar'
            //- 'Se' chamando a fun��o IDADE()
            se(IDADE())entao
               submenu <- "/COMPRA"

               enquanto submenu = "/COMPRA" fa�a

                  limpatela
                  escreval("                    ..: MENU > VENDAS & ALUGUEIS > COMPRAR :..")
                  escreval()

                  TabelaDeCarros

                  escreval("              *OBS: Digite 0 para voltar*")
                  escreva(" Digite o Cod. do carro que deseja: ")
                  leia(resposta)

                  escolha(caracpnum(resposta))

                  caso 0
                     submenu <- "ALUGUEIS&COMPRA"

                  outrocaso
                     limpatela
                     escreval("                    ..: MENU > VENDAS & ALUGUEIS > COMPRAR :..")
                     escreval()

                     //Atribuindo o Cod. do carro em uma variavel
                     mINT[1] <- caracpnum(resposta)

                     //Atribuindo o Pre�o do carro em uma varivel
                     mREAL[1] <- caracpnum(carrosLista[mINT[1],2])

                     //Exibindo as informa��o do carro
                     escreval(" >>> Ficha de Informa��o: ", carrosLista[mINT[1],4], " ",carrosLista[mINT[1],1], " <<<")
                     escreval("      - Pre�o: R$", mREAL[1])
                     escreval("      - Ano: ", carrosLista[mINT[1],3])

                     escreval()

                     escreval("                 >>[� Vista]<<")
                     escreval()
                     escreval(" [Dinheiro] - R$ ", TAXAS(mREAL[1],12,0,"D"), " (12% de Desconto)")
                     escreval(" [D�bito] - R$ ", TAXAS(mREAL[1],9,0,"D"), " (9% de Desconto)")

                     escreval()
                     
                     escreval("                 >> [Parcelado] <<")
                     escreval("                   Juros: 6% a.m")
                     
                     escreval()

                     para mINT[2] de 6 ate 48 passo 6 fa�a
                          //TAXAS(30000,6,,"JC")
                        mREAL[2] <- TAXAS(mREAL[1],6,mINT[2],"JC")
                        escreval(" x",numpcarac(mINT[2]), " - R$ ", mREAL[2]:1:2, " (+R$", (mREAL[2]-(mreal[1])):1:2,")")
                     fimpara

                     escreval()

                     escreval("Deseja reservar este carro?(S - SIM, N - N�O)")
                     leia(resposta)

                     escolha(resposta)

                     caso "s", "S"

                        limpatela
                        escreval("                    ..: MENU > VENDAS & ALUGUEIS > COMPRA :..")
                        escreval()
                        escreval(" Registrando pedido...")

                        timer(2*1000)
                        timer(0)

                        limpatela
                        escreval("                    ..: MENU > VENDAS & ALUGUEIS > COMPRA :..")
                        escreval()

                        escreval(" Pedido N�", clienteInfo[3], " registrado com sucesso!")
                        escreval(" Carro reservado: ", carrosLista[mINT[1],4], " ", carrosLista[mINT[1],1],", ",carrosLista[mINT[1],3])
                        escreval(" Reserva v�lida por 15 dias")
                        escreval()

                        escreval(" V� em uma das nossas ag�ncias para finalizar")
                        escreval(" o seu pedido e fazer a retirada do carro, basta")
                        escreval(" levar o seu N� de pedido e fazer o pagamento.")

                        escreval()
                        escreval("Aperte ENTER para voltar ao menu principal")
                        leia(resposta)

                        submenu <- ""
                     fimescolha
                  fimescolha
               fimenquanto

            senao
               limpatela
               escreval("                    ..: MENU > VENDAS & ALUGUEIS > COMPRA :..")
               escreval()
               escreval(">>> Menu Bloqueado - Cliente � Menor de idade")

               timer(3*1000)
               timer(0)

            fimse
         caso 2
            //Entrou no SUBMENU de 'Alugar'
            se(IDADE())entao

               submenu <- "/ALUGAR"

               enquanto submenu = "/ALUGAR" fa�a

                  limpatela
                  escreval("                    ..: MENU > VENDAS & ALUGUEIS > ALUGAR :..")
                  escreval()

                  TabelaDeCarros

                  escreval("              *OBS: Digite 0 para voltar*")
                  escreva(" Digite o Cod. do carro que deseja: ")
                  leia(resposta)

                  escolha(caracpnum(resposta))

                  caso 0
                     submenu <- "ALUGUEIS&COMPRA"

                  outrocaso

                     limpatela
                     escreval("                    ..: MENU > VENDAS & ALUGUEIS > COMPRAR :..")
                     escreval()

                     //Atribuindo o Cod. do carro em uma variavel
                     mINT[1] <- caracpnum(resposta)

                     //Atribuindo o Pre�o do carro em uma varivel
                     mREAL[1] <- caracpnum(carrosLista[mINT[1],2])

                     //Exibindo as informa��o do carro
                     escreval(" >>> Ficha de Informa��o: ", carrosLista[mINT[1],4], " ",carrosLista[mINT[1],1], " <<<")
                     escreval("      - Pre�o: R$", mREAL[1])
                     escreval("      - Ano: ", carrosLista[mINT[1],3])

                     escreval()

                     escreval(" Aluguel: R$ ", (mREAL[1]*2.5/100):1:2)
                     escreval(" Vencimento: 30 dias ap�s o pagamento.")

                     escreval()
                     escreval("Aperte ENTER para voltar")
                     leia(resposta)

                     submenu <- "ALUGUEIS&COMPRA"
                  fimescolha
               fimenquanto
            senao

               limpatela
               escreval("                    ..: MENU > VENDAS & ALUGUEIS > ALUGAR :..")
               escreval()
               escreval(">>> Menu Bloqueado - Cliente � Menor de idade")

               timer(3*1000)
               timer(0)

            fimse

         caso 3
            //Entrou no SUBMENU de 'Simul��o'
            submenu <- "/SIMULA��O"

            enquanto submenu = "/SIMULA��O" fa�a

               limpatela
               escreval("                    ..: MENU > VENDAS & ALUGUEIS > SIMULA��O :..")
               escreval()

               TabelaDeCarros

               escreval("              *OBS: Digite 0 para voltar*")
               escreva(" Digite o Cod. do carro que deseja: ")
               leia(resposta)

               escolha(caracpnum(resposta))

               caso 0
                  submenu <- "ALUGUEIS&COMPRA"

               outrocaso

                  limpatela
                  escreval("                    ..: MENU > VENDAS & ALUGUEIS > SIMULA��O :..")
                  escreval()

                  //Atribuindo o Cod. do carro em uma variavel
                  mINT[1] <- caracpnum(resposta)

                  //Atribuindo o Pre�o do carro em uma varivel
                  mREAL[1] <- caracpnum(carrosLista[mINT[1],2])

                  //Exibindo as informa��o do carro
                  escreval(" >>> Ficha de Informa��o: ", carrosLista[mINT[1],4], " ",carrosLista[mINT[1],1], " <<<")
                  escreval("      - Pre�o: R$", mREAL[1])
                  escreval("      - Ano: ", carrosLista[mINT[1],3])

                  escreval()

                  escreva(" Digite o valor de entrada: R$ ")
                  leia(mREAL[2])

                  //Verificando se o valor de entrada � maior que
                  //o pre�o do carro, caso seja o valor de entrada
                  //ser� o VALOR DO CARRO menos 9%

                  se(mREAL[2] >= mREAL[1])entao
                     mREAL[2] <- mREAL[1]-(mREAL[1]*9/100)
                  fimse

                  escreval()
                  escreval("                    >>[Parcelas]<<")
                  escreval()
                  escreval("                Juros por m�s:", 6, "%")
                  escreval("            Valor de entrada: R$ ", mREAL[2])
                  escreval()

                  para mINT[2] de 6 ate 48 passo 6 fa�a
                     mREAL[3] <- TAXAS(mREAL[1]-mREAL[2],6,mINT[2],"JC")
                     escreval(" x",numpcarac(mINT[2]), " - R$ ", mREAL[3]:1:2, " (+R$", (mREAL[3]-(mREAL[1])):1:2,")")
                  fimpara

                  escreval()

                  escreval("Aperte ENTER para voltar")
                  leia(resposta)

                  submenu <- "ALUGUEIS&COMPRA"

               fimescolha
            fimenquanto

         caso 4
            //Voltando ao MENU PRINCIPAL
            submenu <- ""

         fimescolha
      fimenquanto

   caso 2
      //Entrou SUBMENU de 'Fale conosco'
      limpatela

      escreval("                 ..: MENU > CONTATOS :..")
      escreval()

      escreval("Email: maonaroda@gmail.com")
      escreval("Telefone: 31 3523-4321")
      escreval("Whatsapp: 31 9 9435-3421")
      escreval("Rede Sociais: @Mao_na_roda")
      escreval()
      escreval("Loja f�sica: Avenida Amazonas, 1245, centro BH")

      escreval()
      escreval("Aperte ENTER para voltar")
      leia(resposta)

   caso 3
      //Entrou SUBMENU de 'FAQ'
      submenu <- "FAQ"

      enquanto submenu = "FAQ" fa�a
         limpatela

         escreval("                    ..: MENU > PERGUNTAS FREQUENTES :..")
         escreval()

         escreval(" 1 - Pr�-Requisitos")
         escreval(" 2 - Reserva")
         escreval(" 3 - Devolu��o")
         escreval(" 4 - Ag�ncias")
         escreval(" 5 - Voltar")

         escreval()
         escreva("Digite o n�mero de uma op��o: ")
         leia(resposta)

         limpatela
         escreval("                    ..: MENU > PERGUNTAS FREQUENTES :..")
         escreval()

         escolha(caracpnum(resposta))

         caso 1

            escreval("'O que � necess�rio para alugar um carro da M�oNaRoda?'")
            escreval("   Os requisitos m�nimos para alugar um carro da Localiza s�o:")
            escreval("   - Idade m�nima de 18 anos, mediante inclus�o de adicional Condutor Jovem para condutores at� 20 anos;")
            escreval("   - Tempo de CNH: sem tempo m�nimo. Habilita��es provis�rias e definitivas s�o v�lidas;")
            escreval("   - Sujeito � aprova��o de cr�dito.")

            escreval()

            escreval("'Quais s�o as formas de pagamento dispon�veis para alugar um carro?'")
            escreval("  Voc� pode pagar:")
            escreval("  - Loca��o de at� 30 dias como pessoa f�sica � � vista ou ")
            escreval("    parcelado em at� 6x sem juros nos cart�es de cr�dito American Express, Visa, Mastercard, Diners Club International e Elo, emitidos no Brasil.")
            escreval("  N�o s�o aceitos cart�es Corporate/Empresarial, Pernambucanas e cart�es pr�-pagos.")
            escreval("  - Loca��o acima de 30 dias como pessoa f�sica;")
            escreval("  - Loca��o como pessoa jur�dica pode ser � vista, parcelado no cart�o de cr�dito ou faturado conforme condi��es contratuais.")

            escreval()

            escreval("'� poss�vel efetuar o pagamento do aluguel de carro pelo site?'")
            escreval(" - O pagamento � sempre pessoalmente em nossas lojas, via cart�o de cr�dito f�sico ou via boleto banc�rio, a depender do tipo de loca��o.")

         caso 2

            escreval("'Como � feita a reserva para aluguel de carros?'")
            escreval(" - Voc� pode fazer sua reserva em nossas lojas, apresentando o seu c�digo do peddido")

            escreval()

            escreval("'Como fa�o para consultar/ alterar e cancelar uma reserva de um carro feita pelo site ou APP?'")
            escreval(" - O podedido ser� cancelado ap�s 30 dias caso n�o apresente o c�digo de pedido em uma de nossas lojas")

            escreval()

            escreval("'O que acontece se eu n�o comparecer para retirada da minha reserva?'")
            escreval(" - Caso voc� n�o se apresente em uma de nossas lojas, seu n�mero de pedido ser� cancelado dentro de um prazo de 30 dias ")

         caso 3

            escreval("'Posso devolver o carro em uma ag�ncia diferente da ag�ncia de retirada?'")
            escreval("  Claro, � super poss�vel.")
            escreval("  - Voc� pode retirar o carro em uma ag�ncia e devolver em outra. Para isso, nosso sistema")
            escreval("  ir� calcular uma taxa adicional para este servi�o, que varia de acordo com a dist�ncia e o grupo do carro.")

            escreval()

            escreval("'Instalei acess�rios no meu carro. Preciso retirar para fazer a devolu��o?'")
            escreval(" - Sim. Se voc� optou por instalar acess�rios no seu carro, na devolu��o, � necess�rio que ele esteja ")
            escreval("  sem nenhum desses itens. Caso contr�rio, haver� cobran�a extra para retirada dos itens.")

            escreval()

            escreval("'Qual � o prazo m�ximo para devolu��o do carro e quais despesas incidir�o na loca��o caso a devolu��o ocorra ap�s esse prazo?'")
            escreval(" - A di�ria do aluguel de um carro da M�oNaRoda � de 24 horas, com at� 1 (uma) hora de toler�ncia a contar a partir da hora da retirada;")
            escreval(" - A partir da 25� hora da retirada do carro, incidir� cobran�a de hora extra, calculada na propor��o de 1/5 do valor da di�ria para cada hora extra,")
            escreval("  sendo cobrada, inclusive, a hora de toler�ncia, quando devolvido ap�s as 25 horas de loca��o.")

         caso 4

            escreval("'Em quais pa�ses da Am�rica Latina posso contar com o servi�o de aluguel de carros da M�oNaRoda?'")
            escreval(" - A M�oNaRoda est� presente no Brasil sob o nome de M�oNaRoda Rent a Car,")
            escreval("   com 50 ag�ncias distribu�das nos principais aeroportos e cidades do pa�s.")

            escreval()

            escreval("'A M�oNaRoda possui ag�ncias de aluguel de carros em aeroportos?'")
            escreval(" - Sim. A M�oNaRoda est� presente em todos os principais aeroportos do pa�s.")

            escreval()

            escreval("'Existe diferen�a de tarifas entre as cidades nas quais a M�oNaRoda tem ag�ncias?'")
            escreval(" - Alguns fatores influenciam nos valores das tarifas, tais como: estradas em mau estado de conserva��o, maresia e outras intemp�ries.")
            escreval("   Isso resulta em valores de tarifas adequados a cada regi�o. As regi�es s�o divididas em Regional I e Regional II.")

            escreval()

            escreval("'O que � o Shuttle Service?'")
            escreval(" - Em alguns aeroportos, a M�oNaRoda oferece o servi�o de Shuttle Service. Com esse servi�o, voc� � conduzido a confort�veis instala��es para retirar o seu carro, ")
            escreval("   longe do estressante ambiente do aeroporto.")

         caso 5
            submenu <- ""
         fimescolha

         se((caracpnum(resposta) > 0) e (caracpnum(resposta) <= 4))entao
            escreval()
            escreval("Aperte ENTER para voltar")
            leia(resposta)
         fimse


      fimenquanto

   caso 4
      //Entrou SUBMENU de 'Sobre N�s'
      limpatela
      escreval("                    ..: MENU > SOBRE N�S :..")
      escreval()

      escreval(" A  empresa m�o na roda foi fundada em 1987, ele j� conta com mais de 50 ag�ncias")
      escreval(" por todo o Brasil. Uma das ag�ncias mais flex�veis em aluguel de carros do pa�s.")
      escreval(" Contamos com os melhores carros e o melhor atendimento do mercado.")

      escreval()
      escreval("Aperte ENTER para voltar")
      leia(resposta)

   caso 5
      //Entrou SUBMENU de 'Administra��o'
      limpatela
      escreval("                    ..: MENU > ADMINISRTA��O :..")
      escreval()

      escreva("Digite seu ID de funcionario: ")
      leia(resposta)

      se(resposta = "1234")entao
         submenu <- "ADMIN"

         enquanto submenu = "ADMIN" fa�a

            limpatela
            escreval("                    ..: MENU > ADMINISRTA��O :..")
            escreval()

            escreval(" 1 - Adicionar um novo carro a tabela")
            escreval(" 2 - Voltar")

            escreval()
            escreva("Digite o n�mero de uma op��o: ")
            leia(resposta)

            escolha(caracpnum(resposta))

            caso 1
               //Adicionando um carro nomvo
               limpatela
               escreval("                 ..: MENU > ADMINISRTA��O > ADICIONAR CARRO :..")
               escreval()

               mINT[1] <- 1

               repita
                  //Procurando uma celula v�zia na matriz
                  //para poder amarzenar o novo carro
                  se(carrosLista[mINT[1],1] = "")entao

                     escreva("Digite o NOME do carro: ")
                     leia(carrosLista[mINT[1],1])

                     escreva("Digite o PRE�O do carro: R$")
                     leia(carrosLista[mINT[1],2])

                     escreva("Digite o ANO do carro: ")
                     leia(carrosLista[mINT[1],3])

                     escreva("Digte a MARCA do carro: ")
                     leia(carrosLista[mINT[1],4])

                     escreva("Digite o GRUPO do carro: ")
                     leia(carrosLista[mINT[1],5])

                     limpatela
                     escreval("            ..: MENU > ADMINISRTA��O > ADICIONAR CARRO :..")
                     escreval()

                     escreval("Carro adicionado com sucesso: Cod.",numpcarac(mINT[1]))
                     mINT[1] <- 50
                     timer(2*1000)
                     timer(0)

                  senao
                     mINT[1] <- mINT[1] + 1
                  fimse

               ate mINT[1] = 50

            caso 2
               submenu <- ""

            fimescolha
         fimenquanto

      senao
         //Caso n�o encontre o ID de funcionario digitado
         //Exibir� esta messagem
         limpatela
         escreval("                    ..: MENU > ADMINISRTA��O :..")
         escreval()
         escreval(" *ID n�o encontrado..*")

         timer(2*1000)
         timer(0)
      fimse

   caso 6
      limpatela

      programa <- falso
      escreval(">>> Desligando Sistema..")

      timer(3 * 1000)
      timer(0)

      limpatela

   fimescolha
fimenquanto

Fimalgoritmo