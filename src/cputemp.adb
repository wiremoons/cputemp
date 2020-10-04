-------------------------------------------------------------------------------
-- Program     : cputemp                                                     --
-- Description : Linux CPU temperature checking utility.                     --
-- Author      : Simon Rowe <simon@wiremoons.com>                            --
-- License     : MIT Open Source.                                            --
-------------------------------------------------------------------------------

with Ada.Text_IO;       use Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Directories;
with Ada.Command_Line;  use Ada.Command_Line;
with GNAT.Sockets;
with GNAT.Command_Line; use GNAT.Command_Line;
-- local packages below:
with Show_Version;
with Get_Linux;

procedure Cputemp is

   -- Ubuntu CPU temperature file path:
   Temp_File : constant String := "/sys/class/thermal/thermal_zone0/temp";
   pragma Debug
     (Put_Line (Standard_Error, "DEBUG: Temp_File is: '" & Temp_File & "'"));

   -------------------------------------------
   -- Parse and manage and command line flags
   -------------------------------------------
   function Command_Line_Flags_Exist return Boolean is

      -- GNAT.Command_Line variables and config
      Help_Option    : aliased Boolean := False;
      Version_Option : aliased Boolean := False;
      Config         : Command_Line_Configuration;

   begin
      -- define params for the 'help' option
      Define_Switch
        (Config,
         Help_Option'Access,
         Switch      => "-h",
         Long_Switch => "--help",
         Help        => "Show command line usage for application");
      -- define params for the 'version' option
      Define_Switch
        (Config,
         Version_Option'Access,
         Switch      => "-v",
         Long_Switch => "--version",
         Help        => "Show version details");
      -- Addtional help message as first line of 'Display_Help()'
      Set_Usage
        (Config,
         Usage => "[switches]", -- override default: "[switches] [arguments]";
         Help => "Program displays the current CPU temperature (Linux only).");

      -- cli flags parse using config and above defined switched
      Getopt (Config);

      -- check if 'version' was requested
      if Version_Option then
         Show_Version.Show;
         return True;
      end if;

      -- check if 'help' was requested
      if Help_Option then
         Display_Help (Config);
         return True;
      end if;

      -- no flags used - return and run app as normal
      return False;

   exception
      when Invalid_Switch =>
         New_Line (1);
         Put_Line
           (Standard_Error,
            "Exception caught: caused by the use of an invalid command line switch.");
         New_Line (1);
         Display_Help (Config);
         return True;
      when Invalid_Parameter =>
         New_Line (1);
         Put_Line
           (Standard_Error,
            "Exception caught: caused by the use of an invalid parameter to a command line switch.");
         New_Line (1);
         Display_Help (Config);
         return True;
      when Exit_From_Command_Line =>
         New_Line (1);
         Put_Line (Standard_Error, "Exit following display of help message.");
         return True;

   end Command_Line_Flags_Exist;

   ------------------------------
   -- Read temperature from file
   ------------------------------
   function Get_Temp_Reading (Temp_File : String) return Float is

      Current_Temp : Float := 0.0;
      F            : File_Type;

   begin
      if Ada.Directories.Exists (Temp_File) then
         Open (F, In_File, Temp_File);
         while not End_Of_File (F) loop
            Ada.Float_Text_IO.Get (F, Current_Temp);
         end loop;
         if Current_Temp > 0.0 then
            Current_Temp := Current_Temp / Float (1000);
         end if;
         return Current_Temp;
      else
         New_Line (2);
         Put_Line
           (Standard_Error,
            "ERROR: unable to locate CPU temperature file:");
         Put_Line (Standard_Error, "  - " & Temp_File);
         New_Line (1);
         Set_Exit_Status (Failure);
         Current_Temp := 0.0;
         return Current_Temp;
      end if;

   exception
      when Name_Error =>
         New_Line (2);
         Put_Line (Standard_Error, "ERROR: file not found exception!");
         Current_Temp := 0.0;
         return Current_Temp;
      when others =>
         New_Line (2);
         Put_Line (Standard_Error, "ERROR: unknown exception!");
         Current_Temp := 0.0;
         return Current_Temp;

   end Get_Temp_Reading;

--------------------------
-- MAIN
--------------------------
begin

   -- print info on how to compile a 'release' verison
   pragma Debug
     (Put_Line
        (Standard_Error,
         "DEBUG: build a 'release' version with: gprclean && gprbuild -XBUILD=release"));

   -- check running on a Linux distro
   if not Get_Linux.Is_Linux then
      New_Line (1);
      Put_Line
        (Standard_Error,
         "ERROR: requires a Linux distribution to work.");
      Set_Exit_Status (Failure);
      return; -- exit as not detected as Linux
   end if;

   -- check for any user provided command line flags
   if Command_Line_Flags_Exist then
      Set_Exit_Status (Success);
      return; -- exit as flags found and executed
   end if;

   -- execute the application
   Put ("'" & GNAT.Sockets.Host_Name & "' ");
   Put ("CPU => ");
   Ada.Float_Text_IO.Put (Get_Temp_Reading (Temp_File), Aft => 1, Exp => 0);
   Put_Line (" °C");
   Set_Exit_Status (Success);
   return; -- program execution completed
end Cputemp;
