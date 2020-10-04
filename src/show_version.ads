-------------------------------------------------------------------------------
-- Package     : Show_Version                                                --
-- Description : Display current program version and build info.             --
-- Author      : Simon Rowe <simon@wiremoons.com>                            --
-- License     : MIT Open Source.                                            --
-------------------------------------------------------------------------------

package Show_Version is

   procedure Show;
   procedure Set_Debug (Is_Debug : in out Boolean);

end Show_Version;
