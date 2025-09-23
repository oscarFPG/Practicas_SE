# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\oscar\OneDrive\Documentos\UCM\QUINTO\SE\Practica1\DesignP1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\oscar\OneDrive\Documentos\UCM\QUINTO\SE\Practica1\DesignP1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {DesignP1_wrapper}\
-hw {C:\Users\oscar\OneDrive\Documentos\UCM\QUINTO\SE\Practica1\DesignP1_wrapper.xsa}\
-out {C:/Users/oscar/OneDrive/Documentos/UCM/QUINTO/SE/Practica1}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {peripheral_tests}
platform generate -domains 
platform active {DesignP1_wrapper}
platform generate -quick
platform generate
