#ifndef UserInterface_h
#define UserInterface_h

typedef enum UserInterface_Message
{
    USER_INTERFACE_COLLECTING_DATA_MSG,
    USER_INTERFACE_STATE_OK_MSG
} UserInterface_Message_t;

typedef enum UserInterface_MessageState
{
    USER_INTERFACE_ENABLE,
    USER_INTERFACE_DISABLE
} UserInterface_MessageAction_t;

void user_interface_init();

void user_interface_update_message(
    const UserInterface_Message_t       message,
    const UserInterface_MessageAction_t state);

#endif
