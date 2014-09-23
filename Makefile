.PHONY: all clean unit acceptance

all: pc.dyalog

unit: pc.dyalog ut.dyalog
	LD_LIBRARY_PATH=. mapl ws/unit

acceptance: pc.dyalog at.dyalog
	LD_LIBRARY_PATH=. mapl ws/acceptance

clean:
	rm -rf pc.dyalog ut.dyalog at.dyalog
	
pc.dyalog: ns/*.cd
	echo ':Namespace pc' > pc.dyalog
	bin/assemble ns/*.cd >> pc.dyalog

ut.dyalog: ut/*.cd
	echo ':Namespace ut' > ut.dyalog
	bin/assemble ut/*.cd >> ut.dyalog

at.dyalog: at/*.cd
	echo ':Namespace at' > at.dyalog
	bin/assemble at/*.cd >> at.dyalog
