Algoritmo "Sistema da MãoNaRoda"
// Disciplina  :Lógica de Programação
// Professor   : WELLINGTON
// Descrição   : Adminstração do sistema da mão na roda
// Autor(a)    : Rogério, David, Layene & Maísa
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
         escreval("     Preço: R$ ", carrosLista[mINT[1],2])
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

   //                         Funções

função TAXAS(valor, taxa, meses:real; tipu:caracter):real
//Função de TAXAS: Calcula Desconto, Juro Composto ou Juro Simples

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
fimfunção

função IDADE():logico
//Função de IDADE: Verifica se o cliente é maior de idade.

inicio
   se(caracpnum(clienteInfo[2]) >= 18)entao
      retorne verdadeiro

   senao
      retorne falso
   fimse
fimfunção




//                      Pré-Inicialização
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

// -- Coletando informação do clientes  --
escreval("              ..: COLETANDO INFORMAÇÃO DO CLIENTE :..")
escreval()

escreva("Digite o seu NOME: ")
leia(clienteInfo[1])

escreva("Digite a sua IDADE: ")
leia(clienteInfo[2])

escreva(clienteInfo[1], ", você possui CNH tipo B?(S - SIM, N - NÃO)")
leia(resposta)

se(resposta = "N")entao
   escreval()
   escreval("Desculpa mas você pode entrar em nosso sistema,")
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


