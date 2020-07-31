jmp main

DNA: string "T G A G A A G A C C A G G G G T G T C T G A G T C T C T C T T G G G T G G T A C C A C G A C A G A G G A C G G C T G T T C T G G T T G C A G T T C C G G C G G A C C C C A T T C C A G C C G C G C G T G C G A C C G C T C A T A C C A C G C C T C C G G G A C C T C T C C A C T C C G A G G G A G G G G A C G A G G C T G G G C C C G A G G A G C G G G C G G G C C T G G G T G T C C G G T G G G A G T T G G C A G G A C C G G G G C C T G G G T T T G G G G T G G G G A G T G A G A C G A A G A G G G G C G T C C T A C A A G G A C A G G A A G G G G T G G T G G T T C T G G A T G A A G G G C G T G A A G C T G G A C T C G G T G C C G A G A C G G G T C C A A T T C C C G G T G C C G T T C T T C C A C C G G C T G C G C G A C T G G T T G C G G C A C C G C G T G C A C C T G C T G T A C G G G T T G C G C G A C A G G C G G G A C T C G C T G G A C G T G C G C G T G T T C G A A G C C C A C C T G G G C C A G T T G A A G T T C C A C T C G C C G C C C G G C C C T C G C T A G A C C C A G C T C C C C G C T C T A C C G C G G A A G G A G C G T C C C G T C T C C T A G T G C G C C C A A C G C C C T C C A C A T C G C G T C C G C C G C C G A C G C C C G G A C C C G G G A G C C G G G G T G A C T G G G A G A A G A G A C G T G T C G A G G A T T C G G T G A C G G A C G A C C A C T G G G A C C G G C G G G T G G A G G G G C G G C T C A A G T G G G G A C G C C A C G T G C G G A G G G A C C T G T T C A A G G A C C G A A G A C A C T C G T G G C A C G A C T G G A G G T T T A T G G C A A T T C G A C C T C G G A G C C A C C G G T A C G A A G A A C G G G G A A C C C G G A G G G G G G T C G G G G A G G A G G G G A A G G A C G T G G G C A T G G G G G C A C C A G A A A C T T A T T T C A G A C T C A C C C G C C G T" ; String contendo o DNA complementar do gene HBA1

mRNA: string "A C U C U U C U G G U C C C C A C A G A C U C A G A G A G A A C C C A C C A U G G U G C U G U C U C C U G C C G A C A A G A C C A A C G U C A A G G C C G C C U G G G G U A A G G U C G G C G C G C A C G C U G G C G A G U A U G G U G C G G A G G C C C U G G A G A G G U G A G G C U C C C U C C C C U G C U C C G A C C C G G G C U C C U C G C C C G C C C G G A C C C A C A G G C C A C C C U C A A C C G U C C U G G C C C C G G A C C C A A A C C C C A C C C C U C A C U C U G C U U C U C C C C G C A G G A U G U U C C U G U C C U U C C C C A C C A C C A A G A C C U A C U U C C C G C A C U U C G A C C U G A G C C A C G G C U C U G C C C A G G U U A A G G G C C A C G G C A A G A A G G U G G C C G A C G C G C U G A C C A A C G C C G U G G C G C A C G U G G A C G A C A U G C C C A A C G C G C U G U C C G C C C U G A G C G A C C U G C A C G C G C A C A A G C U U C G G G U G G A C C C G G U C A A C U U C A A G G U G A G C G G C G G G C C G G G A G C G A U C U G G G U C G A G G G G C G A G A U G G C G C C U U C C U C G C A G G G C A G A G G A U C A C G C G G G U U G C G G G A G G U G U A G C G C A G G C G G C G G C U G C G G G C C U G G G C C C U C G G C C C C A C U G A C C C U C U U C U C U G C A C A G C U C C U A A G C C A C U G C C U G C U G G U G A C C C U G G C C G C C C A C C U C C C C G C C G A G U U C A C C C C U G C G G U G C A C G C C U C C C U G G A C A A G U U C C U G G C U U C U G U G A G C A C C G U G C U G A C C U C C A A A U A C C G U U A A G C U G G A G C C U C G G U G G C C A U G C U U C U U G C C C C U U G G G C C U C C C C C C A G C C C C U C C U C C C C U U C C U G C A C C C G U A C C C C C G U G G U C U U U G A A U A A A G U C U G A G U G G G C G G C A" ; String contendo o mRNA do gene HBA1 (O DNA todo foi transcrito, tem areas nao codificantes e nao inicia no codon de inicio)


