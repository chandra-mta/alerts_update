#! /bin/sh
# Run on r2d2-v because dump monitor and acorn scripts are on /data/mta
# Run as user mta

git_dir=/home/malgosia/git/alerts_update

# Space weather
swdir=/data/mta4/space_weather

cd $git_dir
git checkout master

diff $git_dir/space_weather/aceviolation_protons.csh $swdir/
cp -f $git_dir/space_weather/aceviolation_protons.csh $swdir/

diff $git_dir/space_weather/ace_12h_viol.pl $swdir/
cp -f $git_dir/space_weather/ace_12h_viol.pl $swdir/

diff $git_dir/space_weather/G13_yellow_viol.pl $swdir/
cp -f $git_dir/space_weather/G13_yellow_viol.pl $swdir/

diff $git_dir/space_weather/goes_hrc_proxy_viol.pl $swdir/
cp -f $git_dir/space_weather/goes_hrc_proxy_viol.pl $swdir/

diff $git_dir/space_weather/G13_red_viol.pl $swdir/
cp -f $git_dir/space_weather/G13_red_viol.pl $swdir/

diff $git_dir/space_weather/ace_invalid_spec.csh $swdir/
cp -f $git_dir/space_weather/ace_invalid_spec.csh $swdir/

diff $git_dir/space_weather/aceviolation_protonsP3_P5.csh $swdir/
cp -f $git_dir/space_weather/aceviolation_protonsP3_P5.csh $swdir/

diff $git_dir/space_weather/aceviolation_protonsP6.csh $swdir/
cp -f $git_dir/space_weather/aceviolation_protonsP6.csh $swdir/

diff $git_dir/space_weather/G15_yellow_viol.pl $swdir/
cp -f $git_dir/space_weather/G15_yellow_viol.pl $swdir/

diff $git_dir/space_weather/G15_red_viol.pl $swdir/
cp -f $git_dir/space_weather/G15_red_viol.pl $swdir/

# Dumps monitor
dumpdir=/data/mta/Script/Dumps/Dumps_mon

diff $git_dir/dumps/dumps_mon_2.6.pl $dumpdir/
cp -f $git_dir/dumps/dumps_mon_2.6.pl $dumpdir/

# Snapshot
snapdir_primary=/data/mta4/www/
snapdir_mirror=/data/mta_www/MIRROR/

diff $git_dir/snapshot/tlogr_linux.pl $snapdir_primary/Snapshot/
cp -f $git_dir/snapshot/tlogr_linux.pl $snapdir_primary/Snapshot/

diff $git_dir/snapshot/check_state.pm $snapdir_primary/Snapshot/
cp -f $git_dir/snapshot/check_state.pm $snapdir_primary/Snapshot/

diff $git_dir/snapshot/check_state_alerts.pm $snapdir_primary/Snapshot/
cp -f $git_dir/snapshot/check_state_alerts.pm $snapdir_primary/Snapshot/

diff $git_dir/snapshot/check_state_noalerts.pm $snapdir_primary/Snapshot/
cp -f $git_dir/snapshot/check_state_noalerts.pm $snapdir_primary/Snapshot/

# Acorn
diff $git_dir/acorn/run-acorn.primary.pl $snapdir_primary/Snapshot/run-acorn.pl
cp -f $git_dir/acorn/run-acorn.primary.pl $snapdir_primary/Snapshot/run-acorn.pl

diff $git_dir/acorn/run-acorn.primary.SOH.pl $snapdir_primary/SOH/run-acorn.pl
cp -f $git_dir/acorn/run-acorn.primary.SOH.pl $snapdir_primary/SOH/run-acorn.pl

diff $git_dir/acorn/run-acorn.mirror.pl $snapdir_mirror/Snap/Scrips/run-acorn.pl
cp -f $git_dir/acorn/run-acorn.mirror.pl $snapdir_mirror/Snap/Scripts/run-acorn.pl

diff $git_dir/acorn/run-acorn.mirror.SOH.pl $snapdir_mirror/SOH/Scripts/run-acorn.pl
cp -f $git_dir/acorn/run-acorn.mirror.SOH.pl $snapdir_mirror/SOH/Scripts/run-acorn.pl

diff $git_dir/acorn/run-acorn.mirror.PCAD.pl $snapdir_mirror/SOH/Scripts/run-acorn-pcad.pl
cp -f $git_dir/acorn/run-acorn.mirror.PCAD.pl $snapdir_mirror/SOH/Scripts/run-acorn-pcad.pl
