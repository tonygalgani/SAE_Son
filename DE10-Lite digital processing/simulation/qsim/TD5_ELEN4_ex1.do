onerror {exit -code 1}
vlib work
vcom -work work TD5_ELEN4_ex1.vho
vcom -work work Simu_Volume.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Volume_vhd_vec_tst
vcd file -direction TD5_ELEN4_ex1.msim.vcd
vcd add -internal Volume_vhd_vec_tst/*
vcd add -internal Volume_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


