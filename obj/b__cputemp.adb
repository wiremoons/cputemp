pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__cputemp.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__cputemp.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__soft_links__initialize_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "ada__containers_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "ada__io_exceptions_E");
   E086 : Short_Integer; pragma Import (Ada, E086, "ada__strings_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "gnat_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "interfaces__c_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "interfaces__c__strings_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__os_lib_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__tags_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "ada__streams_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "system__file_control_block_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "system__finalization_root_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "ada__finalization_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "system__file_io_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "system__storage_pools_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "system__finalization_masters_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "system__storage_pools__subpools_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__calendar_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "ada__calendar__delays_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "ada__calendar__time_zones_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "ada__text_io_E");
   E088 : Short_Integer; pragma Import (Ada, E088, "ada__strings__maps_E");
   E091 : Short_Integer; pragma Import (Ada, E091, "ada__strings__maps__constants_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__strings__unbounded_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "gnat__directory_operations_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "system__pool_global_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "system__pool_size_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "gnat__sockets_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "gnat__sockets__thin_common_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "gnat__sockets__thin_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "system__regexp_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__directories_E");
   E170 : Short_Integer; pragma Import (Ada, E170, "gnat__command_line_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "get_linux_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "show_version_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E054 := E054 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__directories__finalize_spec");
      begin
         F1;
      end;
      E147 := E147 - 1;
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
         E181 := E181 - 1;
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "gnat__sockets__finalize_spec");
      begin
         F4;
      end;
      E198 := E198 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__pool_size__finalize_spec");
      begin
         F5;
      end;
      E175 := E175 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__pool_global__finalize_spec");
      begin
         F6;
      end;
      E099 := E099 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "ada__strings__unbounded__finalize_spec");
      begin
         F7;
      end;
      E151 := E151 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "ada__text_io__finalize_spec");
      begin
         F8;
      end;
      E113 := E113 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__storage_pools__subpools__finalize_spec");
      begin
         F9;
      end;
      E115 := E115 - 1;
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
         E138 := E138 - 1;
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
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E017 := E017 + 1;
      E015 := E015 + 1;
      Ada.Containers'Elab_Spec;
      E182 := E182 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E123 := E123 + 1;
      Ada.Strings'Elab_Spec;
      E086 := E086 + 1;
      Gnat'Elab_Spec;
      E168 := E168 + 1;
      Interfaces.C'Elab_Spec;
      E058 := E058 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E194 := E194 + 1;
      System.Os_Lib'Elab_Body;
      E142 := E142 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E101 := E101 + 1;
      Ada.Streams'Elab_Spec;
      E122 := E122 + 1;
      System.File_Control_Block'Elab_Spec;
      E145 := E145 + 1;
      System.Finalization_Root'Elab_Spec;
      E125 := E125 + 1;
      Ada.Finalization'Elab_Spec;
      E120 := E120 + 1;
      System.File_Io'Elab_Body;
      E138 := E138 + 1;
      System.Storage_Pools'Elab_Spec;
      E127 := E127 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E115 := E115 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E113 := E113 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E056 := E056 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E187 := E187 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E064 := E064 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E151 := E151 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E088 := E088 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E091 := E091 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E099 := E099 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      Gnat.Directory_Operations'Elab_Body;
      E172 := E172 + 1;
      System.Pool_Global'Elab_Spec;
      E175 := E175 + 1;
      System.Pool_Size'Elab_Spec;
      E198 := E198 + 1;
      Gnat.Sockets'Elab_Spec;
      E192 := E192 + 1;
      E185 := E185 + 1;
      Gnat.Sockets'Elab_Body;
      E181 := E181 + 1;
      System.Regexp'Elab_Spec;
      E147 := E147 + 1;
      Ada.Directories'Elab_Spec;
      Ada.Directories'Elab_Body;
      E054 := E054 + 1;
      Gnat.Command_Line'Elab_Spec;
      Gnat.Command_Line'Elab_Body;
      E170 := E170 + 1;
      E164 := E164 + 1;
      E200 := E200 + 1;
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
   --   /datastore/projects/ada/cputemp/obj/get_linux.o
   --   /datastore/projects/ada/cputemp/obj/show_version.o
   --   /datastore/projects/ada/cputemp/obj/cputemp.o
   --   -L/datastore/projects/ada/cputemp/obj/
   --   -L/datastore/projects/ada/cputemp/obj/
   --   -L/usr/lib/gcc/aarch64-linux-gnu/9/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