enquanto programa faça

   limpatela
   escreval(" |||||||||||||||||||||||||||||||||||||||||||||||")
   escreval(" ||                                           ||")
   escreval(" ||  Seja Bem-Vindo ao Sistema da MÃONARODA   ||")
   escreval(" ||                                           ||")
   escreval(" |||||||||||||||||||||||||||||||||||||||||||||||")

   escreval()
   escreval(" CNPJ 12.345.678/0001-23")
   escreval(" 2022 © MÃONARODA - Todos direitos Reservados")

   escreval()
   escreval()
   escreval(" Olá, ", clienteInfo[1])
   escreval(" Nº ", clienteInfo[3])

   escreval()
   escreval("                      ..: MENU :..")
   escreval(" 1 - Vendas & Algueis")
   escreval(" 2 - Fale Conosco")
   escreval(" 3 - FAQ")
   escreval(" 4 - Sobre Nós")
   escreval(" 5 - Administração")
   escreval(" 6 - Sair")

   escreval()
   escreva("Digite o número de uma opção: ")
   leia(resposta)

   escolha(caracpnum(resposta))

   caso 1
      //Entrou SUBMENU de 'Vendas & Alugueis'
      submenu <- "ALUGUEIS&COMPRA"


      enquanto submenu = "ALUGUEIS&COMPRA" faça
         limpatela

         escreval("                    ..: MENU > VENDAS & ALUGUEIS :..")
         escreval()

         escreval(" 1 - Comprar")
         escreval(" 2 - Alugar")
         escreval(" 3 - Simulação")
         escreval(" 4 - Voltar ao Menu Principal")

         escreval()
         escreva(" Digite o número de uma opção: ")
         leia(resposta)

         escolha(caracpnum(resposta))faça

         caso 1
            //Entrou no SUBMENU de 'Comprar'
            //- 'Se' chamando a função IDADE()
            se(IDADE())entao
               submenu <- "/COMPRA"

               enquanto submenu = "/COMPRA" faça

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

                     //Atribuindo o Preço do carro em uma varivel
                     mREAL[1] <- caracpnum(carrosLista[mINT[1],2])

                     //Exibindo as informação do carro
                     escreval(" >>> Ficha de Informação: ", carrosLista[mINT[1],4], " ",carrosLista[mINT[1],1], " <<<")
                     escreval("      - Preço: R$", mREAL[1])
                     escreval("      - Ano: ", carrosLista[mINT[1],3])

                     escreval()

                     escreval("                 >>[Á Vista]<<")
                     escreval()
                     escreval(" [Dinheiro] - R$ ", TAXAS(mREAL[1],12,0,"D"), " (12% de Desconto)")
                     escreval(" [Débito] - R$ ", TAXAS(mREAL[1],9,0,"D"), " (9% de Desconto)")

                     escreval()
                     
                     escreval("                 >> [Parcelado] <<")
                     escreval("                   Juros: 6% a.m")
                     
                     escreval()

                     para mINT[2] de 6 ate 48 passo 6 faça
                          //TAXAS(30000,6,,"JC")
                        mREAL[2] <- TAXAS(mREAL[1],6,mINT[2],"JC")
                        escreval(" x",numpcarac(mINT[2]), " - R$ ", mREAL[2]:1:2, " (+R$", (mREAL[2]-(mreal[1])):1:2,")")
                     fimpara

                     escreval()

                     escreval("Deseja reservar este carro?(S - SIM, N - NÃO)")
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

                        escreval(" Pedido Nº", clienteInfo[3], " registrado com sucesso!")
                        escreval(" Carro reservado: ", carrosLista[mINT[1],4], " ", carrosLista[mINT[1],1],", ",carrosLista[mINT[1],3])
                        escreval(" Reserva válida por 15 dias")
                        escreval()

                        escreval(" Vá em uma das nossas agências para finalizar")
                        escreval(" o seu pedido e fazer a retirada do carro, basta")
                        escreval(" levar o seu Nº de pedido e fazer o pagamento.")

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
               escreval(">>> Menu Bloqueado - Cliente é Menor de idade")

               timer(3*1000)
               timer(0)

            fimse
         caso 2
            //Entrou no SUBMENU de 'Alugar'
            se(IDADE())entao

               submenu <- "/ALUGAR"

               enquanto submenu = "/ALUGAR" faça

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

                     //Atribuindo o Preço do carro em uma varivel
                     mREAL[1] <- caracpnum(carrosLista[mINT[1],2])

                     //Exibindo as informação do carro
                     escreval(" >>> Ficha de Informação: ", carrosLista[mINT[1],4], " ",carrosLista[mINT[1],1], " <<<")
                     escreval("      - Preço: R$", mREAL[1])
                     escreval("      - Ano: ", carrosLista[mINT[1],3])

                     escreval()

                     escreval(" Aluguel: R$ ", (mREAL[1]*2.5/100):1:2)
                     escreval(" Vencimento: 30 dias após o pagamento.")

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
               escreval(">>> Menu Bloqueado - Cliente é Menor de idade")

               timer(3*1000)
               timer(0)

            fimse

         caso 3
            //Entrou no SUBMENU de 'Simulção'
            submenu <- "/SIMULAÇÃO"

            enquanto submenu = "/SIMULAÇÃO" faça

               limpatela
               escreval("                    ..: MENU > VENDAS & ALUGUEIS > SIMULAÇÃO :..")
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
                  escreval("                    ..: MENU > VENDAS & ALUGUEIS > SIMULAÇÃO :..")
                  escreval()

                  //Atribuindo o Cod. do carro em uma variavel
                  mINT[1] <- caracpnum(resposta)

                  //Atribuindo o Preço do carro em uma varivel
                  mREAL[1] <- caracpnum(carrosLista[mINT[1],2])

                  //Exibindo as informação do carro
                  escreval(" >>> Ficha de Informação: ", carrosLista[mINT[1],4], " ",carrosLista[mINT[1],1], " <<<")
                  escreval("      - Preço: R$", mREAL[1])
                  escreval("      - Ano: ", carrosLista[mINT[1],3])

                  escreval()

                  escreva(" Digite o valor de entrada: R$ ")
                  leia(mREAL[2])

                  //Verificando se o valor de entrada é maior que
                  //o preço do carro, caso seja o valor de entrada
                  //será o VALOR DO CARRO menos 9%

                  se(mREAL[2] >= mREAL[1])entao
                     mREAL[2] <- mREAL[1]-(mREAL[1]*9/100)
                  fimse

                  escreval()
                  escreval("                    >>[Parcelas]<<")
                  escreval()
                  escreval("                Juros por mês:", 6, "%")
                  escreval("            Valor de entrada: R$ ", mREAL[2])
                  escreval()

                  para mINT[2] de 6 ate 48 passo 6 faça
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
      escreval("Loja física: Avenida Amazonas, 1245, centro BH")

      escreval()
      escreval("Aperte ENTER para voltar")
      leia(resposta)

   caso 3
      //Entrou SUBMENU de 'FAQ'
      submenu <- "FAQ"

      enquanto submenu = "FAQ" faça
         limpatela

         escreval("                    ..: MENU > PERGUNTAS FREQUENTES :..")
         escreval()

         escreval(" 1 - Pré-Requisitos")
         escreval(" 2 - Reserva")
         escreval(" 3 - Devolução")
         escreval(" 4 - Agências")
         escreval(" 5 - Voltar")

         escreval()
         escreva("Digite o número de uma opção: ")
         leia(resposta)

         limpatela
         escreval("                    ..: MENU > PERGUNTAS FREQUENTES :..")
         escreval()

         escolha(caracpnum(resposta))

         caso 1

            escreval("'O que é necessário para alugar um carro da MãoNaRoda?'")
            escreval("   Os requisitos mínimos para alugar um carro da Localiza são:")
            escreval("   - Idade mínima de 18 anos, mediante inclusão de adicional Condutor Jovem para condutores até 20 anos;")
            escreval("   - Tempo de CNH: sem tempo mínimo. Habilitações provisórias e definitivas são válidas;")
            escreval("   - Sujeito à aprovação de crédito.")

            escreval()

            escreval("'Quais são as formas de pagamento disponíveis para alugar um carro?'")
            escreval("  Você pode pagar:")
            escreval("  - Locação de até 30 dias como pessoa física – à vista ou ")
            escreval("    parcelado em até 6x sem juros nos cartões de crédito American Express, Visa, Mastercard, Diners Club International e Elo, emitidos no Brasil.")
            escreval("  Não são aceitos cartões Corporate/Empresarial, Pernambucanas e cartões pré-pagos.")
            escreval("  - Locação acima de 30 dias como pessoa física;")
            escreval("  - Locação como pessoa jurídica pode ser à vista, parcelado no cartão de crédito ou faturado conforme condições contratuais.")

            escreval()

            escreval("'É possível efetuar o pagamento do aluguel de carro pelo site?'")
            escreval(" - O pagamento é sempre pessoalmente em nossas lojas, via cartão de crédito físico ou via boleto bancário, a depender do tipo de locação.")

         caso 2

            escreval("'Como é feita a reserva para aluguel de carros?'")
            escreval(" - Você pode fazer sua reserva em nossas lojas, apresentando o seu código do peddido")

            escreval()

            escreval("'Como faço para consultar/ alterar e cancelar uma reserva de um carro feita pelo site ou APP?'")
            escreval(" - O podedido será cancelado após 30 dias caso não apresente o código de pedido em uma de nossas lojas")

            escreval()

            escreval("'O que acontece se eu não comparecer para retirada da minha reserva?'")
            escreval(" - Caso você não se apresente em uma de nossas lojas, seu número de pedido será cancelado dentro de um prazo de 30 dias ")

         caso 3

            escreval("'Posso devolver o carro em uma agência diferente da agência de retirada?'")
            escreval("  Claro, é super possível.")
            escreval("  - Você pode retirar o carro em uma agência e devolver em outra. Para isso, nosso sistema")
            escreval("  irá calcular uma taxa adicional para este serviço, que varia de acordo com a distância e o grupo do carro.")

            escreval()

            escreval("'Instalei acessórios no meu carro. Preciso retirar para fazer a devolução?'")
            escreval(" - Sim. Se você optou por instalar acessórios no seu carro, na devolução, é necessário que ele esteja ")
            escreval("  sem nenhum desses itens. Caso contrário, haverá cobrança extra para retirada dos itens.")

            escreval()

            escreval("'Qual é o prazo máximo para devolução do carro e quais despesas incidirão na locação caso a devolução ocorra após esse prazo?'")
            escreval(" - A diária do aluguel de um carro da MãoNaRoda é de 24 horas, com até 1 (uma) hora de tolerância a contar a partir da hora da retirada;")
            escreval(" - A partir da 25ª hora da retirada do carro, incidirá cobrança de hora extra, calculada na proporção de 1/5 do valor da diária para cada hora extra,")
            escreval("  sendo cobrada, inclusive, a hora de tolerância, quando devolvido após as 25 horas de locação.")

         caso 4

            escreval("'Em quais países da América Latina posso contar com o serviço de aluguel de carros da MãoNaRoda?'")
            escreval(" - A MãoNaRoda está presente no Brasil sob o nome de MãoNaRoda Rent a Car,")
            escreval("   com 50 agências distribuídas nos principais aeroportos e cidades do país.")

            escreval()

            escreval("'A MãoNaRoda possui agências de aluguel de carros em aeroportos?'")
            escreval(" - Sim. A MãoNaRoda está presente em todos os principais aeroportos do país.")

            escreval()

            escreval("'Existe diferença de tarifas entre as cidades nas quais a MãoNaRoda tem agências?'")
            escreval(" - Alguns fatores influenciam nos valores das tarifas, tais como: estradas em mau estado de conservação, maresia e outras intempéries.")
            escreval("   Isso resulta em valores de tarifas adequados a cada região. As regiões são divididas em Regional I e Regional II.")

            escreval()

            escreval("'O que é o Shuttle Service?'")
            escreval(" - Em alguns aeroportos, a MãoNaRoda oferece o serviço de Shuttle Service. Com esse serviço, você é conduzido a confortáveis instalações para retirar o seu carro, ")
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
      //Entrou SUBMENU de 'Sobre Nós'
      limpatela
      escreval("                    ..: MENU > SOBRE NÓS :..")
      escreval()

      escreval(" A  empresa mão na roda foi fundada em 1987, ele já conta com mais de 50 agências")
      escreval(" por todo o Brasil. Uma das agências mais flexíveis em aluguel de carros do país.")
      escreval(" Contamos com os melhores carros e o melhor atendimento do mercado.")

      escreval()
      escreval("Aperte ENTER para voltar")
      leia(resposta)

   caso 5
      //Entrou SUBMENU de 'Administração'
      limpatela
      escreval("                    ..: MENU > ADMINISRTAÇÃO :..")
      escreval()

      escreva("Digite seu ID de funcionario: ")
      leia(resposta)

      se(resposta = "1234")entao
         submenu <- "ADMIN"

         enquanto submenu = "ADMIN" faça

            limpatela
            escreval("                    ..: MENU > ADMINISRTAÇÃO :..")
            escreval()

            escreval(" 1 - Adicionar um novo carro a tabela")
            escreval(" 2 - Voltar")

            escreval()
            escreva("Digite o número de uma opção: ")
            leia(resposta)

            escolha(caracpnum(resposta))

            caso 1
               //Adicionando um carro nomvo
               limpatela
               escreval("                 ..: MENU > ADMINISRTAÇÃO > ADICIONAR CARRO :..")
               escreval()

               mINT[1] <- 1

               repita
                  //Procurando uma celula vázia na matriz
                  //para poder amarzenar o novo carro
                  se(carrosLista[mINT[1],1] = "")entao

                     escreva("Digite o NOME do carro: ")
                     leia(carrosLista[mINT[1],1])

                     escreva("Digite o PREÇO do carro: R$")
                     leia(carrosLista[mINT[1],2])

                     escreva("Digite o ANO do carro: ")
                     leia(carrosLista[mINT[1],3])

                     escreva("Digte a MARCA do carro: ")
                     leia(carrosLista[mINT[1],4])

                     escreva("Digite o GRUPO do carro: ")
                     leia(carrosLista[mINT[1],5])

                     limpatela
                     escreval("            ..: MENU > ADMINISRTAÇÃO > ADICIONAR CARRO :..")
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
         //Caso não encontre o ID de funcionario digitado
         //Exibirá esta messagem
         limpatela
         escreval("                    ..: MENU > ADMINISRTAÇÃO :..")
         escreval()
         escreval(" *ID não encontrado..*")

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