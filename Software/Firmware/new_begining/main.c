

/*
#include <stdint.h>
#include "assert_impl.h"

#include "clk_conf.h"
#include "user_interface.h"
*/
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