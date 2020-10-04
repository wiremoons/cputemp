pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__cputemp.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__cputemp.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E075 : Short_Integer; pragma Import (Ada, E075, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "ada__io_exceptions_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__strings_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "ada__containers_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__soft_links__initialize_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "ada__strings__maps_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "ada__strings__maps__constants_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "interfaces__c_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "system__object_reader_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__dwarf_lines_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__traceback__symbolic_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "ada__tags_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "ada__streams_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "gnat_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "interfaces__c__strings_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "system__file_control_block_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__finalization_root_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "ada__finalization_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "system__file_io_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "system__storage_pools_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "system__finalization_masters_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "system__storage_pools__subpools_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "ada__strings__unbounded_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__calendar_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "ada__calendar__delays_E");
   E107 : Short_Integer; pragma Import (Ada, E107, "ada__calendar__time_zones_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "ada__text_io_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "gnat__directory_operations_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "system__pool_global_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "system__pool_size_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "gnat__sockets_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "gnat__sockets__thin_common_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "gnat__sockets__thin_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "system__regexp_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__directories_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "gnat__command_line_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "get_linux_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "show_version_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E099 := E099 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__directories__finalize_spec");
      begin
         F1;
      end;
      E165 := E165 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__regexp__finalize_spec");
      begin
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "gnat__sockets__finalize_body");
      begin
         E197 := E197 - 1;
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "gnat__sockets__finalize_spec");
      begin
         F4;
      end;
      E213 := E213 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__pool_size__finalize_spec");
      begin
         F5;
      end;
      E191 := E191 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__pool_global__finalize_spec");
      begin
         F6;
      end;
      E169 := E169 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "ada__text_io__finalize_spec");
      begin
         F7;
      end;
      E127 := E127 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "ada__strings__unbounded__finalize_spec");
      begin
         F8;
      end;
      E139 := E139 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__storage_pools__subpools__finalize_spec");
      begin
         F9;
      end;
      E141 := E141 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__finalization_masters__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "system__file_io__finalize_body");
      begin
         E160 := E160 - 1;
         F11;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Exception_Tracebacks_Symbolic : Integer;
      pragma Import (C, Exception_Tracebacks_Symbolic, "__gl_exception_tracebacks_symbolic");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Exception_Tracebacks_Symbolic := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E070 := E070 + 1;
      Ada.Strings'Elab_Spec;
      E055 := E055 + 1;
      Ada.Containers'Elab_Spec;
      E040 := E040 + 1;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E017 := E017 + 1;
      E015 := E015 + 1;
      System.Os_Lib'Elab_Body;
      E075 := E075 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E061 := E061 + 1;
      Interfaces.C'Elab_Spec;
      E057 := E057 + 1;
      E045 := E045 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E050 := E050 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E039 := E039 + 1;
      E081 := E081 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E129 := E129 + 1;
      Ada.Streams'Elab_Spec;
      E146 := E146 + 1;
      Gnat'Elab_Spec;
      E184 := E184 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E209 := E209 + 1;
      System.File_Control_Block'Elab_Spec;
      E163 := E163 + 1;
      System.Finalization_Root'Elab_Spec;
      E148 := E148 + 1;
      Ada.Finalization'Elab_Spec;
      E144 := E144 + 1;
      System.File_Io'Elab_Body;
      E160 := E160 + 1;
      System.Storage_Pools'Elab_Spec;
      E150 := E150 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E141 := E141 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E139 := E139 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E127 := E127 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E101 := E101 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E202 := E202 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E107 := E107 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E169 := E169 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      Gnat.Directory_Operations'Elab_Body;
      E188 := E188 + 1;
      System.Pool_Global'Elab_Spec;
      E191 := E191 + 1;
      System.Pool_Size'Elab_Spec;
      E213 := E213 + 1;
      Gnat.Sockets'Elab_Spec;
      E207 := E207 + 1;
      E200 := E200 + 1;
      Gnat.Sockets'Elab_Body;
      E197 := E197 + 1;
      System.Regexp'Elab_Spec;
      E165 := E165 + 1;
      Ada.Directories'Elab_Spec;
      Ada.Directories'Elab_Body;
      E099 := E099 + 1;
      Gnat.Command_Line'Elab_Spec;
      Gnat.Command_Line'Elab_Body;
      E186 := E186 + 1;
      E180 := E180 + 1;
      E215 := E215 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_cputemp");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/simon/projects/ada/cputemp/obj/get_linux.o
   --   /home/simon/projects/ada/cputemp/obj/show_version.o
   --   /home/simon/projects/ada/cputemp/obj/cputemp.o
   --   -L/home/simon/projects/ada/cputemp/obj/
   --   -L/home/simon/projects/ada/cputemp/obj/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/9/adalib/
   --   -static
   --   -lgnat
   --   -ldl
--  END Object file/option list   

end ada_main;
