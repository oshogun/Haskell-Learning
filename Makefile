FLAGS = -outputdir dist

all: problema1 problema2 problema3 problema4 problema5 problema6 problema7 problema8 problema9

clean:
	rm -rf dist 2>/dev/null
	rm problema1 problema2 problema3 problema4
	rm problema5 problema6 problema7 problema8
	rm problema9 

problema1:
	ghc problema1.hs ${FLAGS}/1

problema2:
	ghc problema2.hs ${FLAGS}/2

problema3:
	ghc problema3.hs ${FLAGS}/3

problema4:
	ghc problema4.hs ${FLAGS}/4

problema5:
	ghc problema5.hs ${FLAGS}/5

problema6:
	ghc problema6.hs ${FLAGS}/6

problema7:
	ghc problema7.hs ${FLAGS}/7

problema8:
	ghc problema8.hs ${FLAGS}/8

problema9:
	ghc problema9.hs ${FLAGS}/9