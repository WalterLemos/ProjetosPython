def calcular_cra(notas, creditos):
    soma_creditos = sum(creditos)
    soma_ponderada = sum(nota * credito for nota, credito in zip(notas, creditos))
    cra = soma_ponderada / soma_creditos
    return cra

# Exemplo de notas e créditos das disciplinas
notas = [7.75, 8.25, 6.25, 9.50, 8.25]
creditos = [4, 4, 4, 4, 4]

# Chamar a função para calcular o CRA
cra = calcular_cra(notas, creditos)
print("Seu CRA é:", cra)