(*
MIT License

Copyright (c) 2021 ir. Marc Dendooven (a.k.a. eldendo)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*)

unit fpc_readline;
interface
{$LINKLIB readline}

  Type Pchar  = ^char;
//{$IFDEF FPC}
//{$PACKRECORDS C}
//{$ENDIF}

  { Read a line of input.  Prompt with PROMPT.  A NULL PROMPT means none.  }

  function readline(_para1:Pchar):Pchar;cdecl;external;
  
  { Manage the history list.  }
  { Place STRING at the end of the history list.
     The associated data field (if any) is set to NULL.  }

  procedure add_history(_para1:Pchar);cdecl;external;
  
implementation
    
end.
