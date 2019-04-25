FLAGS = -outputdir dist

all:  problema3 problema4

clean:
	rm -rf dist 2>/dev/null
	rm problema3 problema4




problema3:
	ghc problema3.hs ${FLAGS}/3

problema4:
	ghc problema4.hs ${FLAGS}/4