vazio: string "   "; Usado apenas no RNA para apagar a letra do movimento
linhaVazia: string "                                " ; usada na seta
debug: string "passei"
ligH: string "| | | | | | | | | | | | | | | | | | | | | | |" ; string das ligações de hidrogenio

Letra: var #1  ; Contem a letra que foi digitada
posDNA: var #1 ; Contem onde na string do DNA está
posRNA: var #1 ; Contem onde na string do RNA está
quantBase: var #1 ; quantidade de chars do RNA que vão ser exibidas
pontosBase: var #1 ; Guarda quantas bases
erros: var #1 ; Guarda quantos erros, maximo de 3

main:
   ;Tela Inicial 
   loadn r1, #tela0Linha0
   loadn r2, #1536
   call ImprimeTela ; Tela de mensagem

   call EsperaIni ; Espera para começar
   call ApagaTela

   call ImprimePrincipal ; Tela do jogo

   ; Inicializacoes
   loadn r1, #DNA ; Endereço do DNA
   store posDNA, r1
   loadn r1, #mRNA ; Endereço do RNA
   store posRNA, r1
   loadn r1, #25 ; 
   store quantBase, r1 ; Começa com 25 chars
   loadn r1, #0
   store erros, r1 ; Começa com 0 erros
   store pontosBase, r1 ; Começa com 0 pontos

   loadn r0, #0
   loadn r1, #300  ; Velocidade, delay do movimento
   loadn r2, #0
   loadn r4, #10 ; Delay da entrada do jogador

main_loop:

   ; delays diferentes para a Entrada e o movimento  
   mod r3, r0, r1

   cmp r3, r2
   ceq ImprimeDNA ; Chamada para imprimir fita de DNA

   cmp r3, r2
   ceq ImprimeDetalhes ; Chamada para imprimir detalhes 

   cmp r3, r2
   ceq ImprimeRNA ; Chamada para imprimir fita de RNA

   mod r3, r0, r4
   cmp r3, r2
   ceq Entrada  ; Chamada do input do jogador

   call Delay  ; Da uma pequena pausa
   inc r0
   jmp main_loop

   halt 

ImprimeDNA: ; Imprime 33 chars de uma string maior que 33 chars. r0 = Posição | r1 = endereço | r2 = cor
   push r0
   push r1
   push r2
   push r3
   push r4
   push r5
   push r6
   push r7
   
   loadn r0, #844 ; Posição do DNA na tela
   load r1, posDNA ; Posição do DNA na string
   loadn r2, #0 ; Cor, começa com 0
   loadn r3, #33 ; São 33 chars na tela
   loadn r5, #0  ; Condição de parada

   ImprimeDNA_Loop:
      loadi r4, r1
     ;cmp r5, r3 ; Quando r3 for 0 acaba
     ;jeq ImprimeDNA_Sai
      BEQ r5, r3, ImprimeDNA_Sai

      ; Vendo qual a letra para usar a cor certa
      loadi r6, r1

      loadn r7, #'\0'
     ;cmp r6, r7
     ;jeq fim
      BEQ r6, r7, fim

      loadn r7, #' ' 
     ;cmp r6, r7
     ;jeq ImprimeDNA_VoltaDaCor ; Se for espaço tanto faz a cor 
      BEQ r6, r7, ImprimeDNA_VoltaDaCor

      loadn r7, #'A'
     ;cmp r6, r7
     ;jeq ImprimeDNA_Azul 
      BEQ r6, r7, ImprimeDNA_Azul

      loadn r7, #'C'
     ;cmp r6, r7
     ;jeq ImprimeDNA_Amarelo
      BEQ r6, r7, ImprimeDNA_Amarelo

      loadn r7, #'G'
     ;cmp r6, r7
     ;jeq ImprimeDNA_Verde
      BEQ r6, r7, ImprimeDNA_Verde

      loadn r7, #'T'
     ;cmp r6, r7
     ;jeq ImprimeDNA_Vermelho
      BEQ r6, r7, ImprimeDNA_Vermelho

      
   ImprimeDNA_VoltaDaCor: ; Imprimindo a letra
      add r4, r2, r4
      outchar r4, r0
      inc r0
      inc r1
      inc r5
      jmp ImprimeDNA_Loop

   ImprimeDNA_Sai: ; Acabando
      load r1, posDNA 
      inc r1 ; Anda com a posição do DNA
      store posDNA, r1

      pop r7
      pop r6
      pop r5
      pop r4
      pop r3
      pop r2
      pop r1
      pop r0
      rts

   ; Escolhe a cor da letra
   ImprimeDNA_Amarelo:
      loadn r2, #2816
      jmp ImprimeDNA_VoltaDaCor

   ImprimeDNA_Vermelho:
      loadn r2, #2304
      jmp ImprimeDNA_VoltaDaCor
   
   ImprimeDNA_Azul:
      loadn r2, #3072
      jmp ImprimeDNA_VoltaDaCor

   ImprimeDNA_Verde:
      loadn r2, #512
      jmp ImprimeDNA_VoltaDaCor

   fim: ; Acabou o jogo
      jmp Perdeu

