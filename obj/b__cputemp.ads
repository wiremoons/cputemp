pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 9.3.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_cputemp" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#62a5c655#;
   pragma Export (C, u00001, "cputempB");
   u00002 : constant Version_32 := 16#050ff2f0#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#70c0456d#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#7e1a0b30#;
   pragma Export (C, u00005, "ada__command_lineB");
   u00006 : constant Version_32 := 16#3cdef8c9#;
   pragma Export (C, u00006, "ada__command_lineS");
   u00007 : constant Version_32 := 16#77e65b42#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#c2f8f675#;
   pragma Export (C, u00008, "system__secondary_stackB");
   u00009 : constant Version_32 := 16#3272a35b#;
   pragma Export (C, u00009, "system__secondary_stackS");
   u00010 : constant Version_32 := 16#a6b17eb4#;
   pragma Export (C, u00010, "ada__exceptionsB");
   u00011 : constant Version_32 := 16#698d4f2d#;
   pragma Export (C, u00011, "ada__exceptionsS");
   u00012 : constant Version_32 := 16#5726abed#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerB");
   u00013 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerS");
   u00014 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#32e550f4#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#75bf515c#;
   pragma Export (C, u00016, "system__soft_links__initializeB");
   u00017 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00017, "system__soft_links__initializeS");
   u00018 : constant Version_32 := 16#86dbf443#;
   pragma Export (C, u00018, "system__parametersB");
   u00019 : constant Version_32 := 16#3f0a0f69#;
   pragma Export (C, u00019, "system__parametersS");
   u00020 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00020, "system__stack_checkingB");
   u00021 : constant Version_32 := 16#f95930aa#;
   pragma Export (C, u00021, "system__stack_checkingS");
   u00022 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00022, "system__storage_elementsB");
   u00023 : constant Version_32 := 16#5a251146#;
   pragma Export (C, u00023, "system__storage_elementsS");
   u00024 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#2a483200#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#1f8536b4#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00028, "system__exceptions__machineB");
   u00029 : constant Version_32 := 16#d27d9682#;
   pragma Export (C, u00029, "system__exceptions__machineS");
   u00030 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00030, "system__exceptions_debugB");
   u00031 : constant Version_32 := 16#096ca286#;
   pragma Export (C, u00031, "system__exceptions_debugS");
   u00032 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00032, "system__img_intB");
   u00033 : constant Version_32 := 16#753dbb80#;
   pragma Export (C, u00033, "system__img_intS");
   u00034 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00034, "system__tracebackB");
   u00035 : constant Version_32 := 16#29c48586#;
   pragma Export (C, u00035, "system__tracebackS");
   u00036 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00036, "system__traceback_entriesB");
   u00037 : constant Version_32 := 16#77bdad32#;
   pragma Export (C, u00037, "system__traceback_entriesS");
   u00038 : constant Version_32 := 16#bb296fbb#;
   pragma Export (C, u00038, "system__traceback__symbolicB");
   u00039 : constant Version_32 := 16#c84061d1#;
   pragma Export (C, u00039, "system__traceback__symbolicS");
   u00040 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00040, "ada__exceptions__tracebackB");
   u00041 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00041, "ada__exceptions__tracebackS");
   u00042 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00042, "system__address_imageB");
   u00043 : constant Version_32 := 16#d60ac678#;
   pragma Export (C, u00043, "system__address_imageS");
   u00044 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00044, "system__wch_conB");
   u00045 : constant Version_32 := 16#6c9b7990#;
   pragma Export (C, u00045, "system__wch_conS");
   u00046 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00046, "system__wch_stwB");
   u00047 : constant Version_32 := 16#418a5591#;
   pragma Export (C, u00047, "system__wch_stwS");
   u00048 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00048, "system__wch_cnvB");
   u00049 : constant Version_32 := 16#632cc363#;
   pragma Export (C, u00049, "system__wch_cnvS");
   u00050 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00050, "interfacesS");
   u00051 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00051, "system__wch_jisB");
   u00052 : constant Version_32 := 16#e35cda42#;
   pragma Export (C, u00052, "system__wch_jisS");
   u00053 : constant Version_32 := 16#e409d454#;
   pragma Export (C, u00053, "ada__directoriesB");
   u00054 : constant Version_32 := 16#18050e83#;
   pragma Export (C, u00054, "ada__directoriesS");
   u00055 : constant Version_32 := 16#9a2e29aa#;
   pragma Export (C, u00055, "ada__calendarB");
   u00056 : constant Version_32 := 16#c4f07049#;
   pragma Export (C, u00056, "ada__calendarS");
   u00057 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00057, "interfaces__cB");
   u00058 : constant Version_32 := 16#467817d8#;
   pragma Export (C, u00058, "interfaces__cS");
   u00059 : constant Version_32 := 16#51f2d040#;
   pragma Export (C, u00059, "system__os_primitivesB");
   u00060 : constant Version_32 := 16#701b3eb4#;
   pragma Export (C, u00060, "system__os_primitivesS");
   u00061 : constant Version_32 := 16#10f667b3#;
   pragma Export (C, u00061, "ada__calendar__formattingB");
   u00062 : constant Version_32 := 16#f87a094f#;
   pragma Export (C, u00062, "ada__calendar__formattingS");
   u00063 : constant Version_32 := 16#e3cca715#;
   pragma Export (C, u00063, "ada__calendar__time_zonesB");
   u00064 : constant Version_32 := 16#f21593b3#;
   pragma Export (C, u00064, "ada__calendar__time_zonesS");
   u00065 : constant Version_32 := 16#d763507a#;
   pragma Export (C, u00065, "system__val_intB");
   u00066 : constant Version_32 := 16#3f43717d#;
   pragma Export (C, u00066, "system__val_intS");
   u00067 : constant Version_32 := 16#436027c1#;
   pragma Export (C, u00067, "system__unsigned_typesS");
   u00068 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00068, "system__val_unsB");
   u00069 : constant Version_32 := 16#53c8cafa#;
   pragma Export (C, u00069, "system__val_unsS");
   u00070 : constant Version_32 := 16#269742a9#;
   pragma Export (C, u00070, "system__val_utilB");
   u00071 : constant Version_32 := 16#db46edbc#;
   pragma Export (C, u00071, "system__val_utilS");
   u00072 : constant Version_32 := 16#ec4d5631#;
   pragma Export (C, u00072, "system__case_utilB");
   u00073 : constant Version_32 := 16#4833ed16#;
   pragma Export (C, u00073, "system__case_utilS");
   u00074 : constant Version_32 := 16#c2ca0511#;
   pragma Export (C, u00074, "system__val_realB");
   u00075 : constant Version_32 := 16#89cf2c53#;
   pragma Export (C, u00075, "system__val_realS");
   u00076 : constant Version_32 := 16#b2a569d2#;
   pragma Export (C, u00076, "system__exn_llfB");
   u00077 : constant Version_32 := 16#cb98e09e#;
   pragma Export (C, u00077, "system__exn_llfS");
   u00078 : constant Version_32 := 16#7371e0b1#;
   pragma Export (C, u00078, "system__fat_llfS");
   u00079 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00079, "system__float_controlB");
   u00080 : constant Version_32 := 16#971a187e#;
   pragma Export (C, u00080, "system__float_controlS");
   u00081 : constant Version_32 := 16#27963d35#;
   pragma Export (C, u00081, "system__powten_tableS");
   u00082 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00082, "ada__charactersS");
   u00083 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00083, "ada__characters__handlingB");
   u00084 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00084, "ada__characters__handlingS");
   u00085 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00085, "ada__characters__latin_1S");
   u00086 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00086, "ada__stringsS");
   u00087 : constant Version_32 := 16#96df1a3f#;
   pragma Export (C, u00087, "ada__strings__mapsB");
   u00088 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00088, "ada__strings__mapsS");
   u00089 : constant Version_32 := 16#e75c0fb7#;
   pragma Export (C, u00089, "system__bit_opsB");
   u00090 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00090, "system__bit_opsS");
   u00091 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00091, "ada__strings__maps__constantsS");
   u00092 : constant Version_32 := 16#ab4ad33a#;
   pragma Export (C, u00092, "ada__directories__validityB");
   u00093 : constant Version_32 := 16#498b13d5#;
   pragma Export (C, u00093, "ada__directories__validityS");
   u00094 : constant Version_32 := 16#adb6d201#;
   pragma Export (C, u00094, "ada__strings__fixedB");
   u00095 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00095, "ada__strings__fixedS");
   u00096 : constant Version_32 := 16#5109bed4#;
   pragma Export (C, u00096, "ada__strings__searchB");
   u00097 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00097, "ada__strings__searchS");
   u00098 : constant Version_32 := 16#a3db8081#;
   pragma Export (C, u00098, "ada__strings__unboundedB");
   u00099 : constant Version_32 := 16#f39c7224#;
   pragma Export (C, u00099, "ada__strings__unboundedS");
   u00100 : constant Version_32 := 16#d398a95f#;
   pragma Export (C, u00100, "ada__tagsB");
   u00101 : constant Version_32 := 16#12a0afb8#;
   pragma Export (C, u00101, "ada__tagsS");
   u00102 : constant Version_32 := 16#796f31f1#;
   pragma Export (C, u00102, "system__htableB");
   u00103 : constant Version_32 := 16#f324e8a8#;
   pragma Export (C, u00103, "system__htableS");
   u00104 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00104, "system__string_hashB");
   u00105 : constant Version_32 := 16#517a83d6#;
   pragma Export (C, u00105, "system__string_hashS");
   u00106 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00106, "system__val_lluB");
   u00107 : constant Version_32 := 16#399270b3#;
   pragma Export (C, u00107, "system__val_lluS");
   u00108 : constant Version_32 := 16#acee74ad#;
   pragma Export (C, u00108, "system__compare_array_unsigned_8B");
   u00109 : constant Version_32 := 16#dee52acf#;
   pragma Export (C, u00109, "system__compare_array_unsigned_8S");
   u00110 : constant Version_32 := 16#a8025f3c#;
   pragma Export (C, u00110, "system__address_operationsB");
   u00111 : constant Version_32 := 16#64eae571#;
   pragma Export (C, u00111, "system__address_operationsS");
   u00112 : constant Version_32 := 16#2e260032#;
   pragma Export (C, u00112, "system__storage_pools__subpoolsB");
   u00113 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00113, "system__storage_pools__subpoolsS");
   u00114 : constant Version_32 := 16#d96e3c40#;
   pragma Export (C, u00114, "system__finalization_mastersB");
   u00115 : constant Version_32 := 16#2c1a6288#;
   pragma Export (C, u00115, "system__finalization_mastersS");
   u00116 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00116, "system__img_boolB");
   u00117 : constant Version_32 := 16#823f2aa9#;
   pragma Export (C, u00117, "system__img_boolS");
   u00118 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00118, "system__ioB");
   u00119 : constant Version_32 := 16#e9a4ac0d#;
   pragma Export (C, u00119, "system__ioS");
   u00120 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00120, "ada__finalizationS");
   u00121 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00121, "ada__streamsB");
   u00122 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00122, "ada__streamsS");
   u00123 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00123, "ada__io_exceptionsS");
   u00124 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00124, "system__finalization_rootB");
   u00125 : constant Version_32 := 16#381428d2#;
   pragma Export (C, u00125, "system__finalization_rootS");
   u00126 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00126, "system__storage_poolsB");
   u00127 : constant Version_32 := 16#540bc5ef#;
   pragma Export (C, u00127, "system__storage_poolsS");
   u00128 : constant Version_32 := 16#84042202#;
   pragma Export (C, u00128, "system__storage_pools__subpools__finalizationB");
   u00129 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00129, "system__storage_pools__subpools__finalizationS");
   u00130 : constant Version_32 := 16#020a3f4d#;
   pragma Export (C, u00130, "system__atomic_countersB");
   u00131 : constant Version_32 := 16#c3ba76cf#;
   pragma Export (C, u00131, "system__atomic_countersS");
   u00132 : constant Version_32 := 16#039168f8#;
   pragma Export (C, u00132, "system__stream_attributesB");
   u00133 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00133, "system__stream_attributesS");
   u00134 : constant Version_32 := 16#31b1d418#;
   pragma Export (C, u00134, "system__crtlS");
   u00135 : constant Version_32 := 16#3570d174#;
   pragma Export (C, u00135, "system__file_attributesS");
   u00136 : constant Version_32 := 16#4efe687f#;
   pragma Export (C, u00136, "system__os_constantsS");
   u00137 : constant Version_32 := 16#71ac0ba7#;
   pragma Export (C, u00137, "system__file_ioB");
   u00138 : constant Version_32 := 16#d097ba27#;
   pragma Export (C, u00138, "system__file_ioS");
   u00139 : constant Version_32 := 16#73d2d764#;
   pragma Export (C, u00139, "interfaces__c_streamsB");
   u00140 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00140, "interfaces__c_streamsS");
   u00141 : constant Version_32 := 16#cb43032d#;
   pragma Export (C, u00141, "system__os_libB");
   u00142 : constant Version_32 := 16#4542b55d#;
   pragma Export (C, u00142, "system__os_libS");
   u00143 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00143, "system__stringsB");
   u00144 : constant Version_32 := 16#17f077d7#;
   pragma Export (C, u00144, "system__stringsS");
   u00145 : constant Version_32 := 16#8a79c1ea#;
   pragma Export (C, u00145, "system__file_control_blockS");
   u00146 : constant Version_32 := 16#95f86c43#;
   pragma Export (C, u00146, "system__regexpB");
   u00147 : constant Version_32 := 16#54d4fc8e#;
   pragma Export (C, u00147, "system__regexpS");
   u00148 : constant Version_32 := 16#e18a47a0#;
   pragma Export (C, u00148, "ada__float_text_ioB");
   u00149 : constant Version_32 := 16#1fef695b#;
   pragma Export (C, u00149, "ada__float_text_ioS");
   u00150 : constant Version_32 := 16#927a893f#;
   pragma Export (C, u00150, "ada__text_ioB");
   u00151 : constant Version_32 := 16#60478258#;
   pragma Export (C, u00151, "ada__text_ioS");
   u00152 : constant Version_32 := 16#d5f9759f#;
   pragma Export (C, u00152, "ada__text_io__float_auxB");
   u00153 : constant Version_32 := 16#48248c7b#;
   pragma Export (C, u00153, "ada__text_io__float_auxS");
   u00154 : constant Version_32 := 16#181dc502#;
   pragma Export (C, u00154, "ada__text_io__generic_auxB");
   u00155 : constant Version_32 := 16#16b3615d#;
   pragma Export (C, u00155, "ada__text_io__generic_auxS");
   u00156 : constant Version_32 := 16#8aa4f090#;
   pragma Export (C, u00156, "system__img_realB");
   u00157 : constant Version_32 := 16#b04e0aa0#;
   pragma Export (C, u00157, "system__img_realS");
   u00158 : constant Version_32 := 16#3e932977#;
   pragma Export (C, u00158, "system__img_lluB");
   u00159 : constant Version_32 := 16#0aa92702#;
   pragma Export (C, u00159, "system__img_lluS");
   u00160 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00160, "system__img_unsB");
   u00161 : constant Version_32 := 16#dc941b36#;
   pragma Export (C, u00161, "system__img_unsS");
   u00162 : constant Version_32 := 16#2f934756#;
   pragma Export (C, u00162, "system__fat_fltS");
   u00163 : constant Version_32 := 16#98936cef#;
   pragma Export (C, u00163, "get_linuxB");
   u00164 : constant Version_32 := 16#a5cb85e5#;
   pragma Export (C, u00164, "get_linuxS");
   u00165 : constant Version_32 := 16#5bc1f8e3#;
   pragma Export (C, u00165, "ada__text_io__unbounded_ioS");
   u00166 : constant Version_32 := 16#27d2953a#;
   pragma Export (C, u00166, "ada__strings__unbounded__text_ioB");
   u00167 : constant Version_32 := 16#2e5d93ef#;
   pragma Export (C, u00167, "ada__strings__unbounded__text_ioS");
   u00168 : constant Version_32 := 16#b5988c27#;
   pragma Export (C, u00168, "gnatS");
   u00169 : constant Version_32 := 16#b8c1d9f8#;
   pragma Export (C, u00169, "gnat__command_lineB");
   u00170 : constant Version_32 := 16#d602660e#;
   pragma Export (C, u00170, "gnat__command_lineS");
   u00171 : constant Version_32 := 16#f458e685#;
   pragma Export (C, u00171, "gnat__directory_operationsB");
   u00172 : constant Version_32 := 16#bec9e217#;
   pragma Export (C, u00172, "gnat__directory_operationsS");
   u00173 : constant Version_32 := 16#728833ee#;
   pragma Export (C, u00173, "gnat__os_libS");
   u00174 : constant Version_32 := 16#5a895de2#;
   pragma Export (C, u00174, "system__pool_globalB");
   u00175 : constant Version_32 := 16#7141203e#;
   pragma Export (C, u00175, "system__pool_globalS");
   u00176 : constant Version_32 := 16#2323a8af#;
   pragma Export (C, u00176, "system__memoryB");
   u00177 : constant Version_32 := 16#2e9b3d76#;
   pragma Export (C, u00177, "system__memoryS");
   u00178 : constant Version_32 := 16#40fe4806#;
   pragma Export (C, u00178, "gnat__regexpS");
   u00179 : constant Version_32 := 16#fcd606d0#;
   pragma Export (C, u00179, "gnat__stringsS");
   u00180 : constant Version_32 := 16#074da218#;
   pragma Export (C, u00180, "gnat__socketsB");
   u00181 : constant Version_32 := 16#c0085453#;
   pragma Export (C, u00181, "gnat__socketsS");
   u00182 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00182, "ada__containersS");
   u00183 : constant Version_32 := 16#cb835252#;
   pragma Export (C, u00183, "gnat__sockets__linker_optionsS");
   u00184 : constant Version_32 := 16#b0810072#;
   pragma Export (C, u00184, "gnat__sockets__thinB");
   u00185 : constant Version_32 := 16#f454941e#;
   pragma Export (C, u00185, "gnat__sockets__thinS");
   u00186 : constant Version_32 := 16#357666d8#;
   pragma Export (C, u00186, "ada__calendar__delaysB");
   u00187 : constant Version_32 := 16#2da855d5#;
   pragma Export (C, u00187, "ada__calendar__delaysS");
   u00188 : constant Version_32 := 16#485b8267#;
   pragma Export (C, u00188, "gnat__task_lockS");
   u00189 : constant Version_32 := 16#05c60a38#;
   pragma Export (C, u00189, "system__task_lockB");
   u00190 : constant Version_32 := 16#166c6c2c#;
   pragma Export (C, u00190, "system__task_lockS");
   u00191 : constant Version_32 := 16#305d23a5#;
   pragma Export (C, u00191, "gnat__sockets__thin_commonB");
   u00192 : constant Version_32 := 16#fdbccd6b#;
   pragma Export (C, u00192, "gnat__sockets__thin_commonS");
   u00193 : constant Version_32 := 16#5825592d#;
   pragma Export (C, u00193, "interfaces__c__stringsB");
   u00194 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00194, "interfaces__c__stringsS");
   u00195 : constant Version_32 := 16#5de653db#;
   pragma Export (C, u00195, "system__communicationB");
   u00196 : constant Version_32 := 16#6e860e90#;
   pragma Export (C, u00196, "system__communicationS");
   u00197 : constant Version_32 := 16#637ab3c9#;
   pragma Export (C, u00197, "system__pool_sizeB");
   u00198 : constant Version_32 := 16#76c8131b#;
   pragma Export (C, u00198, "system__pool_sizeS");
   u00199 : constant Version_32 := 16#9e152be4#;
   pragma Export (C, u00199, "show_versionB");
   u00200 : constant Version_32 := 16#77260253#;
   pragma Export (C, u00200, "show_versionS");
   u00201 : constant Version_32 := 16#9c857b76#;
   pragma Export (C, u00201, "gnat__source_infoS");
   u00202 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00202, "system__multiprocessorsB");
   u00203 : constant Version_32 := 16#4f4ac431#;
   pragma Export (C, u00203, "system__multiprocessorsS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.wch_stw%s
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  ada.exceptions%s
   --  system.wch_stw%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.last_chance_handler%s
   --  system.secondary_stack%s
   --  system.address_image%s
   --  ada.exceptions.traceback%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.memory%s
   --  system.memory%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.standard_library%b
   --  ada.exceptions%b
   --  ada.command_line%s
   --  ada.command_line%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  gnat%s
   --  gnat.source_info%s
   --  gnat.strings%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  interfaces.c.strings%s
   --  interfaces.c.strings%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.fat_flt%s
   --  system.fat_llf%s
   --  system.img_real%s
   --  system.img_real%b
   --  system.multiprocessors%s
   --  system.multiprocessors%b
   --  system.os_constants%s
   --  system.os_lib%s
   --  system.os_lib%b
   --  gnat.os_lib%s
   --  system.task_lock%s
   --  system.task_lock%b
   --  gnat.task_lock%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_llu%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.communication%s
   --  system.communication%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools%b
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.val_real%s
   --  system.val_real%b
   --  system.val_uns%s
   --  system.val_uns%b
   --  system.val_int%s
   --  system.val_int%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  ada.calendar.time_zones%s
   --  ada.calendar.time_zones%b
   --  ada.calendar.formatting%s
   --  ada.calendar.formatting%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.float_aux%s
   --  ada.text_io.float_aux%b
   --  ada.float_text_io%s
   --  ada.float_text_io%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%s
   --  ada.characters.handling%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%s
   --  ada.strings.fixed%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  ada.strings.unbounded.text_io%s
   --  ada.strings.unbounded.text_io%b
   --  ada.text_io.unbounded_io%s
   --  gnat.directory_operations%s
   --  gnat.directory_operations%b
   --  system.file_attributes%s
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.pool_size%s
   --  system.pool_size%b
   --  gnat.sockets%s
   --  gnat.sockets.thin_common%s
   --  gnat.sockets.thin_common%b
   --  gnat.sockets.thin%s
   --  gnat.sockets.thin%b
   --  gnat.sockets.linker_options%s
   --  gnat.sockets%b
   --  system.regexp%s
   --  system.regexp%b
   --  ada.directories%s
   --  ada.directories.validity%s
   --  ada.directories.validity%b
   --  ada.directories%b
   --  gnat.regexp%s
   --  gnat.command_line%s
   --  gnat.command_line%b
   --  get_linux%s
   --  get_linux%b
   --  show_version%s
   --  show_version%b
   --  cputemp%b
   --  END ELABORATION ORDER

end ada_main;
