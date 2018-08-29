#include <amxmodx>
#include <fakemeta>

public plugin_init()
{
	register_plugin("Crash", "1.0", "dev-cs.ru");

	// Generate exception code 0xC0000005
	set_task(1.0, "GenerateExceptionCode");
}

public GenerateExceptionCode()
{
	server_print("[Crash]: Executed segmentation fault! Exception code: 0xC0000005");

	// Put invalid pointer that will be generate access violation exception
	set_tr2(0xDEADBEEF, TR_InWater, true);
}

//by s1lentq, https://github.com/theAsmodai/metamod-r/issues/42#issuecomment-416456526
