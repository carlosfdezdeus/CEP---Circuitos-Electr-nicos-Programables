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
extern void execute_1560(char*, char *);
extern void execute_1561(char*, char *);
extern void execute_90(char*, char *);
extern void execute_502(char*, char *);
extern void execute_642(char*, char *);
extern void execute_643(char*, char *);
extern void execute_1442(char*, char *);
extern void execute_198(char*, char *);
extern void execute_203(char*, char *);
extern void execute_204(char*, char *);
extern void execute_205(char*, char *);
extern void execute_206(char*, char *);
extern void execute_207(char*, char *);
extern void execute_210(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_145(char*, char *);
extern void execute_154(char*, char *);
extern void execute_516(char*, char *);
extern void execute_517(char*, char *);
extern void execute_518(char*, char *);
extern void execute_519(char*, char *);
extern void execute_520(char*, char *);
extern void execute_521(char*, char *);
extern void execute_522(char*, char *);
extern void execute_523(char*, char *);
extern void execute_524(char*, char *);
extern void execute_525(char*, char *);
extern void execute_657(char*, char *);
extern void execute_658(char*, char *);
extern void execute_659(char*, char *);
extern void execute_660(char*, char *);
extern void execute_661(char*, char *);
extern void execute_662(char*, char *);
extern void execute_663(char*, char *);
extern void execute_774(char*, char *);
extern void execute_979(char*, char *);
extern void execute_968(char*, char *);
extern void execute_1090(char*, char *);
extern void execute_1118(char*, char *);
extern void execute_855(char*, char *);
extern void execute_1227(char*, char *);
extern void execute_1228(char*, char *);
extern void execute_1229(char*, char *);
extern void execute_1230(char*, char *);
extern void execute_1231(char*, char *);
extern void execute_1232(char*, char *);
extern void execute_1233(char*, char *);
extern void execute_1376(char*, char *);
extern void execute_1392(char*, char *);
extern void execute_56(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_79(char*, char *);
extern void execute_103(char*, char *);
extern void execute_106(char*, char *);
extern void execute_113(char*, char *);
extern void execute_116(char*, char *);
extern void execute_119(char*, char *);
extern void execute_122(char*, char *);
extern void execute_125(char*, char *);
extern void execute_127(char*, char *);
extern void execute_130(char*, char *);
extern void execute_137(char*, char *);
extern void execute_140(char*, char *);
extern void execute_150(char*, char *);
extern void execute_161(char*, char *);
extern void execute_171(char*, char *);
extern void execute_174(char*, char *);
extern void execute_176(char*, char *);
extern void execute_178(char*, char *);
extern void execute_194(char*, char *);
extern void execute_505(char*, char *);
extern void execute_646(char*, char *);
extern void execute_654(char*, char *);
extern void execute_770(char*, char *);
extern void execute_963(char*, char *);
extern void execute_1109(char*, char *);
extern void execute_1206(char*, char *);
extern void execute_1209(char*, char *);
extern void execute_1217(char*, char *);
extern void execute_1445(char*, char *);
extern void execute_1446(char*, char *);
extern void execute_1447(char*, char *);
extern void execute_1448(char*, char *);
extern void execute_1449(char*, char *);
extern void execute_1450(char*, char *);
extern void execute_1451(char*, char *);
extern void execute_1452(char*, char *);
extern void execute_1453(char*, char *);
extern void execute_1455(char*, char *);
extern void execute_1456(char*, char *);
extern void execute_1457(char*, char *);
extern void execute_1458(char*, char *);
extern void execute_1459(char*, char *);
extern void execute_1460(char*, char *);
extern void execute_1461(char*, char *);
extern void execute_1462(char*, char *);
extern void execute_1463(char*, char *);
extern void execute_1464(char*, char *);
extern void execute_1465(char*, char *);
extern void execute_1466(char*, char *);
extern void execute_1467(char*, char *);
extern void execute_1468(char*, char *);
extern void execute_1469(char*, char *);
extern void execute_1470(char*, char *);
extern void execute_1471(char*, char *);
extern void execute_1472(char*, char *);
extern void execute_1559(char*, char *);
extern void execute_1523(char*, char *);
extern void execute_1524(char*, char *);
extern void execute_1525(char*, char *);
extern void execute_1526(char*, char *);
extern void execute_1527(char*, char *);
extern void execute_1528(char*, char *);
extern void execute_1529(char*, char *);
extern void execute_1530(char*, char *);
extern void execute_1531(char*, char *);
extern void execute_1532(char*, char *);
extern void execute_1533(char*, char *);
extern void execute_1534(char*, char *);
extern void execute_1535(char*, char *);
extern void execute_1536(char*, char *);
extern void execute_1537(char*, char *);
extern void execute_1538(char*, char *);
extern void execute_1539(char*, char *);
extern void execute_1540(char*, char *);
extern void execute_1541(char*, char *);
extern void execute_1542(char*, char *);
extern void execute_1543(char*, char *);
extern void execute_1544(char*, char *);
extern void execute_1545(char*, char *);
extern void execute_1546(char*, char *);
extern void execute_1547(char*, char *);
extern void execute_1548(char*, char *);
extern void execute_1549(char*, char *);
extern void execute_1550(char*, char *);
extern void execute_1551(char*, char *);
extern void execute_1552(char*, char *);
extern void execute_1553(char*, char *);
extern void execute_1554(char*, char *);
extern void execute_1555(char*, char *);
extern void execute_1556(char*, char *);
extern void execute_1557(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_231(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_239(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_247(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_255(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_263(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_272(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_280(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_288(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_295(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_354(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_373(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_392(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_411(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_430(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_449(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_487(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_515(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_524(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_534(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_544(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_554(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_564(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_574(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_584(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_594(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_604(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_611(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_619(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_626(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_634(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_641(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_649(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_656(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_671(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_679(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_686(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_701(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_709(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_724(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_732(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_740(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_748(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_756(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_764(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_772(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_780(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_788(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_797(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_805(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_813(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_821(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_829(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_837(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_845(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_853(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_861(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_871(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_879(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_887(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_895(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_903(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_911(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_919(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_927(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_935(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_944(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_952(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_960(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_967(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_975(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_982(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_990(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_997(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1005(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1012(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1020(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1027(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1035(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1042(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1050(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1057(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1065(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1072(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1080(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1087(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1095(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1126(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1179(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1185(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1186(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1214(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1234(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1241(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1266(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1267(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1268(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1269(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1272(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1273(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1286(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1287(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1288(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1289(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1292(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[281] = {(funcp)execute_1560, (funcp)execute_1561, (funcp)execute_90, (funcp)execute_502, (funcp)execute_642, (funcp)execute_643, (funcp)execute_1442, (funcp)execute_198, (funcp)execute_203, (funcp)execute_204, (funcp)execute_205, (funcp)execute_206, (funcp)execute_207, (funcp)execute_210, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_145, (funcp)execute_154, (funcp)execute_516, (funcp)execute_517, (funcp)execute_518, (funcp)execute_519, (funcp)execute_520, (funcp)execute_521, (funcp)execute_522, (funcp)execute_523, (funcp)execute_524, (funcp)execute_525, (funcp)execute_657, (funcp)execute_658, (funcp)execute_659, (funcp)execute_660, (funcp)execute_661, (funcp)execute_662, (funcp)execute_663, (funcp)execute_774, (funcp)execute_979, (funcp)execute_968, (funcp)execute_1090, (funcp)execute_1118, (funcp)execute_855, (funcp)execute_1227, (funcp)execute_1228, (funcp)execute_1229, (funcp)execute_1230, (funcp)execute_1231, (funcp)execute_1232, (funcp)execute_1233, (funcp)execute_1376, (funcp)execute_1392, (funcp)execute_56, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_79, (funcp)execute_103, (funcp)execute_106, (funcp)execute_113, (funcp)execute_116, (funcp)execute_119, (funcp)execute_122, (funcp)execute_125, (funcp)execute_127, (funcp)execute_130, (funcp)execute_137, (funcp)execute_140, (funcp)execute_150, (funcp)execute_161, (funcp)execute_171, (funcp)execute_174, (funcp)execute_176, (funcp)execute_178, (funcp)execute_194, (funcp)execute_505, (funcp)execute_646, (funcp)execute_654, (funcp)execute_770, (funcp)execute_963, (funcp)execute_1109, (funcp)execute_1206, (funcp)execute_1209, (funcp)execute_1217, (funcp)execute_1445, (funcp)execute_1446, (funcp)execute_1447, (funcp)execute_1448, (funcp)execute_1449, (funcp)execute_1450, (funcp)execute_1451, (funcp)execute_1452, (funcp)execute_1453, (funcp)execute_1455, (funcp)execute_1456, (funcp)execute_1457, (funcp)execute_1458, (funcp)execute_1459, (funcp)execute_1460, (funcp)execute_1461, (funcp)execute_1462, (funcp)execute_1463, (funcp)execute_1464, (funcp)execute_1465, (funcp)execute_1466, (funcp)execute_1467, (funcp)execute_1468, (funcp)execute_1469, (funcp)execute_1470, (funcp)execute_1471, (funcp)execute_1472, (funcp)execute_1559, (funcp)execute_1523, (funcp)execute_1524, (funcp)execute_1525, (funcp)execute_1526, (funcp)execute_1527, (funcp)execute_1528, (funcp)execute_1529, (funcp)execute_1530, (funcp)execute_1531, (funcp)execute_1532, (funcp)execute_1533, (funcp)execute_1534, (funcp)execute_1535, (funcp)execute_1536, (funcp)execute_1537, (funcp)execute_1538, (funcp)execute_1539, (funcp)execute_1540, (funcp)execute_1541, (funcp)execute_1542, (funcp)execute_1543, (funcp)execute_1544, (funcp)execute_1545, (funcp)execute_1546, (funcp)execute_1547, (funcp)execute_1548, (funcp)execute_1549, (funcp)execute_1550, (funcp)execute_1551, (funcp)execute_1552, (funcp)execute_1553, (funcp)execute_1554, (funcp)execute_1555, (funcp)execute_1556, (funcp)execute_1557, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_5, (funcp)transaction_231, (funcp)transaction_239, (funcp)transaction_247, (funcp)transaction_255, (funcp)transaction_263, (funcp)transaction_272, (funcp)transaction_280, (funcp)transaction_288, (funcp)transaction_295, (funcp)transaction_304, (funcp)transaction_311, (funcp)transaction_318, (funcp)transaction_335, (funcp)transaction_354, (funcp)transaction_373, (funcp)transaction_392, (funcp)transaction_411, (funcp)transaction_430, (funcp)transaction_449, (funcp)transaction_468, (funcp)transaction_487, (funcp)transaction_506, (funcp)transaction_515, (funcp)transaction_524, (funcp)transaction_534, (funcp)transaction_544, (funcp)transaction_554, (funcp)transaction_564, (funcp)transaction_574, (funcp)transaction_584, (funcp)transaction_594, (funcp)transaction_604, (funcp)transaction_611, (funcp)transaction_619, (funcp)transaction_626, (funcp)transaction_634, (funcp)transaction_641, (funcp)transaction_649, (funcp)transaction_656, (funcp)transaction_664, (funcp)transaction_671, (funcp)transaction_679, (funcp)transaction_686, (funcp)transaction_694, (funcp)transaction_701, (funcp)transaction_709, (funcp)transaction_716, (funcp)transaction_724, (funcp)transaction_732, (funcp)transaction_740, (funcp)transaction_748, (funcp)transaction_756, (funcp)transaction_764, (funcp)transaction_772, (funcp)transaction_780, (funcp)transaction_788, (funcp)transaction_797, (funcp)transaction_805, (funcp)transaction_813, (funcp)transaction_821, (funcp)transaction_829, (funcp)transaction_837, (funcp)transaction_845, (funcp)transaction_853, (funcp)transaction_861, (funcp)transaction_871, (funcp)transaction_879, (funcp)transaction_887, (funcp)transaction_895, (funcp)transaction_903, (funcp)transaction_911, (funcp)transaction_919, (funcp)transaction_927, (funcp)transaction_935, (funcp)transaction_944, (funcp)transaction_952, (funcp)transaction_960, (funcp)transaction_967, (funcp)transaction_975, (funcp)transaction_982, (funcp)transaction_990, (funcp)transaction_997, (funcp)transaction_1005, (funcp)transaction_1012, (funcp)transaction_1020, (funcp)transaction_1027, (funcp)transaction_1035, (funcp)transaction_1042, (funcp)transaction_1050, (funcp)transaction_1057, (funcp)transaction_1065, (funcp)transaction_1072, (funcp)transaction_1080, (funcp)transaction_1087, (funcp)transaction_1095, (funcp)transaction_1102, (funcp)transaction_1110, (funcp)transaction_1117, (funcp)transaction_1126, (funcp)transaction_1133, (funcp)transaction_1140, (funcp)transaction_1147, (funcp)transaction_1172, (funcp)transaction_1175, (funcp)transaction_1178, (funcp)transaction_1179, (funcp)transaction_1181, (funcp)transaction_1182, (funcp)transaction_1183, (funcp)transaction_1184, (funcp)transaction_1185, (funcp)transaction_1186, (funcp)transaction_1213, (funcp)transaction_1214, (funcp)transaction_1215, (funcp)transaction_1216, (funcp)transaction_1234, (funcp)transaction_1241, (funcp)transaction_1243, (funcp)transaction_1250, (funcp)transaction_1266, (funcp)transaction_1267, (funcp)transaction_1268, (funcp)transaction_1269, (funcp)transaction_1270, (funcp)transaction_1271, (funcp)transaction_1272, (funcp)transaction_1273, (funcp)transaction_1286, (funcp)transaction_1287, (funcp)transaction_1288, (funcp)transaction_1289, (funcp)transaction_1292};
const int NumRelocateId= 281;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Micro_TB_behav/xsim.reloc",  (void **)funcTab, 281);
	iki_vhdl_file_variable_register(dp + 280024);
	iki_vhdl_file_variable_register(dp + 280080);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Micro_TB_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Micro_TB_behav/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/Micro_TB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Micro_TB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Micro_TB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
