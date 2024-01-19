/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


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
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


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
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_66(char*, char *);
extern void execute_72(char*, char *);
extern void execute_74(char*, char *);
extern void execute_29(char*, char *);
extern void execute_42(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_55(char*, char *);
extern void execute_111(char*, char *);
extern void execute_114(char*, char *);
extern void execute_122(char*, char *);
extern void execute_130(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_148(char*, char *);
extern void execute_287(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_218(char*, char *);
extern void execute_272(char*, char *);
extern void execute_275(char*, char *);
extern void execute_278(char*, char *);
extern void execute_286(char*, char *);
extern void execute_407(char*, char *);
extern void execute_430(char*, char *);
extern void execute_438(char*, char *);
extern void execute_699(char*, char *);
extern void execute_700(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_179(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_185(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_224(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_258(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_267(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_282(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_292(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_307(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_312(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_322(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_327(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_337(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_342(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_357(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_372(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_382(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_387(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_393(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_398(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_404(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_409(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_417(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_425(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_435(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_450(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_455(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_465(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_470(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_480(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_485(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_495(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_500(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_510(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_515(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_525(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_530(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_540(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_545(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_555(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_560(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_569(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_584(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_587(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_590(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_593(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_596(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_599(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_602(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_605(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_609(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_616(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_623(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_638(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[115] = {(funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_66, (funcp)execute_72, (funcp)execute_74, (funcp)execute_29, (funcp)execute_42, (funcp)execute_52, (funcp)execute_53, (funcp)execute_55, (funcp)execute_111, (funcp)execute_114, (funcp)execute_122, (funcp)execute_130, (funcp)execute_137, (funcp)execute_138, (funcp)execute_139, (funcp)execute_140, (funcp)execute_148, (funcp)execute_287, (funcp)execute_288, (funcp)execute_289, (funcp)execute_218, (funcp)execute_272, (funcp)execute_275, (funcp)execute_278, (funcp)execute_286, (funcp)execute_407, (funcp)execute_430, (funcp)execute_438, (funcp)execute_699, (funcp)execute_700, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_82, (funcp)transaction_89, (funcp)transaction_96, (funcp)transaction_103, (funcp)transaction_111, (funcp)transaction_119, (funcp)transaction_127, (funcp)transaction_133, (funcp)transaction_138, (funcp)transaction_146, (funcp)transaction_155, (funcp)transaction_170, (funcp)transaction_173, (funcp)transaction_176, (funcp)transaction_179, (funcp)transaction_182, (funcp)transaction_185, (funcp)transaction_188, (funcp)transaction_191, (funcp)transaction_195, (funcp)transaction_202, (funcp)transaction_209, (funcp)transaction_216, (funcp)transaction_224, (funcp)transaction_258, (funcp)transaction_267, (funcp)transaction_277, (funcp)transaction_282, (funcp)transaction_292, (funcp)transaction_297, (funcp)transaction_307, (funcp)transaction_312, (funcp)transaction_322, (funcp)transaction_327, (funcp)transaction_337, (funcp)transaction_342, (funcp)transaction_352, (funcp)transaction_357, (funcp)transaction_367, (funcp)transaction_372, (funcp)transaction_382, (funcp)transaction_387, (funcp)transaction_393, (funcp)transaction_398, (funcp)transaction_404, (funcp)transaction_409, (funcp)transaction_417, (funcp)transaction_425, (funcp)transaction_435, (funcp)transaction_440, (funcp)transaction_450, (funcp)transaction_455, (funcp)transaction_465, (funcp)transaction_470, (funcp)transaction_480, (funcp)transaction_485, (funcp)transaction_495, (funcp)transaction_500, (funcp)transaction_510, (funcp)transaction_515, (funcp)transaction_525, (funcp)transaction_530, (funcp)transaction_540, (funcp)transaction_545, (funcp)transaction_555, (funcp)transaction_560, (funcp)transaction_569, (funcp)transaction_584, (funcp)transaction_587, (funcp)transaction_590, (funcp)transaction_593, (funcp)transaction_596, (funcp)transaction_599, (funcp)transaction_602, (funcp)transaction_605, (funcp)transaction_609, (funcp)transaction_616, (funcp)transaction_623, (funcp)transaction_630, (funcp)transaction_638};
const int NumRelocateId= 115;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/uart_rs232_behav/xsim.reloc",  (void **)funcTab, 115);
	iki_vhdl_file_variable_register(dp + 132608);
	iki_vhdl_file_variable_register(dp + 132664);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/uart_rs232_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/uart_rs232_behav/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/uart_rs232_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/uart_rs232_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/uart_rs232_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
