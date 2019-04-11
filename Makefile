FLAGS = -outputdir dist

all: problema1 problema2 problema3 problema4

clean:
	rm -rf dist 2>/dev/null
	rm problema1 problema2 problema3 problema4


problema1:
	ghc problema1.hs ${FLAGS}/1

problema2:
	ghc problema2.hs ${FLAGS}/2

problema3:
	ghc problema3.hs ${FLAGS}/3

problema4:
	ghc problema4.hs ${FLAGS}/4


