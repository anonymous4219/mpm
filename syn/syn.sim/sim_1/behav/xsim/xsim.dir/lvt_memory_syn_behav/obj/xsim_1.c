/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_3(char*, char *);
IKI_DLLESPEC extern void execute_4609(char*, char *);
IKI_DLLESPEC extern void execute_4610(char*, char *);
IKI_DLLESPEC extern void execute_4611(char*, char *);
IKI_DLLESPEC extern void execute_1493(char*, char *);
IKI_DLLESPEC extern void execute_1494(char*, char *);
IKI_DLLESPEC extern void execute_4569(char*, char *);
IKI_DLLESPEC extern void execute_4608(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_1496(char*, char *);
IKI_DLLESPEC extern void execute_4576(char*, char *);
IKI_DLLESPEC extern void execute_4577(char*, char *);
IKI_DLLESPEC extern void execute_4578(char*, char *);
IKI_DLLESPEC extern void execute_4579(char*, char *);
IKI_DLLESPEC extern void execute_4580(char*, char *);
IKI_DLLESPEC extern void execute_4581(char*, char *);
IKI_DLLESPEC extern void execute_4582(char*, char *);
IKI_DLLESPEC extern void execute_4583(char*, char *);
IKI_DLLESPEC extern void execute_4584(char*, char *);
IKI_DLLESPEC extern void execute_4585(char*, char *);
IKI_DLLESPEC extern void execute_4586(char*, char *);
IKI_DLLESPEC extern void execute_4587(char*, char *);
IKI_DLLESPEC extern void execute_4588(char*, char *);
IKI_DLLESPEC extern void execute_4589(char*, char *);
IKI_DLLESPEC extern void execute_4590(char*, char *);
IKI_DLLESPEC extern void execute_4591(char*, char *);
IKI_DLLESPEC extern void execute_4592(char*, char *);
IKI_DLLESPEC extern void execute_4593(char*, char *);
IKI_DLLESPEC extern void execute_4594(char*, char *);
IKI_DLLESPEC extern void execute_4595(char*, char *);
IKI_DLLESPEC extern void execute_4596(char*, char *);
IKI_DLLESPEC extern void execute_4597(char*, char *);
IKI_DLLESPEC extern void execute_4598(char*, char *);
IKI_DLLESPEC extern void execute_4599(char*, char *);
IKI_DLLESPEC extern void execute_4600(char*, char *);
IKI_DLLESPEC extern void execute_4601(char*, char *);
IKI_DLLESPEC extern void execute_4602(char*, char *);
IKI_DLLESPEC extern void execute_4603(char*, char *);
IKI_DLLESPEC extern void execute_4604(char*, char *);
IKI_DLLESPEC extern void execute_4605(char*, char *);
IKI_DLLESPEC extern void execute_4606(char*, char *);
IKI_DLLESPEC extern void execute_4607(char*, char *);
IKI_DLLESPEC extern void execute_1498(char*, char *);
IKI_DLLESPEC extern void execute_1499(char*, char *);
IKI_DLLESPEC extern void execute_4572(char*, char *);
IKI_DLLESPEC extern void execute_4573(char*, char *);
IKI_DLLESPEC extern void execute_4574(char*, char *);
IKI_DLLESPEC extern void execute_4575(char*, char *);
IKI_DLLESPEC extern void execute_4612(char*, char *);
IKI_DLLESPEC extern void execute_4613(char*, char *);
IKI_DLLESPEC extern void execute_4614(char*, char *);
IKI_DLLESPEC extern void execute_4615(char*, char *);
IKI_DLLESPEC extern void execute_4616(char*, char *);
IKI_DLLESPEC extern void execute_4617(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback_2state(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[58] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4609, (funcp)execute_4610, (funcp)execute_4611, (funcp)execute_1493, (funcp)execute_1494, (funcp)execute_4569, (funcp)execute_4608, (funcp)execute_6, (funcp)execute_7, (funcp)execute_1496, (funcp)execute_4576, (funcp)execute_4577, (funcp)execute_4578, (funcp)execute_4579, (funcp)execute_4580, (funcp)execute_4581, (funcp)execute_4582, (funcp)execute_4583, (funcp)execute_4584, (funcp)execute_4585, (funcp)execute_4586, (funcp)execute_4587, (funcp)execute_4588, (funcp)execute_4589, (funcp)execute_4590, (funcp)execute_4591, (funcp)execute_4592, (funcp)execute_4593, (funcp)execute_4594, (funcp)execute_4595, (funcp)execute_4596, (funcp)execute_4597, (funcp)execute_4598, (funcp)execute_4599, (funcp)execute_4600, (funcp)execute_4601, (funcp)execute_4602, (funcp)execute_4603, (funcp)execute_4604, (funcp)execute_4605, (funcp)execute_4606, (funcp)execute_4607, (funcp)execute_1498, (funcp)execute_1499, (funcp)execute_4572, (funcp)execute_4573, (funcp)execute_4574, (funcp)execute_4575, (funcp)execute_4612, (funcp)execute_4613, (funcp)execute_4614, (funcp)execute_4615, (funcp)execute_4616, (funcp)execute_4617, (funcp)vlog_transfunc_eventcallback, (funcp)vlog_transfunc_eventcallback_2state};
const int NumRelocateId= 58;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/lvt_memory_syn_behav/xsim.reloc",  (void **)funcTab, 58);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/lvt_memory_syn_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/lvt_memory_syn_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/lvt_memory_syn_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/lvt_memory_syn_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/lvt_memory_syn_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
