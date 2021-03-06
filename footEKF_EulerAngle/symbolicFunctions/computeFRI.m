function [pfri_expect,pfri_covariance] = computeFRI(muo_x_mean,muo_y_mean,fo_z_mean,muo_x_var,muo_y_var,fo_z_var)
%COMPUTEFRI
%    [PFRI_EXPECT,PFRI_COVARIANCE] = COMPUTEFRI(MUO_X_MEAN,MUO_Y_MEAN,FO_Z_MEAN,MUO_X_VAR,MUO_Y_VAR,FO_Z_VAR)

%    This function was generated by the Symbolic Math Toolbox version 5.8.
%    04-Mar-2015 15:23:22

t2 = 1.0./fo_z_mean;
pfri_expect = [muo_x_mean.*t2;muo_y_mean.*t2];
if nargout > 1
    t3 = 1.0./fo_z_mean.^4;
    t4 = fo_z_var.*muo_x_mean.*muo_y_mean.*t3;
    t5 = 1.0./fo_z_mean.^2;
    pfri_covariance = reshape([muo_x_var.*t5+fo_z_var.*muo_x_mean.^2.*t3,t4,t4,muo_y_var.*t5+fo_z_var.*muo_y_mean.^2.*t3],[2, 2]);
end
