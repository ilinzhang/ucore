------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                      S Y S T E M . V A L _ E N U M                       --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision: 2 $                              --
--                                                                          --
--           Copyright (c) 1992,1993,1994 NYU, All Rights Reserved          --
--                                                                          --
-- The GNAT library is free software; you can redistribute it and/or modify --
-- it under terms of the GNU Library General Public License as published by --
-- the Free Software  Foundation; either version 2, or (at your option) any --
-- later version.  The GNAT library is distributed in the hope that it will --
-- be useful, but WITHOUT ANY WARRANTY;  without even  the implied warranty --
-- of MERCHANTABILITY  or  FITNESS FOR  A PARTICULAR PURPOSE.  See the  GNU --
-- Library  General  Public  License for  more  details.  You  should  have --
-- received  a copy of the GNU  Library  General Public License  along with --
-- the GNAT library;  see the file  COPYING.LIB.  If not, write to the Free --
-- Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.        --
--                                                                          --
------------------------------------------------------------------------------

package System.Val_Enum is
pragma Pure (Val_Enum);

   function Value_Enumeration
     (A        : Address;
      Last_Pos : Natural;
      Str      : String)
      return     Natural;
   --  Used in computing Enum'Value (Str) where Enum is some enumeration type
   --  other thanBoolean or Character. A is the address of the Lit_Name_Table,
   --  which is the table of access to strings, generated by Gigi for each
   --  enumeration type. The table is an array whose index values are 'Pos
   --  values and whose values are access to strings which are are the 'Image
   --  values. Last_Pos is the last index in the table for the enumeration
   --  type. This function will search the table looking for a match against
   --  Str, and if one is found the position number in the table is returned.
   --  If not, Constraint_Error is raised. Str may have leading and trailing
   --  spaces and may be in upper or lower case.

end System.Val_Enum;