FLAGS = -outputdir dist

all: problema1 problema2 problema3 problema4 problema5 problema6

clean:
	rm dist/*
	rm problema1 problema2 problema3 problema4 problema5 problema6

problema1:
	ghc problema1.hs ${FLAGS}

problema2:
	ghc problema2.hs ${FLAGS}

problema3:
	ghc problema3.hs ${FLAGS}

problema4:
	ghc problema4.hs ${FLAGS}

problema5:
	ghc problema5.hs ${FLAGS}

problema6:
	ghc problema6.hs ${FLAGS}
