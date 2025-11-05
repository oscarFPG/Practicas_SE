# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\usuario_local\Documents\SE\Practicas_SE\Practica3\sw\design_3_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\usuario_local\Documents\SE\Practicas_SE\Practica3\sw\design_3_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_3_wrapper}\
-hw {C:\Users\usuario_local\Documents\SE\Practicas_SE\Practica3\hw\design_3_wrapper.xsa}\
-out {C:/Users/usuario_local/Documents/SE/Practicas_SE/Practica3/sw}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {peripheral_tests}
platform generate -domains 
platform active {design_3_wrapper}
platform generate -quick
platform generate
platform clean
platform generate
platform clean
platform generate
