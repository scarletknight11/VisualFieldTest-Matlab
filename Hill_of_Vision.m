% Hill of Vision function based on Hermann (2008)

function out = Hill_of_Vision(deg_x, deg_y, age, subject)

% deg_x = x coordinates in degrees
% deg_y = y coordinates in degrees
% age      = age of subject
% subject  = a parameter (in decibels) specific to a subject to fit that subject's Hill of Vision

% NOTE: 'subject' could be set to 15 decibels (as an example).

% Define Hill of Vision over this area
[TH,ecc] = cart2pol(deg_x, deg_y);
ang = rad2deg(TH);

% Hermann Hill of Vision function for Goldmann type 3 stimulus
Hill_of_Vision = 11.744986...
    + (0.0495042.*age) - (0.001119.*(age.^2)) - (0.545229.*ecc) - (0.005236.*ecc.*sind(ang))...
    - (0.085799.*ecc.*cosd(ang)) + (0.0045401.*ecc.*sind(2.*ang))...
    + (0.0233836.*ecc.*cosd(2.*ang)) + (0.0234734.*(ecc.^2)) - (0.000393.*(ecc.^3))...
    - (0.00405.*age.*ecc) - (0.000375.*ecc.*sind(ang).*age)...
    + (0.0001756.*ecc.*cosd(ang).*age) - (0.000288.*ecc.*sind(2.*ang).*age)...
    + (0.0001482.*ecc.*cosd(2.*ang).*age) - (0.000262.*(ecc.^2).*sind(ang))...
    + (0.0037536.*(ecc.^2).*cosd(ang)) - 0.000026.*(ecc.^2).*age + subject;

% Output
out.tx = deg_x;
out.ty = deg_y;
out.ecc = ecc;
out.ang = ang;
out.Hill_of_Vision = Hill_of_Vision;