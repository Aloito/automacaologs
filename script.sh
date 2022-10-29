#!/bin/bash

# Loop infinito
while :
do
# Imprimindo as opções do menu
echo 'AVISO IMPORTANTE !!!!!!!'
echo
echo 'AO DIPONIBILIZAR OS LOGS PARA O CLIENTE, NÃO ESQUECER DE REMOVER OS SERVIDORES APRESENTADOS NOS RESULTADOS DA PESQUISA'
echo
echo 'LOGS DA RATICATE NÃO PODEM SER DISPONIBILIZADOS PARA O CLIENTE'
echo
echo 'Selecione a opção de logs.'
echo
echo '1 - recebimento'
echo '2 - envio'
echo '3 - deleção'
echo '4 - acesso webmail'
echo '5 - msid/qid bruns'
echo '6 - msid/qid mcbain'
echo '7 - msid/qid lisa'
echo '8 - PMTA'
echo '9 - Raticate'
echo '10 - acesso software'
echo '0 - Sair'

# '-p' Exibe a mensagem 'Opção' no prompt de entrada.
# '-n1' Lê o caractere único e armazena em 'OPCAO'.
read -p 'Opção: ' OPCAO

echo

case $OPCAO in

1)
        echo "Para deixar a busca mais acertiva, será necessario a utilização de quartos de hora."

        echo "Os horários em nossos servidores são dividos por quarto de hora, ou seja, o primeiro quarto (Q00) seria referente ao minuto 00:00 até o minuto 14:59. Exemplo: 03-Q00 -> 03:00:00 à 03:14:59, 03-Q01 -> 03:15:00 à 03:29:59, 03-Q02 -> 03:30:00 à 03:44:59, 03-Q03 -> 03:45:00 à 03:59:59"

        echo " "

        echo "Informe o e-mail do remetente"

        read remetente

        echo "Informe o e-mail do destinatario"

        read destinatario

        echo "infome a hora"

        read hora

        echo "Digite a data:  exemplo: ANO/MES/DIA "

        read data

        echo "time find /storage/logs/burns/$data/burns*/mail-$hora* | xargs -i -n1 -P5 zgrep -e $remetente {} | grep -i $destinatario"

        time find /storage/logs/burns/$data/burns*/mail-$hora* | xargs -i -n1 -P5 zgrep -e $remetente {} | grep -i $destinatario

        ;;

2)

        echo "Para deixar a busca mais acertiva, será necessario a utilização de quartos de hora."

        echo "Os horários em nossos servidores são dividos por quarto de hora, ou seja, o primeiro quarto (Q00) seria referente ao minuto 00:00 até o minuto 14:59. Exemplo: 03-Q00 -> 03:00:00 à 03:14:59, 03-Q01 -> 03:15:00 à 03:29:59, 03-Q02 -> 03:30:00 à 03:44:59, 03-Q03 -> 03:45:00 à 03:59:59"

        echo " "

        echo "Informe o e-mail do remetente"

        read remetente

        echo "Informe o e-mail do destinatario"

        read destinatario

        echo "infome a hora"

        read hora

        echo "Digite a data:  exemplo: ANO/MES/DIA "

        read data

        echo "time find /storage/logs/mcbain/$data/mcbain*/mail-$hora* | xargs -i -n1 -P5 zgrep -e $remetente {} | grep -i $destinatario"

        time find /storage/logs/mcbain/$data/mcbain*/mail-$hora* | xargs -i -n1 -P5 zgrep -e $remetente {} | grep -i $destinatario

        ;;


3)
        echo "para buscar logs de deleção, não se esqueça de pegar a caixa postal no ISR. Essa caixa postal fica no campo "teste de conexão""

        echo " "

        echo "Exemplo: Resultado do teste IMAP: ('OK', [['INBOX caixapostal@dominio']"

        echo " "

        echo "informe o e-mail: "

        read email

        echo "Digite a data:  exemplo: ANO/MES/DIA "

        read data

        echo "Informe a hora"

        read hora

        echo " time find /storage/logs/lisa/$data/lisa/mail-$hora* -type f | xargs -i -n1 -P5 zgrep -e $email {} | egrep '*(expunge|del|deleted|copy|Mailbox)' | egrep -v '*(rascunho|Attachments|Drafts)' "

        time find /storage/logs/lisa/$data/lisa*/mail-$hora* -type f | xargs -i -n1 -P5 zgrep -e $email {} | egrep '*(expunge|del|deleted|copy|Mailbox)' | egrep -v '*(rascunho|Attachments|Drafts)'

