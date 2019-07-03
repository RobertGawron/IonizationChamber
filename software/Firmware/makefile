################## SETUP  COMPILER ##################
CC          = sdcc
LD          = sdld
AR          = sdar
AS          = sdasstm8
OBJCOPY     = sdobjcopy
SIZE        = size
MAKE        = make

TARGET      = main
STDLIB      = STM8S_StdPeriph_Lib/Libraries/STM8S_StdPeriph_Driver
INCLUDEDIR  = $(STDLIB)/inc Inc
LIBSRCDIR   = $(STDLIB)/src
SRCS        = Src

MCU         = STM8S003
COMPILER    = __SDCC__
DEFINES     = -D$(COMPILER) -D$(MCU) -DUSE_STDPERIPH_DRIVER

#CFLAGS      = -mstm8 --std-c99 $(DEFINES) 

CFLAGS      = -mstm8  $(DEFINES) 
LDFLAGS     = $(addprefix -I ,$(INCLUDEDIR)) 

BUILD_DIR   = Build

IHX         = $(BUILD_DIR)/$(TARGET).ihx


################### BUILD PROCESS ###################
.PHONY: all build clean flash

all: make_build_dir build flash


make_build_dir:
	mkdir -p $(BUILD_DIR)

build:	$(IHX)



$(BUILD_DIR)/stm8s_gpio.rel:
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_beep.rel $(STDLIB)/src/stm8s_beep.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_clk.rel  $(STDLIB)/src/stm8s_clk.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_gpio.rel $(STDLIB)/src/stm8s_gpio.c

$(BUILD_DIR)/stm8s_uart1.rel:
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_clk.rel  $(STDLIB)/src/stm8s_clk.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_uart1.rel $(STDLIB)/src/stm8s_uart1.c


$(BUILD_DIR)/stm8s_it.rel:
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_i2c.rel $(STDLIB)/src/stm8s_i2c.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ -o Build/ "Src/stm8s_it.rel" "Src/stm8s_it.c"

$(BUILD_DIR)/MCP3425A0T.rel: $(SRCS)/MCP3425A0T.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/MCP3425A0T.rel $(SRCS)/MCP3425A0T.c

$(BUILD_DIR)/PulseCounter.rel: $(SRCS)/PulseCounter.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/PulseCounter.rel $(SRCS)/PulseCounter.c

$(BUILD_DIR)/UserInterface.rel: $(SRCS)/UserInterface.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/UserInterface.rel $(SRCS)/UserInterface.c

$(BUILD_DIR)/Logger.rel: $(SRCS)/Logger.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/Logger.rel $(SRCS)/Logger.c


$(BUILD_DIR)/ApplicationBuilder.rel: $(SRCS)/ApplicationBuilder.c $(BUILD_DIR)/MCP3425A0T.rel $(BUILD_DIR)/PulseCounter.rel $(BUILD_DIR)/Logger.rel $(BUILD_DIR)/UserInterface.rel $(BUILD_DIR)/stm8s_uart1.rel
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/ApplicationBuilder.rel $(SRCS)/ApplicationBuilder.c





$(IHX): $(SRCS)/$(TARGET).c $(BUILD_DIR)/ApplicationBuilder.rel $(BUILD_DIR)/stm8s_gpio.rel $(BUILD_DIR)/stm8s_it.rel  $(BUILD_DIR)/stm8s_uart1.rel $(BUILD_DIR)/stm8s_clk.rel
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $< $(BUILD_DIR)/stm8s_gpio.rel  $(BUILD_DIR)/stm8s_it.rel $(BUILD_DIR)/MCP3425A0T.rel $(BUILD_DIR)/ApplicationBuilder.rel $(BUILD_DIR)/PulseCounter.rel $(BUILD_DIR)/Logger.rel $(BUILD_DIR)/UserInterface.rel $(BUILD_DIR)/stm8s_uart1.rel $(BUILD_DIR)/stm8s_clk.rel
	$(SIZE) $@



clean:
	rm -rf $(BUILD_DIR)/*

flash: $(IHX)
	/opt/stm8flash -c stlink -p stm8s003f3 -w $<

