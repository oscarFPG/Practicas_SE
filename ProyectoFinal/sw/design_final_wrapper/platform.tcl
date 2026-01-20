# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct U:\hlocal\wspace_xilinxvitis\design_final_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source U:\hlocal\wspace_xilinxvitis\design_final_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_final_wrapper}\
-hw {C:\Users\usuario_local\Documents\SE\Practicas_SE\ProyectoFinal\hw\design_final_wrapper.xsa}\
-out {U:/hlocal/wspace_xilinxvitis}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {peripheral_tests}
platform generate -domains 
platform active {design_final_wrapper}
platform generate -quick
platform generate