;;


4)
        echo "Para deixar a busca mais acertiva, será necessario a utilização de quartos"

        echo "Os horários em nossos servidores são dividos por quarto de hora, ou seja, o primeiro quarto (Q00) seria referente ao minuto 00:00 até o minuto 14:59. Exemplo: 03-Q00 -> 03:00:00 à 03:14:59, 03-Q01 -> 03:15:00 à 03:29:59, 03-Q02 -> 03:30:00 à 03:44:59, 03-Q03 -> 03:45:00 à 03:59:59"

        echo " "

        echo "infome o e-mail: "

        read email

        echo "informe a hora: "

        read hora

        echo "Digite a data:  exemplo: ANO/MES/DIA "

        read data

        echo "time find /storage/logs/dragonite/$data/dragonite*/mail-$hora* -type f | xargs -i -n1 -P5 zgrep -e $email {} | grep -i Password mismatch

        time find /storage/logs/dragonite/$data/dragonite*/mail-$hora* -type f | xargs -i -n1 -P5 zgrep -e $email {} | grep -i 'Successful login'"


        time find /storage/logs/dragonite/$data/dragonite*/mail-$hora* -type f | xargs -i -n1 -P5 zgrep -e $email {} | grep  Password

        time find /storage/logs/dragonite/$data/dragonite*/mail-$hora* -type f | xargs -i -n1 -P5 zgrep -e $email {} | grep 'Successful login'

        ;;


5)
                echo "Para deixar a busca mais acertiva, será necessario a utilização de quartos"

                echo "Os horários em nossos servidores são dividos por quarto de hora, ou seja, o primeiro quarto (Q00) seria referente ao minuto 00:00 até o minuto 14:59. Exemplo: 03-Q00 -> 03:00:00 à 03:14:59, 03-Q01 -> 03:15:00 à 03:29:59, 03-Q02 -> 03:30:00 à 03:44:59, 03-Q03 -> 03:45:00 à 03:59:59"

                echo " "

        echo "infome o qid/msid: "

        read qid

        echo "infomre a hora: "

        read hora

        echo "Digite a data:  exemplo: ANO/MES/DIA "

        read data

        echo "time find /storage/logs/burns/$data/burns*/mail-$hora* | xargs -i -n1 -P5 zgrep  -i $qid {}"

        time find /storage/logs/burns/$data/burns*/mail-$hora* | xargs -i -n1 -P5 zgrep  -i $qid {}

        ;;
6)

                echo "Para deixar a busca mais acertiva, será necessario a utilização de quartos"

                echo "Os horários em nossos servidores são dividos por quarto de hora, ou seja, o primeiro quarto (Q00) seria referente ao minuto 00:00 até o minuto 14:59. Exemplo: 03-Q00 -> 03:00:00 à 03:14:59, 03-Q01 -> 03:15:00 à 03:29:59, 03-Q02 -> 03:30:00 à 03:44:59, 03-Q03 -> 03:45:00 à 03:59:59"

                echo " "

        echo "infome o qid/msid: "

        read qid

        echo "infomre a hora: "

        read hora

        echo "Digite a data:  exemplo: ANO/MES/DIA "

        read data

        echo "time find /storage/logs/mcbain/$data/mcbain*/mail-$hora* | xargs -i -n1 -P5 zgrep  -i $qid {}"

        time find /storage/logs/mcbain/$data/mcbain*/mail-$hora* | xargs -i -n1 -P5 zgrep  -i $qid {}

        ;;

