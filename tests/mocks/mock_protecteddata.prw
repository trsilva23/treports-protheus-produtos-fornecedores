// Mock for FwProtectedDataUtil

function FwProtectedDataUtil()
    local u := {}
    u:UsrAccessPDField := function(cUser, aFields) return aFields // full access in mock
    u:ValueAsteriskToAnonymize := function(x) return "***" // anonymize always
    return u