; Imprime na tela parecido com o DNA
ImprimeRNA: 
      push r0
      push r1
      push r2
      push r3
      push r4
      push r5
      push r6
      push r7
      
      loadn r0, #764  ; posição
      load r1, posRNA ; String
      loadn r2, #0   
      load r3, quantBase ; Quantas bases e espaços vão estar na tela
      loadn r5, #0

      ImprimeRNA_Loop: ; Imprimindo 
         loadi r4, r1
        ;cmp r5, r3 ; Teste para o fim
        ;jeq ImprimeRNA_Sai
         BEQ r5, r3, ImprimeRNA_Sai

         loadi r6, r1

         ; Testa qual letra
         loadn r7, #'\0'
        ;cmp r6, r7
        ;jeq fim
         BEQ r6, r7, fim

         loadn r7, #' ' 
        ;cmp r6, r7
        ;jeq ImprimeRNA_VoltaDaCor ; Se for espaço tanto faz a cor 
         BEQ r6, r7, ImprimeRNA_VoltaDaCor

         loadn r7, #'A'
        ;cmp r6, r7
        ;jeq ImprimeRNA_Azul 
         BEQ r6, r7, ImprimeRNA_Azul

         loadn r7, #'C'
        ;cmp r6, r7
        ;jeq ImprimeRNA_Amarelo
         BEQ r6, r7, ImprimeRNA_Amarelo

         loadn r7, #'G'
        ;cmp r6, r7
        ;jeq ImprimeRNA_Verde
         BEQ r6, r7, ImprimeRNA_Verde

         loadn r7, #'U'
        ;cmp r6, r7
        ;jeq ImprimeRNA_Roxo
         BEQ r6, r7, ImprimeRNA_Roxo

      ImprimeRNA_VoltaDaCor: ; Imprime a letra
         add r4, r2, r4
         outchar r4, r0
         inc r0
         inc r1
         inc r5
         jmp ImprimeRNA_Loop

      ImprimeRNA_Sai:
         load r1, vazio ; Coloca um espaço em branco depois para apagar o movimento 
         outchar r4, r0

         load r1, posRNA 
         inc r1 ; Anda com a posição do RNA
         store posRNA, r1

         loadn r4, #65536 ; é o -1
         load r3, quantBase
         dec r3 ; Vai diminuindo quantas bases são exibidas na tela

        ;cmp r3, r4 ; se for -1, perdeu
        ;jeq RNA_perdeu
         BEQ r3, r4, RNA_perdeu

         store quantBase, r3

         pop r7
         pop r6
         pop r5
         pop r4
         pop r3
         pop r2
         pop r1
         pop r0
         rts
      
      RNA_perdeu:
         jmp Perdeu

      ; Escolhe a cor
      ImprimeRNA_Amarelo:
         loadn r2, #2816
         jmp ImprimeRNA_VoltaDaCor

      ImprimeRNA_Roxo:
         loadn r2, #1280
         jmp ImprimeRNA_VoltaDaCor

      ImprimeRNA_Azul:
         loadn r2, #3072
         jmp ImprimeRNA_VoltaDaCor

      ImprimeRNA_Verde:
         loadn r2, #512
         jmp ImprimeRNA_VoltaDaCor

