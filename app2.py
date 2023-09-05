import pyautogui 
import pandas as pd
import datetime
import time 
 # Maximizar a tela
pyautogui.click(971,69)
def new_func():
    pyautogui.press('backspace',presses=20)

with open ('Andamentos.txt','r',encoding='utf-8') as file: 
   for linha in file:
     NR_Processo = linha.split(';')[0]
     DT_Publicacao = linha.split(';')[1]
     Ato_Processual = linha.split(';')[2]
     Andamento = linha.split(';')[3]
     # Selecionar e Digitar o Processo
     pyautogui.click(962, 544)
     pyautogui.write(NR_Processo)
     time.sleep(2)
     pyautogui.click(43,620)
     time.sleep(2)
     #Selecionar Aba Andamento
     pyautogui.click(731,178)
     time.sleep(2)
      #Inserir o Andamento
     pyautogui.click(1097,704)
     time.sleep(2)
     #Data da Plublicação
     pyautogui.click(13,78)
     pyautogui.write(DT_Publicacao)
     time.sleep(2)
     # Ato Processual
     pyautogui.click(37,157)
     pyautogui.write(Ato_Processual)
     time.sleep(2)
    # Andamento
     pyautogui.click(11,227)
     pyautogui.write(Andamento)
     time.sleep(2)
     pyautogui.click(1159,704)
     time.sleep(2)
     pyautogui.click(350,94)
     time.sleep(2)
     pyautogui.click(473, 140)
     new_func()
     time.sleep(2)
  