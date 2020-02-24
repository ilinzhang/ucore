------------------------------------------------------------------------------
--                                                                          --
--                         GNAT LIBRARY COMPONENTS                          --
--                                                                          --
--           G N A T . S P I T B O L . T A B L E _ I N T E G E R            --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                     Copyright (C) 1997-2005, AdaCore                     --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the  Free Software Foundation,  51  Franklin  Street,  Fifth  Floor, --
-- Boston, MA 02110-1301, USA.                                              --
--                                                                          --
--
--
--
--
--
--
--
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  SPITBOL tables with integer values

--  This package provides a predefined instantiation of the table abstraction
--  for type Standard.Integer. The largest negative integer is used as the
--  null value for the table. This package is based on Macro-SPITBOL created
--  by Robert Dewar.

package GNAT.Spitbol.Table_Integer is
  new GNAT.Spitbol.Table (Integer, Integer'First, Integer'Image);
pragma Preelaborate (Table_Integer);
