#include 'protheus.ch'
#include "config/provider_config.tlpp"
#include "lib/fw_logger.tlpp"

user function trep_job()
    local oSmartView as object

    // RpcSetEnv must be configured in a secure way in production. Example commented out here.
    // RpcSetEnv('T1', 'D MG 01', "admin", "1234") 

    fw_logger:Info("Starting trep_job")

    oSmartView := totvs.framework.smartview.callSmartView():new("framework.sv.framework.product.default.rep", "report")
    oSmartView:setRunInJob(.T.)
    oSmartView:setParam("01", "0000007", "Disabled")
    oSmartView:setParam("02", "0000007", "Disabled")
    oSmartView:setForceParams(.T.)
    oSmartView:executeSmartView()

    oSmartView:destroy()
    fw_logger:Info("trep_job finished")
return
