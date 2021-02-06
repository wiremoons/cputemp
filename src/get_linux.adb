-------------------------------------------------------------------------------
-- Package     : Get_Linux                                                   --
-- Description : Find the Linus distro name and version being executing on.  --
-- Author      : Simon Rowe <simon@wiremoons.com>                            --
-- License     : MIT Open Source.                                            --
-------------------------------------------------------------------------------

with Ada.Directories;
with Ada.Strings.Fixed;
with Ada.Strings.Unbounded;    use Ada.Strings.Unbounded;
with Ada.Strings.Maps;         use Ada.Strings.Maps;
with Ada.Text_IO;              use Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;

package body Get_Linux is

   --  Linux disros using 'systemd' are required to have the file:
   OS_Release_File : constant String := "/etc/os-release";
   F               : File_Type;

   ---------------------------------------
   --  Check if the OS is a Linux distro
   ---------------------------------------
   function Is_Linux return Boolean is

   begin
      if Ada.Directories.Exists (OS_Release_File) then
         return True;
      else
         return False;
      end if;
   end Is_Linux;

   -----------------------------------------------
   --  Clean up the 'PRETTY_NAME' and extract text
   -----------------------------------------------
   procedure Clean_Pretty_Name (OS_Name : in out Unbounded_String) is

      Quote_Char : constant Character_Set := To_Set ('"'); --\""

   begin
      if Length (OS_Name) > 0 then
         --  delete up to character '=' in string
         Delete (OS_Name, 1, Index (OS_Name, "="));
         -- trim off quotes
         Trim (OS_Name, Quote_Char, Quote_Char);
      end if;

   end Clean_Pretty_Name;

   ----------------------------------------
   --  Get the OS Linux distro 'PRETTY_NAME'
   ----------------------------------------
   function Get_Linux_OS return String is

      OS_Name : Unbounded_String := Null_Unbounded_String;

   begin
      if Ada.Directories.Exists (OS_Release_File) then
         Open (F, In_File, OS_Release_File);
         while not End_Of_File (F) loop
            declare
               Line : constant String := Get_Line (F);
            begin
               if Ada.Strings.Fixed.Count (Line, "PRETTY_NAME") > 0 then

                  --  get the identified line from the file
                  OS_Name := To_Unbounded_String (Line);
                  pragma Debug (Put_Line (Standard_Error, "DEBUG: Unmodified: " & OS_Name));

                  -- extract the part required
                  Clean_Pretty_Name (OS_Name);
                  pragma Debug (Put_Line (Standard_Error, "DEBUG: Cleaned up: " & OS_Name));
               end if;
            end;
         end loop;
         --  return the extracted distro text
         return To_String (OS_Name);

      else
         New_Line (2);
         Put_Line (Standard_Error, "ERROR: unable to locate file:");
         Put_Line (Standard_Error, "  - " & OS_Release_File);
         New_Line (1);
         return "UNKNOWN LINUX OS";
      end if;

   exception
      when Name_Error =>
         New_Line (2);
         Put_Line (Standard_Error, "ERROR: file not found exception!");
         return "UNKNOWN LINUX OS";
      when others =>
         New_Line (2);
         Put_Line (Standard_Error, "ERROR: unknown exception!");
         return "UNKNOWN LINUX OS";

   end Get_Linux_OS;

end Get_Linux;
