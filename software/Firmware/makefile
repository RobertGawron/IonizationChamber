################## SETUP  COMPILER ##################
CC          = sdcc
LD          = sdld
AR          = sdar
AS          = sdasstm8
OBJCOPY     = sdobjcopy
SIZE        = size
MAKE        = make

TARGET      = main
STDLIB      = STM8S_StdPeriph_Lib
INCLUDEDIR  = $(STDLIB)/inc Inc
LIBSRCDIR   = $(STDLIB)/src
SRCS        = Src

MCU         = STM8S003
COMPILER    = __SDCC__
DEFINES     = -D$(COMPILER) -D$(MCU) -DUSE_STDPERIPH_DRIVER 
#-DSTM8S003

#CFLAGS      = -mstm8 --std-c99 $(DEFINES) 

CFLAGS      = -mstm8  $(DEFINES) --opt-code-size
LDFLAGS     = $(addprefix -I ,$(INCLUDEDIR)) 

BUILD_DIR   = Build

IHX         = $(BUILD_DIR)/$(TARGET).ihx


################### BUILD PROCESS ###################
.PHONY: all build clean flash

all:  make_build_dir build flash


make_build_dir:
	mkdir -p $(BUILD_DIR)

build:	$(IHX)



$(BUILD_DIR)/stm8s_gpio.rel:
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_gpio.rel $(STDLIB)/src/stm8s_gpio.c

$(BUILD_DIR)/stm8s_clk.rel:
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_clk.rel  $(STDLIB)/src/stm8s_clk.c

$(BUILD_DIR)/stm8s_uart1.rel:
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_uart1.rel $(STDLIB)/src/stm8s_uart1.c

$(BUILD_DIR)/stm8s_i2c.rel:
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_i2c.rel $(STDLIB)/src/stm8s_i2c.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ -o Build/ "Src/stm8s_it.rel" "Src/stm8s_it.c"

$(BUILD_DIR)/stm8s_tim1.rel:
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(STDLIB)/src/stm8s_tim1.rel $(STDLIB)/src/stm8s_tim1.c



$(BUILD_DIR)/stm8s_it.rel: $(SRCS)/stm8s_it.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/stm8s_it.rel $(SRCS)/stm8s_it.c

$(BUILD_DIR)/ClockConfigurator.rel: $(SRCS)/ClockConfigurator.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/ClockConfigurator.rel $(SRCS)/ClockConfigurator.c

$(BUILD_DIR)/TimerConfigurator.rel: $(SRCS)/TimerConfigurator.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/TimerConfigurator.rel $(SRCS)/TimerConfigurator.c

$(BUILD_DIR)/VoltageSensorActualValue.rel: $(SRCS)/VoltageSensorActualValue.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/VoltageSensorActualValue.rel $(SRCS)/VoltageSensorActualValue.c
    
$(BUILD_DIR)/VoltageSensorPeakValue.rel: $(SRCS)/VoltageSensorPeakValue.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/VoltageSensorPeakValue.rel $(SRCS)/VoltageSensorPeakValue.c

$(BUILD_DIR)/PulseCounter.rel: $(SRCS)/PulseCounter.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/PulseCounter.rel $(SRCS)/PulseCounter.c

$(BUILD_DIR)/UserInterface.rel: $(SRCS)/UserInterface.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/UserInterface.rel $(SRCS)/UserInterface.c

$(BUILD_DIR)/Logger.rel: $(SRCS)/Logger.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/Logger.rel $(SRCS)/Logger.c

$(BUILD_DIR)/MeasurementCollector.rel: $(SRCS)/MeasurementCollector.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/MeasurementCollector.rel $(SRCS)/MeasurementCollector.c

$(BUILD_DIR)/MeassurementFrame.rel: $(SRCS)/MeassurementFrame.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/MeassurementFrame.rel $(SRCS)/MeassurementFrame.c    

$(BUILD_DIR)/ApplicationBuilder.rel:  $(SRCS)/ApplicationBuilder.c $(BUILD_DIR)/VoltageSensorActualValue.rel $(BUILD_DIR)/PulseCounter.rel $(BUILD_DIR)/Logger.rel $(BUILD_DIR)/UserInterface.rel $(BUILD_DIR)/stm8s_uart1.rel $(BUILD_DIR)/TimerConfigurator.rel $(BUILD_DIR)/stm8s_i2c.rel $(BUILD_DIR)/MeasurementCollector.rel $(BUILD_DIR)/MeassurementFrame.rel
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $(SRCS)/ApplicationBuilder.rel $(SRCS)/ApplicationBuilder.c



$(IHX): $(SRCS)/$(TARGET).c \
    	$(BUILD_DIR)/ApplicationBuilder.rel \
    	$(BUILD_DIR)/stm8s_gpio.rel \
    	$(BUILD_DIR)/stm8s_i2c.rel \
    	$(BUILD_DIR)/stm8s_uart1.rel \
    	$(BUILD_DIR)/stm8s_clk.rel \
    	$(BUILD_DIR)/ClockConfigurator.rel \
    	$(BUILD_DIR)/stm8s_tim1.rel \
        $(BUILD_DIR)/stm8s_it.rel \
		$(BUILD_DIR)/Logger.rel \
        $(BUILD_DIR)/VoltageSensorPeakValue.rel \
		$(BUILD_DIR)/MeasurementCollector.rel \
        $(BUILD_DIR)/MeassurementFrame.rel
	
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $< \
    	$(BUILD_DIR)/stm8s_gpio.rel \
    	$(BUILD_DIR)/stm8s_it.rel \
    	$(BUILD_DIR)/VoltageSensorActualValue.rel \
    	$(BUILD_DIR)/ApplicationBuilder.rel \
    	$(BUILD_DIR)/PulseCounter.rel \
    	$(BUILD_DIR)/Logger.rel \
    	$(BUILD_DIR)/UserInterface.rel \
    	$(BUILD_DIR)/stm8s_uart1.rel \
    	$(BUILD_DIR)/stm8s_clk.rel \
    	$(BUILD_DIR)/stm8s_i2c.rel \
    	$(BUILD_DIR)/ClockConfigurator.rel \
    	$(BUILD_DIR)/TimerConfigurator.rel \
    	$(BUILD_DIR)/stm8s_tim1.rel \
        $(BUILD_DIR)/VoltageSensorPeakValue.rel \
        $(BUILD_DIR)/MeasurementCollector.rel \
        $(BUILD_DIR)/MeassurementFrame.rel
	       
	$(SIZE) $@



clean:
	rm -rf $(BUILD_DIR)/*

flash: $(IHX)
	stm8flash -c stlink -p stm8s003f3 -w $<

doc:
	doxygen doxygen.cfg 

formatting:
	uncrustify -c uncrustify.cfg --no-backup $(SRCS)/*.c  
	uncrustify -c uncrustify.cfg --no-backup Inc/*.h  

