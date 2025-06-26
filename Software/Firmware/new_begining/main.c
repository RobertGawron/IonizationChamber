

#include "app_builder.h"

int main()
{
    app_builder_init();

    for (;;)
    {
        app_builder_run();
    }

    return 0;
}