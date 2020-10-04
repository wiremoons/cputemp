-------------------------------------------------------------------------------
-- Package     : Get_Linux                                                   --
-- Description : Find the Linux OS name and version being executing on.      --
-- Author      : Simon Rowe <simon@wiremoons.com>                            --
-- License     : MIT Open Source.                                            --
-------------------------------------------------------------------------------

package Get_Linux is

   function Is_Linux return Boolean;
   function Get_Linux_OS return String;

end Get_Linux;
