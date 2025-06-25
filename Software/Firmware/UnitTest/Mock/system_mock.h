#ifndef SystemMock_h
#define SystemMock_h

/* we use real headers, for below they use __asm__ we need to undefine them to avoid compilation  errors
 used only in unit tests, no production code */
#define __interrupt(interr)
#define __trap

#endif
