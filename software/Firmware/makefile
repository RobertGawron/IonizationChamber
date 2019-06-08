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
LIBSRC      = $(LIBSRCDIR)/stm8s_adc1.c  $(LIBSRCDIR)/stm8s_awu.c
LIBSRC     += $(LIBSRCDIR)/stm8s_beep.c  $(LIBSRCDIR)/stm8s_clk.c
LIBSRC     += $(LIBSRCDIR)/stm8s_exti.c  $(LIBSRCDIR)/stm8s_flash.c
LIBSRC     += $(LIBSRCDIR)/stm8s_gpio.c  $(LIBSRCDIR)/stm8s_i2c.c
LIBSRC     += $(LIBSRCDIR)/stm8s_itc.c   $(LIBSRCDIR)/stm8s_iwdg.c
LIBSRC     += $(LIBSRCDIR)/stm8s_rst.c   $(LIBSRCDIR)/stm8s_spi.c
LIBSRC     += $(LIBSRCDIR)/stm8s_tim1.c  $(LIBSRCDIR)/stm8s_tim3.c
LIBSRC     += $(LIBSRCDIR)/stm8s_uart2.c $(LIBSRCDIR)/stm8s_wwdg.c
LIBSRC     += $(SRCS)/stm8s_it.c
LIBSRC     +=

SRCS        = Src
OBJS        = $(LIBSRC:.c=.rel)

MCU         = STM8S105
COMPILER    = __SDCC__
DEFINES     = -D$(COMPILER) -D$(MCU) -DUSE_STDPERIPH_DRIVER

CFLAGS      = -mstm8 --std-c99 $(DEFINES)
LDFLAGS     = $(addprefix -I ,$(INCLUDEDIR))

BUILD_DIR   = Build

IHX         = $(BUILD_DIR)/$(TARGET).ihx



################### BUILD PROCESS ###################
.PHONY: all build clean flash

all: build

build: $(OBJS) $(IHX)

$(OBJS):

%.rel: %.c
	mkdir -p $(BUILD_DIR)
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $<

$(IHX): $(SRCS)/$(TARGET).c
#	mkdir -p $(BUILD_DIR)
#	$(CC) -c $(CFLAGS) -I$(INCLUDEDIR) -I. -L$(LIBSRCDIR) $(DEFINES) -o $(BUILD_DIR)/ $(LIBSRC)
#	$(CC) -c $(CFLAGS) $(LDFLAGS) $(LIBSRCDIR)/stm8s_beep.c -o $(BUILD_DIR)/
#	$(CC) -c $(CFLAGS) $(LDFLAGS) $(LIBSRCDIR)/stm8s_gpio.c -o $(BUILD_DIR)/
#	$(CC) $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $< $(BUILD_DIR)/*.rel
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(BUILD_DIR)/ $< $(BUILD_DIR)/stm8s_beep.rel \
	                                               $(BUILD_DIR)/stm8s_gpio.rel \
	                                               $(BUILD_DIR)/stm8s_it.rel
	$(SIZE) $@

clean:
	rm -rf $(BUILD_DIR)/*

flash: $(IHX)
	stm8flash -c stlinkv2 -p stm8s105k4 -s flash -w $<

