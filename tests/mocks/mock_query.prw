// Mock for MPSysOpenQuery used in unit tests (illustrative)

function MPSysOpenQuery(cQuery)
    // Return an object that simulates the database cursor
    local o := {}
    o.data := {{{"A5_FILIAL","F1"},{"A5_PRODUTO","P1"}}}
    o.pos := 1
    o.isValid := function()
        return .T.
    endfunction
    o.Eof := function()
        return o.pos > Len(o.data)
    endfunction
    o.GoTop := function()
        o.pos := 1
    endfunction
    o.Skip := function(n)
        o.pos += n
    endfunction
    o.Close := function()
        // noop
    endfunction
    // Provide field access using &(field) pattern simulation not implemented here - illustrative only
    return o