; Imprime o resto do desenho que anda
ImprimeDetalhes:
   push r0
   push r1
   push r2
   push r3
   push r4
   push r5
   push r6

   loadn r0, #804
   load r2, quantBase ; Quantidade de RNA na tela
   inc r2  ; Aumenta em um para imprimir mais um espaço, apagando o desenho da frente
   loadn r1, #0   ; Teste para parar de imprimir
   loadn r4, #2048 ; Cor

   loadn r3, #2 ; Para o teste de paridade
   mod r3, r2, r3

  ;cmp r3, r1
  ;jeq ImprimeDetalhes_Impar
   BEQ r3, r1, ImprimeDetalhes_Impar

   jmp ImprimeDetalhes_Par

; O movimento acontece vendo se o quantBase é par ou impar, começando por '|' ou ' '   
ImprimeDetalhes_Par:
  ;cmp r2, r1
  ;jeq ImprimeDetalhes_Fim
   BEQ r2, r1, ImprimeDetalhes_Fim

   loadn r3, #' ' ; Espaços em branco
   add r6, r3, r4 
   outchar r6, r0 
   dec r2
   inc r0

ImprimeDetalhes_Impar:
  ;cmp r2, r1
  ;jeq ImprimeDetalhes_Fim
   BEQ r2, r1, ImprimeDetalhes_Fim
   
   loadn r3, #'|' ; Ligações
   add r6, r3, r4
   outchar r6, r0
   dec r2
   inc r0

   jmp ImprimeDetalhes_Par
 
; Antes de terminar imprime a seta '^' que indica a base atual
ImprimeDetalhes_Fim: 

   mov r5, r0
   loadn r1, #linhaVazia
   loadn r2, #1280
   loadn r0, #924
   call ImprimeStr  
   mov r0, r5

   loadn r3, #120
   add r0, r0, r3
   loadn r3, #'^'
   add r6, r3, r2
   outchar r6, r0
   loadn r3, #' '
   add r6, r3, r2
   inc r0
   outchar r6, r0 

   pop r6
   pop r5
   pop r4
   pop r3
   pop r2
   pop r1
   pop r0
   rts

Entrada:
   push r0
   push r1
   push r2
   push r3

   load r0, quantBase ; Carrega a base do jogador
   load r1, posRNA ;Carrega a posição atual do RNA em r1 
   add r1, r1, r0 ; Carrega a posição do RNA do jogador
   loadi r2, r1 ;Carrega o char na posição atual do RNA em r2
   loadn r3, #' ' ; Carrega ' ' em r3

  ;cmp r3, r2 ; Testa se o char em r2 é ' '
  ;jeq Entrada_TaEspaco ; Se for da jump
   BEQ r3, r2, Entrada_TaEspaco

Entrada_TesteIgual:
   inchar r0 ; Pega a entrada do teclado em r0

  ;cmp r0, r2 ; Compara o teclado com o RNA
  ;jeq Entrada_Igual ; Se for igual da jump
   BEQ r0, r2, Entrada_Igual

   jmp Entrada_Diferente 

Entrada_Igual:
   load r3, quantBase ; Carrega a quantidade de bases
   inc r3 ; Aumenta em 2 chars, pois um é espaço
   inc r3
   store quantBase, r3 ; guarda de volta em quantBase

   load r3, pontosBase ; Aumentando uma base na pontuação
   inc r3
   store pontosBase, r3
   call Pontos

   jmp Entrada_Sai ; Termina

