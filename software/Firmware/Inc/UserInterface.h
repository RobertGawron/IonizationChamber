/*
 * GUI.h
 *
 *  Created on: 30.06.2019
 *      Author: robert
 */

#ifndef SRC_GUI_H_
#define SRC_GUI_H_

typedef enum UserInterface_Status { GUI_FAULT_MSG, GUI_INFO_MSG } GUI_Status;

void UserInterface_Init();

void UserInterface_ShowMessage(GUI_Status status);


#endif /* SRC_GUI_H_ */
