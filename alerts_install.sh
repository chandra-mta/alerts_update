#! /bin/sh
# Run on r2d2-v because dump monitor and acorn scripts are on /data/mta
# Run as user mta

git_dir=/home/malgosia/git/alerts_update

# Space weather
swdir=/data/mta4/space_weather

cp -f $git_dir/space_weather/aceviolation_protons.csh $swdir/
cp -f $git_dir/space_weather/ace_12h_viol.pl $swdir/
cp -f $git_dir/space_weather/G13_yellow_viol.pl $swdir/
cp -f $git_dir/space_weather/goes_hrc_proxy_viol.pl $swdir/
cp -f $git_dir/space_weather/G13_red_viol.pl $swdir/
cp -f $git_dir/space_weather/ace_invalid_spec.csh $swdir/
cp -f $git_dir/space_weather/aceviolation_protonsP3_P5.csh $swdir/
cp -f $git_dir/space_weather/aceviolation_protonsP6.csh $swdir/
cp -f $git_dir/space_weather/G15_yellow_viol.pl $swdir/
cp -f $git_dir/space_weather/G15_red_viol.pl $swdir/

# Dumps monitor
dumpdir=/data/mta/Script/Dumps/Dumps_mon

cp -f $git_dir/dumps/dumps_mon_2.6.pl $dumpdir/

# Snapshot
snapdir_primary=/data/mta4/www/Snapshot
snapdir_mirror=/data/mta_www/MIRROR/Snap/Scripts

cp -f $git_dir/snapshot/tlogr_linux.pl $snapdir_primary/
cp -f $git_dir/snapshot/check_state.pm $snapdir_primary/
cp -f $git_dir/snapshot/check_state_alerts.pm $snapdir_primary/
cp -f $git_dir/snapshot/check_state_noalerts.pm $snapdir_primary/

# Acorn
cp -f $git_dir/acorn/run_acorn.primary.pl $snapdir_primary/run-acorn.pl
cp -f $git_dir/acorn/run_acorn.primary.SOH.pl $snapdir_primary/../SOH/run-acorn.pl

cp -f $git_dir/acorn_mirror/run_acorn.mirror.pl $snapdir_mirror/run-acorn.pl
cp -f $git_dir/acorn/run_acorn.mirror.SOH.pl $snapdir_mirror/../../SOH/Scripts/run-acorn.pl
cp -f $git_dir/acorn/run_acorn.mirror.PCAD.pl $snapdir_mirror/../../SOH/Scripts/run-acorn-pcad.pl

