clear;clc;
%constants
madrid_ecef = [4852973 -314134 4112979];  
mayer_lla = [32.77595304127103 35.02521568347666 200];
mayer_ecef = lla2ecef(mayer_lla);
% pseudo_mayer_lla = [32.744 35.08787 200];
% pseudo_mayer_ecef = lla2ecef(pseudo_mayer_lla)
eiffel_lla = [48.858314093227484 2.2945045290821464 0];
eiffel_ecef = lla2ecef(eiffel_lla);
colosseo_lla = [41.89024206376406 12.492289412081126 0];
colosseo_ecef = lla2ecef(colosseo_lla);
acropolis_lla = [37.97154542799172 23.72575374834087 0];
acropolis_ecef = lla2ecef(acropolis_lla);
giza_lla = [29.979281846280834 31.134364123717262 0];
giza_ecef = lla2ecef(giza_lla);
rhodes_lla = [36.43992528290516 28.2106818041007 0];
rhodes_ecef = lla2ecef(rhodes_lla);
cyprus_lla = [34.93831508412315 32.862654560892004 0];
cyprus_ecef = lla2ecef(cyprus_lla);
dublin_lla = [53.34440039478778 -6.267149422722275 0];
dublin_ecef = lla2ecef(dublin_lla);
beirut_lla = [33.81113451569861 35.48694056932626 0];
beirut_ecef = lla2ecef(beirut_lla);
%%

xml_path = "GNSS_files\GNSS_configs\gps_ephemeris_orig.xml";
N_frames = 3;
N_sv = 4;
linearized = 1;

user_ecef = colosseo_ecef;            
output_path = "data\toy_examples\colosseo_wf_4sv_linearized\colosseo_wf_4sv_linearized.bin";

main_func(xml_path,N_frames,N_sv,user_ecef,output_path,linearized)