Entrada_Diferente:
   loadn r3, #255

  ;cmp r3, r0
  ;jeq Entrada_Sai ; Não foi digitado nada ainda
   BEQ r3, r0, Entrada_Sai

   load r0, erros ; carrega a var dos erros
   inc r0 ;incrementa

   loadn r2, #'X'  ; Imprime X do erro
   loadn r3, #2304 ; Vermelho
   add r2, r2, r3  
   loadn r1, #576  ; Posição
   add r1, r1, r0
   outchar r2, r1  ; printa

   loadn r1, #3 ;carrega 3 no r1

  ;cmp r0, r1   ;compara se já tem 3 erros
  ;jeq Entrada_Perde ; se tem perdeu
   BEQ r0, r1, Entrada_Perde

   store erros, r0  ;guarda na variavel de volta 
   jmp Entrada_Sai   

Entrada_Perde:
   jmp Perdeu

Entrada_TaEspaco:
   inc r1 ; Incrementa posição do RNA
   loadi r2, r1 ; Joga o char em r2 que não é mais ' ' agora
   jmp Entrada_TesteIgual ; Jump para o teste

Entrada_Sai:
   pop r3
   pop r2
   pop r1
   pop r0 
   rts  

; Controle o placar de pontos
Pontos:
   push r0
   push r1
   push r2
   push r3
   push r4
   
   ; O numero da unidade será convertido para char usando mod 10
   loadn r0, #1110 
   load r1, pontosBase
   loadn r2, #512   
   loadn r3, #'0'
   loadn r4, #10
   mod r1, r1, r4
   add r1, r1, r3
   add r1, r1, r2
   outchar r1, r0 

   ; O numero da dezena será convertido para char usando div 10
   loadn r0, #1109
   load r1, pontosBase
   div r1, r1, r4
   mod r1, r1, r4
   add r1, r1, r3
   add r1, r1, r2
   outchar r1, r0

   ; O numero da centena será convertido para char usando div 100
   loadn r0, #1108
   load r1, pontosBase
   loadn r4, #100
   div r1, r1, r4
   add r1, r1, r3
   add r1, r1, r2
   outchar r1, r0

   pop r4
   pop r3
   pop r2
   pop r1
   pop r0
   rts

; Espera aperta algum botão antes de começar de verdade
EsperaIni:
   push r0
   push r1
   loadn r1, #255

   EsperaIni_Loop:
      inchar r0

     ;cmp r0, r1
     ;jeq EsperaIni_Loop
      BEQ r0, r1, EsperaIni_Loop

   pop r1
   pop r0
   rts
	
