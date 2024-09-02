# install.packages("ggplot2")

library(ggplot2)

## Grafico de barras 

produtos <- c("Produto A", "Produto B", "Produto C", "Produto D")
vendas <- c(150, 200, 250, 100)

dados <- data.frame(produtos, vendas)

# print(dados) 

grafico <- ggplot(data = dados, aes(x = produtos, y = vendas)) +
geom_bar(stat = "identity", fill = "red") +
labs(title = "Vendas de Produtos", x = "Produtos", y = "Números de vendas") +
theme_minimal()

# print(grafico)

## Grafico de Linhas

meses <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", 
"Sep", "Oct", "Nov", "Dec")
selling <- c(120, 150, 170, 180, 190, 220, 250, 230, 210, 200, 180, 160)

dados_linhas <- data.frame(meses, selling)

print(dados_linhas)

line_graphic <- ggplot(data = dados_linhas,
aes(x = meses, y = selling, group = 1)) +
geom_line(color = "blue", size = 1) +
geom_point(color = "red", size = 2) +
labs(title = "Grafico de meses x vendas", x = "meses", y = "vendas")

# print(line_graphic)

## Grafico de dispersao
altura <- c(150, 160, 170, 180, 190, 200, 210)
peso <- c(50, 60, 65, 70, 80, 90, 100)

dados_dispersao <- data.frame(altura, peso)

grafico_dispersao <- ggplot(data = dados_dispersao, aes(x = altura, y = peso)) +
  geom_point(color = "purple", size = 3) +
  labs(title = "Altura vs Peso", x = "Altura (cm)", y = "Peso (kg)") +
  theme_minimal()

# print(grafico_dispersao)


# Dados de exemplo: Distribuição de notas de uma turma
notas <- c(50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 40, 45, 70, 80, 85, 60, 75, 65, 70)

# Criando um histograma
grafico_histograma <- ggplot(data = data.frame(notas), aes(x = notas)) +
  geom_histogram(binwidth = 5, fill = "orange", color = "black") + # Bins de largura 5
  labs(title = "Distribuição de Notas da Turma", x = "Notas", y = "Frequência") +
  theme_minimal()

# Exibindo o histograma
# print(grafico_histograma)

# Dados de exemplo: Proporção de mercado por empresa
empresas <- c("Empresa A", "Empresa B", "Empresa C", "Empresa D")
participacao <- c(30, 20, 25, 25)

# Criar um dataframe com os dados
dados_pizza <- data.frame(empresas, participacao)

# Criando um gráfico de pizza usando ggplot2
grafico_pizza <- ggplot(data = dados_pizza, aes(x = "", y = participacao, fill = empresas)) +
  geom_bar(stat = "identity", width = 1) + # Cria barras preenchidas
  coord_polar("y") + # Converte para um gráfico de pizza
  labs(title = "Proporção de Mercado por Empresa") +
  theme_void() + # Remove o plano de fundo
  theme(legend.position = "right") # Posição da legenda

# Exibindo o gráfico de pizza
print(grafico_pizza)

