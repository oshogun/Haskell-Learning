FLAGS = -outputdir dist

all: problema1 problema2 problema3 problema4

clean:
	rm -rf dist 2>/dev/null
	rm problema1 problema2 problema3


problema1:
	ghc p1/Formas.hs p1/Main.hs -o problema1 ${FLAGS}/1

problema2:
	ghc p2/Ponto.hs p2/Main.hs -o problema2 ${FLAGS}/2

problema3:
	ghc p3/Arvore.hs p3/Main.hs -o problema3 ${FLAGS}/3

# problema4:
# 	ghc problema4.hs ${FLAGS}/4