; Imprime todas as string coloridas estaticas da tela principal do jogo
ImprimePrincipal:
   push r0
   push r1
   push r2
   push r3
   push r4

   ; Primeira linha escrita
   loadn r0, #41 
   loadn r1, #tela1Linha1 
   loadn r2, #2304
   call ImprimeStr
   
   ; Segunda linha escrita
   loadn r2, #3072
   loadn r1, #'A'   
   loadn r0, #134    
   add r2, r2, r1 
   outchar r2, r0
   
   loadn r2, #1280
   loadn r1, #'U'
   loadn r0, #137
   add r2, r2, r1
   outchar r2, r0 

   loadn r2, #2816
   loadn r1, #'C'
   loadn r0, #140
   add r2, r2, r1
   outchar r2, r0

   loadn r2, #512
   loadn r1, #'G'
   loadn r0, #143
   add r2, r2, r1
   outchar r2, r0

   ; Terceira linha escrita
   loadn r2, #2048
   loadn r1, #tela1Linha4
   loadn r0, #161 
   call ImprimeStr
   
   ; Quarta linha escrita
   loadn r2, #2304
   loadn r1, #'T'
   loadn r0, #214
   add r2, r2, r1
   outchar r2, r0

   loadn r2, #3072
   loadn r1, #'A'
   loadn r0, #217
   add r2, r2, r1
   outchar r2, r0

   loadn r2, #512
   loadn r1, #'G'
   loadn r0, #220
   add r2, r2, r1
   outchar r2, r0
   
   loadn r2, #2816
   loadn r1, #'C'
   loadn r0, #223
   add r2, r2, r1
   outchar r2, r0
   
   ; Quinta
   loadn r2, #1024
   loadn r1, #tela1Linha8
   loadn r0, #320
   call ImprimeStr
   
   ; Sexta
   loadn r2, #1280
   loadn r1, #tela1Linha11
   loadn r0, #440
   call ImprimeStr
   
   ; Setima
   loadn r2, #2816
   loadn r1, #tela1Linha14
   loadn r0, #560
   call ImprimeStr

   ; Nona
   loadn r2, #2304
   loadn r1, #tela1Linha18
   loadn r0, #720
   call ImprimeStr
   
   ; Linha baixo
   loadn r2, #1024
   loadn r1, #tela1Linha22
   loadn r0, #880
   call ImprimeStr
   
   loadn r2, #2048
   loadn r1, #tela1Linha20
   loadn r0, #800
   call ImprimeStr

   loadn r2, #512
   loadn r1, #tela1Linha27
   loadn r0, #1080
   call ImprimeStr
      
   ; Coluna
   loadn r2, #256 
   loadn r1, #'|'
   loadn r0, #683
   add r2, r2, r1
   outchar r2, r0

   loadn r3, #40
   add r0, r0, r3
   outchar r2, r0
   
   add r0, r0, r3
   outchar r2, r0
   
   add r0, r0, r3
   outchar r2, r0
    
   add r0, r0, r3
   outchar r2, r0

   add r0, r0, r3
   outchar r2, r0

   add r0, r0, r3
   outchar r2, r0

   ;5' e 3'
   loadn r2, #2048
   loadn r1, #'5'
   loadn r0, #761
   add r2, r2, r1
   outchar r2, r0

   loadn r0, #878
   outchar r2, r0
   
   loadn r2, #2048
   loadn r1, #'3'
   loadn r0, #841
   add r2, r2, r1
   outchar r2, r0

   loadn r0, #798
   outchar r2, r0

   loadn r2, #2048
   loadn r1, #'''
   loadn r0, #762
   add r2, r2, r1
   outchar r2, r0

   loadn r0, #879
   outchar r2, r0

   loadn r0, #842
   outchar r2, r0
   
   loadn r0, #799
   outchar r2, r0

ImprimePrincipal_Sai:
   pop r4
   pop r3
   pop r2
   pop r1
   pop r0
   rts

; Apaga a tela toda, usado na troca de telas
ApagaTela:
	push r0
	push r1
	
	loadn r0, #1200		; apaga as 1200 posicoes da Tela
	loadn r1, #' '		; com "espaco"
	
	   ApagaTela_Loop:	;;label for(r0=1200;r3>0;r3--)
		dec r0
		outchar r1, r0
		jnz ApagaTela_Loop
 
	pop r1
	pop r0
	rts	

ImprimeStr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina

	loadn r3, #'\0'	; Criterio de parada

   ImprimeStr_Loop:	
		loadi r4, r1

     ;cmp r4, r3		; If (Char == \0)  vai Embora
     ;jeq ImprimeStr_Sai
      BEQ r4, r3, ImprimeStr_Sai

		add r4, r2, r4	; Soma a Cor
		outchar r4, r0	; Imprime o caractere na tela
		inc r0			; Incrementa a posicao na tela
		inc r1			; Incrementa o ponteiro da String
		jmp ImprimeStr_Loop
	
   ImprimeStr_Sai:	
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;IMPRIME TELA
ImprimeTela: 	;  Rotina de Impresao de Cenario na Tela Inteira
		;  r1 = endereco onde comeca a primeira linha do Cenario
		;  r2 = cor do Cenario para ser impresso

	push r0	; protege o r3 na pilha para ser usado na subrotina
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r5 na pilha para ser usado na subrotina
	push r6	; protege o r6 na pilha para ser usado na subrotina

	loadn r0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn r3, #40  	; Incremento da posicao da tela!
	loadn r4, #41  	; incremento do ponteiro das linhas da tela
	loadn r5, #1200 ; Limite da tela!
   mov r6, r1 ; Endereco onde comeca a primeira linha do cenario!
	
   ImprimeTela_Loop:
		call ImprimeStr
		add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
		add r1, r1, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		add r6, r6, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		cmp r0, r5			; Compara r0 com 1200
		jne ImprimeTela_Loop	; Enquanto r0 < 1200

	pop r6	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
				

