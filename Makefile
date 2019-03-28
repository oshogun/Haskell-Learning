FLAGS = -outputdir dist

all: problema1 problema2 problema3 problema4 all1

all1: problema5 problema6 problema7 problema8 problema9 all2

all2: problema10 problema11 problema12 problema13 all4

all4: problema14

clean:
	rm -rf dist 2>/dev/null
	rm problema1 problema2 problema3 problema4
	rm problema5 problema6 problema7 problema8
	rm problema9 problema10 problema11 problema12
	rm problema13 problema14

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

problema10:
	ghc problema10.hs ${FLAGS}/10

problema11:
	ghc problema11.hs ${FLAGS}/11

problema12:
	ghc problema12.hs ${FLAGS}/12

problema13:
	ghc problema13.hs ${FLAGS}/13

problema14:
	ghc problema14.hs ${FLAGS}/14