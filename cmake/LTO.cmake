function(target_enable_lto TARGET ENABLE)
    if (NOT ${ENABLE})
        return()
    endif()

    # Same LTO but smaller than before, this include avoid
    # hundreds of lines of configurations !
    include(CheckIPOSupported)
    check_ipo_supported(RESULT result OUTPUT output)

    if (result)
        message(STATUS "LPO/LTO is supported !")
        set_property(TARGET ${TARGET} PROPERTY INTERPROCEDURAL_OPTIMIZATION ${ENABLE})
    else()
        message(WARNING "IPO/LTO isn't supported !")
    endif()
endfunction(target_enable_lto)