; Pausa no programa
Delay:
						;Utiliza Push e Pop para nao afetar os Ristradores do programa principal
	push r0
	push r1
	
	loadn r1, #5  ; a
   Delay_volta2:				;Quebrou o contador acima em duas partes (dois loops de decremento)
	loadn r0, #40	; b
   Delay_volta: 
	dec r0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
	jnz Delay_volta	
	dec r1
	jnz Delay_volta2
	
	pop r1
	pop r0
	
	rts							;return

; Rotina para quando acabar o jogo, aperta Y para voltar ao inicio
Perdeu:
   loadn r2, #2304
   loadn r1, #tela1Linha25
   loadn r0, #1000
   call ImprimeStr
   loadn r0, #'Y'

Perdeu_espera:
   inchar r1
   ;cmp r1, r0
   ;jeq main
   BEQ r1, r0, main
   jmp Perdeu_espera 
   
tela0Linha0  : string "              RNAssembly                "
tela0Linha1  : string "                                        "
tela0Linha2  : string "           ATIVE O CAPS LOCK!           "
tela0Linha3  : string "                                        "
tela0Linha4  : string "TRANSCREVA O DNA EM mRNA, SIGA O EXEMPLO"
tela0Linha5  : string "                                        "
tela0Linha6 : string "                                        "
tela0Linha7  : string "              A  U  C  G                "
tela0Linha8  : string "              |  |  |  |                "
tela0Linha9  : string "              T  A  G  C                "
tela0Linha10 : string "                                        "
tela0Linha11 : string "                                        "
tela0Linha12  : string "    CUIDADO! RNA NAO TEM TIMINA!        "
tela0Linha13 : string "                                        "
tela0Linha14 : string "                                        "
tela0Linha15 : string "    VOCE PERDE CASO COMETA 3 ERROS      "
tela0Linha16 : string "                                        "
tela0Linha17 : string "                 OU                     "
tela0Linha18 : string "                                        "
tela0Linha19 : string "    CASO NAO HAJA MAIS BASES NO mRNA    "
tela0Linha20 : string "                                        "
tela0Linha21 : string "                                        "
tela0Linha22 : string "    A SEQUENCIA USADA EH DO GENE HBA1   "
tela0Linha23 : string "    QUE CODIFICA A ALFA HEMOGLOBINA     "
tela0Linha24 : string "                                        "
tela0Linha25 : string "                                        "
tela0Linha26 : string "                                        "
tela0Linha27 : string "    APERTE ALGO PARA INICIAR O JOGO!    "
tela0Linha28 : string "                                        "
tela0Linha29 : string "                                        "	

tela1Linha0  : string "                                        "
tela1Linha1  : string "         ATIVE O CAPS LOCK!             "
tela1Linha2  : string "                                        "
tela1Linha3  : string "             A  U  C  G                 "
tela1Linha4  : string "             |  |  |  |                 "
tela1Linha5  : string "             T  A  G  C                 "
tela1Linha6  : string "                                        "
tela1Linha7  : string "                                        "
tela1Linha8  : string "      APERTE AS LETRAS DAS BASES        "
tela1Linha9  : string "                                        "
tela1Linha10 : string "                                        "
tela1Linha11 : string "                ERROS                   "
tela1Linha12 : string "                                        "
tela1Linha13 : string "                                        "
tela1Linha14 : string "                |   |                   "
tela1Linha15 : string "                                        "
tela1Linha16 : string "                                        "
tela1Linha17 : string "   |                                    "
tela1Linha18 : string " --|--------------------------------->  "
tela1Linha19 : string " 5'|                                  3'"
tela1Linha20 : string "   |                                    "
tela1Linha21 : string " 3'|                                  5'"
tela1Linha22 : string " --|----------------------------------- "
tela1Linha23 : string "   |                                    "
tela1Linha24 : string "                                        "
tela1Linha25 : string " PERDEU! APERTE 'Y' PARA JOGAR DE NOVO  "
tela1Linha26 : string "                                        "
tela1Linha27 : string "         BASES TRANSCRITAS: 000         "
tela1Linha28 : string "                                        "
tela1Linha29 : string "                                        "
