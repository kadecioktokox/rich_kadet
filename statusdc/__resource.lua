resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Developer kadet'    

client_script {     -- Client
'statusdc/dc.lua'.
}

exports {
'getSurrenderStatus',
'startUI',
'closeUI',
'GetPedData'
}