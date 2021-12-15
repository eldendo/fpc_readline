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
