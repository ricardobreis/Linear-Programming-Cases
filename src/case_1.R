################################################################################################
#
# AN�LISE DE DADOS
# Por: RICARDO REIS
#
# CASE - LINEAR PROGRAMMING
#
#
################################################################################################


# Carrega Pacotes ---------------------------------------------------------
library(lpSolve)


# Passos ------------------------------------------------------------------

# 1 - Problema de Max ou Min

# 2 - Criar vetor com os coeficientes da fun��o objetivo

# 3 - Criar matriz com os coeficientes das restri��es

# 4 - Criar vetor com os sinais (dire��o) das restri��es

# 5 - Criar vetor com o lado direito das desigualdades.


# Exemplo -----------------------------------------------------------------

# Max Z = 20x1 + 60x2

#30x1 + 20x2 <= 2700
#5x1 + 10x2 <= 850
#x1 + x2 >= 95

# Coeficientes de x1 e x2 da fun��o objetivo 
funcao_objetivo <- c(20 , 60)

# Coeficientes de x1 e x2 das restri��es
restricoes <- matrix (c(30, 20,
                        5, 10,
                        1, 1),
                      nrow = 3,
                      ncol = 2,
                      byrow = TRUE)

# Sinal das restri��es. Deve obedecer a ordem da matriz de coeficientes
direcao_restricoes <- c("<=","<=",">=")

# Limite das restri��es. Deve obedecer a ordem da matriz de coeficientes
limites_restricoes <- c(2700, 850, 95)

resultado <- lp(direction = "max",
                objective.in = funcao_objetivo,  
                const.mat = restricoes,
                const.dir = direcao_restricoes,
                const.rhs = limites_restricoes)

resultado$objval
resultado$solution
