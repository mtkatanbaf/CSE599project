set lang "C++"
set moduleName "vta"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "insn_count"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "unsigned int"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "insns"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "1"
set Pointer1 "1"
set Reference1 "0"
set Dims1 [list 0]
set Interface1 "wire"
set DataType1 "long unsigned int"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "uops"
set BitWidth2 "64"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "1"
set Pointer2 "1"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "unsigned int"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "inputs"
set BitWidth3 "64"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "1"
set Pointer3 "1"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set DataType3 "[list ap_uint 128 ]"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "weights"
set BitWidth4 "64"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "1"
set Pointer4 "1"
set Reference4 "0"
set Dims4 [list 0]
set Interface4 "wire"
set DataType4 "[list ap_uint 128 ]"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "biases"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "1"
set Pointer5 "1"
set Reference5 "0"
set Dims5 [list 0]
set Interface5 "wire"
set DataType5 "[list ap_uint 512 ]"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName6 "outputs"
set BitWidth6 "64"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "1"
set Pointer6 "1"
set Reference6 "0"
set Dims6 [list 0]
set Interface6 "wire"
set DataType6 "[list ap_uint 512 ]"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6]
lappend PortList $Port6
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]