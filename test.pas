program test;
uses    cmem, // needed to use the c procedure free() 
              // to deallocate buf
        fpc_readline;

var buf:Pchar;

begin
    while true do begin
        buf := readline('>> ');
        if buf = nil then exit;
        if (length(buf) > 0) then add_history(buf);
        writeln('[',buf,']');
        free(buf)    // readline malloc's a new buffer every time.
                     // pascals memFree() gives runtime errors.
    end
end.