7)

                echo "Para deixar a busca mais acertiva, será necessario a utilização de quartos"

                echo "Os horários em nossos servidores são dividos por quarto de hora, ou seja, o primeiro quarto (Q00) seria referente ao minuto 00:00 até o minuto 14:59. Exemplo: 03-Q00 -> 03:00:00 à 03:14:59, 03-Q01 -> 03:15:00 à 03:29:59, 03-Q02 -> 03:30:00 à 03:44:59, 03-Q03 -> 03:45:00 à 03:59:59"

                echo " "

        echo "infome o qid/msid: "

        read qid

        echo "infomre a hora: "

        read hora

        echo "Digite a data:  exemplo: ANO/MES/DIA "

        read data

        echo "time find /storage/logs/lisa/$data/lisa*/mail-$hora* | xargs -i -n1 -P5 zgrep -i $qid {}"

        time find /storage/logs/lisa/$data/lisa*/mail-$hora* | xargs -i -n1 -P5 zgrep -i $qid {}

        ;;

8)


        echo "Informe o e-mail do remetente"

        read remetente

        echo "Informe o e-mail do destinatario"

        read destinatario

        echo "Digite a data:  exemplo: ano-mes-dia "

                read data

        echo "time find /storage/logs/pmta/hm*/acct-$data* -type f | xargs -i -n1 -P5 zgrep -e &destinatario {} | grep -i $remetente "

        time find /storage/logs/pmta/hm*/acct-$data* -type f | xargs -i -n1 -P5 zgrep -e $destinatario {} | grep -i $remetente

        ;;

9)

                echo "Para deixar a busca mais acertiva, será necessario a utilização de quartos de hora."

                echo "Os horários em nossos servidores são dividos por quarto de hora, ou seja, o primeiro quarto (Q00) seria referente ao minuto 00:00 até o minuto 14:59. Exemplo: 03-Q00 -> 03:00:00 à 03:14:59, 03-Q01 -> 03:15:00 à 03:29:59, 03-Q02 -> 03:30:00 à 03:44:59, 03-Q03 -> 03:45:00 à 03:59:59"

                echo " "

        echo "Informe o e-mail do remetente"

        read remetente

        echo "Informe o e-mail do destinatario"

        read destinatario

        echo "infome a hora"

        read hora

        echo "Digite a data:  exemplo: ANO/MES/DIA "

                read data

        echo "time find /storage/logs/raticate/$data/raticate*/mail-$hora* | xargs -i -n1 -P5 zgrep -e $remetente {} | grep -i $destinatario"

        time find /storage/logs/raticate/$data/raticate*/mail-$hora* | xargs -i -n1 -P5 zgrep -e $remetente {} | grep -i $destinatario

        ;;

10)
        echo 'Para deixar a busca mais acertiva, será necessario a utilização de quartos de hora.'

        echo "Os horários em nossos servidores são dividos por quarto de hora, ou seja, o primeiro quarto (Q00) seria referente ao minuto 00:00 até o minuto 14:59. Exemplo: 03-Q00 -> 03:00:00 à 03:14:59, 03-Q01 -> 03:15:00 à 03:29:59, 03-Q02 -> 03:30:00 à 03:44:59, 03-Q03 -> 03:45:00 à 03:59:59"

        echo 'Inform o e-mail'

        read email

        echo 'Informe a hora'

        read hora

        echo 'Digite a data:  exemplo: ANO/MES/DIA'

        read data

        echo "find /storage/logs/zubat/$data/zubat*/mail-$hora* -type f | xargs -i -n1 -P05 zgrep -e $email {}"

        echo "find /storage/logs/gobat/$data/gobat*/mail-$hora* -type f | xargs -i -n1 -P05 zgrep -e $email {}"

        find /storage/logs/zubat/$data/zubat*/mail-$hora* -type f | xargs -i -n1 -P05 zgrep -e $email {} && find /storage/logs/gobat/$data/gobat*/mail-$hora* -type f | xargs -i -n1 -P05 zgrep -e $email {}

;;


0)

        echo "Saindo..."

        exit 0

        ;;

*)

        echo "opção invalida"
        break
        ;;
esac
done
