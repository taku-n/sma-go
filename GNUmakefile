MEC := metaeditor64.exe
# MetaEditor Compiler

sma-go.ex5: sma-go.mq5 sma-go.dll
	-$(MEC) /compile:sma-go.mq5 /log:mec.log
	@cat mec.log
	@rm mec.log

sma-go.dll: sma-go.def sma-go.lib
	gcc -m64 -shared -o sma-go.dll sma-go.def sma-go.lib \
			-Wl,--allow-multiple-definition \
			-static -lstdc++ -lwinmm -lntdll -lWs2_32

sma-go.lib: sma-go.go
	go build -buildmode=c-archive -o sma-go.lib sma-go.go
