.PHONY: build test clean

build: clean
	xbuild /p:OS=mono /p:Configuration=Release middle.sln

test: build
	nunit-console ./tests/bin/Release/CSharp.Middle.Katas.Tests.dll

clean:
	xbuild /target:Clean middle.sln
	find . -type d -name 'bin' -o -name 'obj' | xargs rm -rvf 
