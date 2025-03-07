export ARMFVP_BIN_PATH=~/Downloads/Base_RevC_AEM_Fast_Models_11.26/Base_RevC_AEMvA_pkg/models/Linux64_GCC-9.3
export ZEPHYR_TOOLCHAIN_VARIANT=zephyr                                          

# If you want to connect with arm-ds enable the line below
# The fvp_base_revc_2xaemv8a would halt until the debugger connects
# then execute 'cont' on the debugger to let the app run.
export ARMFVP_EXTRA_FLAGS="--iris-server --iris-port 7100"

west build -p always -b fvp_base_revc_2xaemv8a samples/synchronization          
west -v build -t run
