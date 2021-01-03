-------------------------------------------------------------------------------
-- Package     : Show_Version                                                --
-- Description : Display current program version and build info.             --
-- Author      : Simon Rowe <simon@wiremoons.com>                            --
-- License     : MIT Open Source.                                            --
-------------------------------------------------------------------------------

with Ada.Text_IO;     use Ada.Text_IO;
with Ada.Directories; use Ada.Directories;
with Ada.Command_Line;
with GNAT.Source_Info;
with GNAT.Compiler_Version;
with System.Multiprocessors;
-- local packages below:
with Get_Linux;

package body Show_Version is

   package CVer is new GNAT.Compiler_Version;

   --------------------------------------
   -- Set if in debug build
   --------------------------------------
   procedure Set_Debug (Is_Debug : in out Boolean) is
   begin
      Is_Debug := True;
   end Set_Debug;

   -------------------------------------------
   --  Collect and display version information
   -------------------------------------------
   procedure Show is

      appVersion : constant String := "1.0.2";
      Is_Debug   : Boolean         := False;

   begin
      --  only gets called if compliled with: '-gnata'
      pragma Debug (Set_Debug (Is_Debug));
      pragma Debug
        (Put_Line
           (Standard_Error,
            "DEBUG: Running Linux is: " & Get_Linux.Is_Linux'Image));
      --  start output of version information
      New_Line (1);
      Put ("'");
      Put (Simple_Name (Ada.Command_Line.Command_Name));
      Put ("' is version: '");
      Put (appVersion);
      Put ("' running on: '");
      Put (Get_Linux.Get_Linux_OS);
      Put ("' with");
      Put (System.Multiprocessors.Number_Of_CPUs'Image);
      Put_Line (" CPU cores.");
      Put ("Compiled on: ");
      Put (GNAT.Source_Info.Compilation_ISO_Date);
      Put (" @ ");
      Put (GNAT.Source_Info.Compilation_Time);
      Put_Line (".");
      Put_Line ("Copyright (c) 2020 Simon Rowe.");
      New_Line (1);
      Put ("Ada source built as '");
      if Is_Debug then
         Put ("debug");
      else
         Put ("release");
      end if;
      Put ("' using GNU GNAT complier version: '");
      Put (CVer.Version);
      Put_Line ("'.");
      New_Line (1);
      Put_Line ("For licenses and further information visit:");
      Put_Line (" - https://github.com/wiremoons/cputemp/");
      New_Line (1);
      Put_Line ("All is well.");

   end Show;

end Show_Version;
