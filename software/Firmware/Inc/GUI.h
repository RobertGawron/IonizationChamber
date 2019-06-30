/*
 * GUI.h
 *
 *  Created on: 30.06.2019
 *      Author: robert
 */

#ifndef SRC_GUI_H_
#define SRC_GUI_H_

typedef enum GUI_Status { GUI_FAULT_MSG, GUI_INFO_MSG } GUI_Status;

void GUI_Init();

void GUI_ShowMessage(GUI_Status status);


#endif /* SRC_GUI_H_ */
