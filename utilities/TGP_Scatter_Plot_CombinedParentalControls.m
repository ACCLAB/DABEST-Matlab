
% Author: Tayfun Tumkaya
% Display the Temperature Preference of Fly in Multiple Experiemnt.
%
clc
close all;
clear all;


% Last_Data=42000;

% Basket for Experiments.


% file_list = {
%     
% 
% {'w1118-UAS-TrpA1(Or65c)_I-n.mat'
% 'w1118-Or65c-Gal4_III-n.mat'
% 'w1118-Or65c-Gal4_II-n.mat'
% 'w1118-Or65c-Gal4_I-n.mat'
% 'Or65c-Gal4-UAS-TrpA1_III-n.mat'
% 'Or65c-Gal4-UAS-TrpA1_II-n.mat'
% 'Or65c-Gal4-UAS-TrpA1_I-n.mat'
% 
% 'w1118-UAS-TrpA1(Or85d)-n.mat'
% 'w1118-Or85d-Gal4_I-n.mat'
% 'w1118-Or85d-Gal4_II-n.mat'
% 'w1118-Or85d-Gal4_III-n.mat'
% 'Or85d-Gal4-UAS-TrpA1_I-n.mat'
% 'Or85d-Gal4-UAS-TrpA1_II-n.mat'
% 'Or85d-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or30a)-n.mat'
%  'w1118-Or30a-Gal4_I-n.mat'
%  'w1118-Or30a-Gal4_II-n.mat'
%  'w1118-Or30a-Gal4_III-n.mat'
%  'Or30a-Gal4-UAS-TrpA1_I-n.mat'
%  'Or30a-Gal4-UAS-TrpA1_II-n.mat'
%  'Or30a-Gal4-UAS-TrpA1_III-n.mat'
%     
% 
% 'w1118-UAS-TrpA1(Orco)-n.mat'
% 'w1118-Orco-Gal4_III-n.mat'
% 'w1118-Orco-Gal4_II-n.mat'
% 'w1118-Orco-Gal4_I-n.mat'
% 'Orco-Gal4-UAS-TrpA1_III-n.mat'
% 'Orco-Gal4-UAS-TrpA1_II-n.mat'
% 'Orco-Gal4-UAS-TrpA1_I-n.mat'
% 
% 'w1118-UAS-TrpA1(Or65b)-n.mat'
% 'w1118-Or65b-Gal4_I-n.mat'
% 'w1118-Or65b-Gal4_II-n.mat'
% 'w1118-Or65b-Gal4_III-n.mat'
% 'Or65b-Gal4-UAS-TrpA1_I-n.mat'
% 'Or65b-Gal4-UAS-TrpA1_II-n.mat'
% 'Or65b-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or98a)-n.mat'
%   'w1118-Or98a-Gal4_I-n.mat'
%   'w1118-Or98a-Gal4_II-n.mat'
%   'w1118-Or98a-Gal4_III-n.mat'
%   'Or98a-Gal4-UAS-TrpA1_I-n.mat'
%   'Or98a-Gal4-UAS-TrpA1_II-n.mat'
%   'Or98a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
%  'w1118-UAS-TrpA1(Or74a)-n.mat'
% 'w1118-Or74a-Gal4_I-n.mat'
% 'w1118-Or74a-Gal4_II-n.mat'
% 'w1118-Or74a-Gal4_III-n.mat'
% 'Or74a-Gal4-UAS-TrpA1_III-n.mat'
% 'Or74a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or74a-Gal4-UAS-TrpA1_II-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or83a)-n.mat'
%     'w1118-Or83a-Gal4_I-n.mat'
%     'w1118-Or83a-Gal4_II-n.mat'
%     'w1118-Or83a-Gal4_III-n.mat'
%     'Or83a-Gal4-UASTrpA1_I-n.mat'
%     'Or83a-Gal4-UASTrpA1_II-n.mat'
%     'Or83a-Gal4-UASTrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or59a)-n.mat'
% 'w1118-Or59a-Gal4_I-n.mat'
% 'w1118-Or59a-Gal4_II-n.mat'
% 'w1118-Or59a-Gal4_III-n.mat'
% 'Or59a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or59a-Gal4-UAS-TrpA1_II-n.mat'
% 'Or59a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or83c)-n.mat'
% 'w1118-Or83c-Gal4_I-n.mat'
% 'w1118-Or83c-Gal4_II-n.mat'
% 'w1118-Or83c-Gal4_III-n.mat'
% 'Or83c-Gal4-UAS-TrpA1_I-n.mat'
% 'Or83c-Gal4-UAS-TrpA1_II-n.mat'
% 'Or83c-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 
% 'w1118-UAS-TrpA1(Or71a)-n.mat'
% 'w1118-Or71a-Gal4_I-n.mat'
% 'w1118-Or71a-Gal4_II-n.mat'
% 'w1118-Or71a-Gal4_III-n.mat'
% 'Or71a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or71a-Gal4-UAS-TrpA1_II-n.mat'
% 'Or71a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or69a)-n.mat'
%     'w1118-Or69a-Gal4_I-n.mat'
%     'w1118-Or69a-Gal4_II-n.mat'
%     'w1118-Or69a-Gal4_III-n.mat'
%    'Or69a-Gal4-UAS-TrpA1_I-n.mat' 
%    'Or69a-Gal4-UAS-TrpA1_II-n.mat' 
%    'Or69a-Gal4-UAS-TrpA1_III-n.mat' 
% 
% 'w1118-UAS-TrpA1(Or45b)-n.mat'
%     'w1118-Or45b-Gal4_I-n.mat'
%     'w1118-Or45b-Gal4_II-n.mat'
%     'w1118-Or45b-Gal4_III-n.mat'
%     'Or45b-Gal4-UAS-TrpA1_I-n.mat'
%     'Or45b-Gal4-UAS-TrpA1_II-n.mat'
%     'Or45b-Gal4-UAS-TrpA1_III-n.mat'
%     
%     'w1118-UAS-TrpA1(Or45a)-n.mat'
%     'w1118-Or45a-Gal4_I-n.mat'
%     'w1118-Or45a-Gal4_II-n.mat'
%     'w1118-Or45a-Gal4_III-n.mat'
%     'Or45a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or45a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or45a-Gal4-UAS-TrpA1_III-n.mat'
%     
% 
% 'w1118-UAS-TrpA1(Or22c)-n.mat'
% 'w1118-Or22c-Gal4_I-n.mat'
% 'w1118-Or22c-Gal4_II-n.mat'
% 'w1118-Or22c-Gal4_III-n.mat'
% 'Or22c-Gal4-UAS-TrpA1_I-n.mat'
% 'Or22c-Gal4-UAS-TrpA1_II-n.mat'
% 'Or22c-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 
% 'w1118-UAS-TrpA1(Or82a)-n.mat'
%     'w1118-Or82a-Gal4_I-n.mat'
%     'w1118-Or82a-Gal4_II-n.mat'
%     'w1118-Or82a-Gal4_III-n.mat'
%     'Or82a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or82a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or82a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or9a)-n.mat'
%  'w1118-Or9a-Gal4_I-n.mat'
%  'w1118-Or9a-Gal4_II-n.mat'
%  'w1118-Or9a-Gal4_III-n.mat'
%  'Or9a-Gal4-UAS-TrpA1_I-n.mat'
%  'Or9a-Gal4-UAS-TrpA1_II-n.mat'
%  'Or9a-Gal4-UAS-TrpA1_III-n.mat'
% 
%   
% 'w1118-UAS-TrpA1(Or67d)(f)-n.mat'
% 'w1118-Or67d-Gal4_I(f)-n.mat'
% 'w1118-Or67d-Gal4_II(f)-n.mat'
% 'w1118-Or67d-Gal4_III(f)-n.mat'
% 'Or67d-Gal4-UAS-TrpA1_I(f)-n.mat'
% 'Or67d-Gal4-UAS-TrpA1_II(f)-n.mat'
% 'Or67d-Gal4-UAS-TrpA1_III(f)-n.mat'
% 
% 'w1118-UAS-TrpA1(Or47b)-n.mat'
% 'w1118-Or47b-Gal4_I-n.mat'
% 'w1118-Or47b-Gal4_II-n.mat'
% 'w1118-Or47b-Gal4_III-n.mat'
% 'Or47b-Gal4-UAS-TrpA1_I-n.mat'
% 'Or47b-Gal4-UAS-TrpA1_II-n.mat'
% 'Or47b-Gal4-UAS-TrpA1_III-n.mat'  
%     
%     
% 
%  'w1118-UAS-TrpA1(Or59c)-n.mat'  
% 'w1118-Or59c-Gal4_I-n.mat'
% 'w1118-Or59c-Gal4_II-n.mat'
% 'w1118-Or59c-Gal4_III-n.mat'
% 'Or59c-Gal4-UAS-TrpA1_I-n.mat'
% 'Or59c-Gal4-UAS-TrpA1_II-n.mat'
% 'Or59c-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or23a)-n.mat'
%     'w1118-Or23a-Gal4_I-n.mat'
%     'w1118-Or23a-Gal4_II-n.mat'
%     'w1118-Or23a-Gal4_III-n.mat'
%     'Or23a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or23a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or23a-Gal4-UAS-TrpA1_III-n.mat'
% 
%   
% 'w1118-UAS-TrpA1(Or49a)-n.mat'
% 'w1118-Or49a-Gal4_I-n.mat'
% 'w1118-Or49a-Gal4_III-n.mat'
% 'w1118-Or49a-Gal4_II-n.mat'
% 'Or49a-Gal4-UAS-TrpA1_III-n.mat'
% 'Or49a-Gal4-UAS-TrpA1_II-n.mat'
% 'Or49a-Gal4-UAS-TrpA1_I-n.mat'
% 
% 'w1118-UAS-TrpA1(Or56a)-n.mat'
%     'w1118-Or56a-Gal4_I-n.mat'
%     'w1118-Or56a-Gal4_II-n.mat'
%     'w1118-Or56a-Gal4_III-n.mat'
%     'Or56a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or56a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or56a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or94b)-n.mat'
%     'w1118-Or94b-Gal4_I-n.mat'
%     'w1118-Or94b-Gal4_II-n.mat'
%     'w1118-Or94b-Gal4_III-n.mat'
%     'Or94b-Gal4-UAS-TrpA1_I-n.mat'
%     'Or94b-Gal4-UAS-TrpA1_II-n.mat'
%     'Or94b-Gal4-UAS-TrpA1_III-n.mat'
%     
% 'w1118-UAS-TrpA1(Or65a)_male-n.mat'
%     'w1118-Or65a-Gal4(m)_I-n.mat'
%     'w1118-Or65a-Gal4(m)_II-n.mat'
%     'w1118-Or65a-Gal4(m)_III-n.mat'
%     'Or65a-Gal4-UAS-TrpA1(m)_I-n.mat'
%     'Or65a-Gal4-UAS-TrpA1(m)_II-n.mat'
%     'Or65a-Gal4-UAS-TrpA1(m)_III-n.mat'    
% 
% 'w1118-UAS-TrpA1(Or1a)-n.mat'
% 'w1118-Or1a-Gal4_I-n.mat'
% 'w1118-Or1a-Gal4_II-n.mat'
% 'w1118-Or1a-Gal4_III-n.mat'
% 'w1118-Or1a-Gal4_IV-n.mat'
% 'Or1a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or1a-Gal4-UAS-TrpA1_II-n.mat'
% 'Or1a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or67a)-n.mat'
%     'w1118-Or67a-Gal4_I-n.mat'
%     'w1118-Or67a-Gal4_II-n.mat'
%     'w1118-Or67a-Gal4_III-n.mat'
%     'Or67a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or67a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or67a-Gal4-UAS-TrpA1_III-n.mat' 
% 
% 'w1118-UAS-TrpA1(Or33a)-n.mat'
%     'w1118-Or33a-Gal4_I-n.mat'
%     'w1118-Or33a-Gal4_II-n.mat'
%     'w1118-Or33a-Gal4_III-n.mat'
%     'Or33a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or33a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or33a-Gal4-UAS-TrpA1_III-n.mat'
%     
% 'w1118-UAS-TrpA1(Or35a)_I-n.mat'
% 'w1118-UAS-TrpA1(Or35a)_II-n.mat'
% 'W1118-OR35a-Gal4_I-n.mat'
% 'W1118-OR35a-Gal4_II-n.mat'
% 'OR35a-Gal4-UASTrpA1_I-n.mat'
% 'OR35a-Gal4-UASTrpA1_II-n.mat'
% 'OR35a-Gal4-UASTrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or13a)-n.mat'
%     'w1118-Or13a-Gal4_I-n.mat'
%     'w1118-Or13a-Gal4_II-n.mat'
%     'w1118-Or13a-Gal4_III-n.mat'
%     'Or13a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or13a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or13a-Gal4-UAS-TrpA1_III-n.mat'
%     
% 'w1118-UAS-TrpA1(Or85c)-n.mat'
%     'w1118-Or85c-Gal4_I-n.mat'
%     'w1118-Or85c-Gal4_II-n.mat'
%     'w1118-Or85c-Gal4_III-n.mat'
%     'Or85c-Gal4-UAS-TrpA1_I-n.mat'
%     'Or85c-Gal4-UAS-TrpA1_II-n.mat'
%     'Or85c-Gal4-UAS-TrpA1_III-n.mat'
%     
% 'w1118-UAS-TrpA1(Or19b)-n.mat'
% 'w1118-Or19b-Gal4_I-n.mat'
% 'w1118-Or19b-Gal4_II-n.mat'
% 'Or19b-Gal4-UAS-TrpA1_I-n.mat'
% 'Or19b-Gal4-UAS-TrpA1_III-n.mat'
% 'Or19b-Gal4-UAS-TrpA1_II-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or43b)_I-n.mat'
% 
% 'w1118-Or43b-Gal4_I-n.mat'
% 'w1118-Or43b-Gal4_II-n.mat'
% 'w1118-Or43b-Gal4_III-n.mat'
% 'Or43b-Gal4-UAS-TrpA1_I-n.mat'
% 'Or43b-Gal4-UAS-TrpA1_II-n.mat'
% 'Or43b-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or88a)(m)-n.mat'
% 'w1118-Or88a-Gal4_I(m)-n.mat'
% 'w1118-Or88a-Gal4_II(m)-n.mat'
% 'w1118-Or88a-Gal4_III(m)-n.mat'
% 'w1118-Or88a-Gal4_IV(m)-n.mat'
% 'Or88a-Gal4-UAS-TrpA1_I(m)-n.mat'
% 'Or88a-Gal4-UAS-TrpA1_II(m)-n.mat'
% 'Or88a-Gal4-UAS-TrpA1_III(m)-n.mat'
% 'Or88a-Gal4-UAS-TrpA1_IV(m)-n.mat'
% 'Or88a-Gal4-UAS-TrpA1_V(m)-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or43a)-n.mat'
% 'w1118-Or43a-Gal4_I-n.mat'
% 'w1118-Or43a-Gal4_II-n.mat'
% 'w1118-Or43a-Gal4_III-n.mat'
% 'Or43a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or43a-Gal4-UAS-TrpA1_II-n.mat'
% 'Or43a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or85e)-n.mat'
% 'w1118-Or85e-Gal4_I-n.mat'
% 'w1118-Or85e-Gal4_II-n.mat'
% 'w1118-Or85e-Gal4_III-n.mat'
% 'Or85e-Gal4-UAS-TrpA1_I-n.mat'
% 'Or85e-Gal4-UAS-TrpA1_II-n.mat'
% 'Or85e-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 
% 'w1118-UAS-TrpA1(Or22a)-n.mat'
%  'w1118-Or22a-Gal4_I-n.mat'
%  'w1118-Or22a-Gal4_II-n.mat'
%  'w1118-Or22a-Gal4_III-n.mat'
%  'Or22a-Gal4-UAS-TrpA1_I-n.mat'
%  'Or22a-Gal4-UAS-TrpA1_II-n.mat'
%  'Or22a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or92a)-n.mat'
% 'w1118-Or92a-Gal4_I-n.mat'
% 'w1118-Or92a-Gal4_II-n.mat'
% 'Or92a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or92a-Gal4-UAS-TrpA1_II-n.mat'
% 'Or92a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or85b)-n.mat'
% 'w1118-Or85b-Gal4_III-n.mat'
% 'w1118-Or85b-Gal4_II-n.mat'
% 'w1118-Or85b-Gal4_I-n.mat'
% 'Or85b-Gal4-UAS-TrpA1_I-n.mat'
% 'Or85b-Gal4-UAS-TrpA1_II-n.mat'
% 'Or85b-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or67c)-n.mat'
% 'w1118-Or67c-Gal4_I-n.mat'
% 'w1118-Or67c-Gal4_II-n.mat'
% 'w1118-Or67c-Gal4_III-n.mat'
% 'Or67c-Gal4-UAS-TrpA1_I-n.mat'
% 'Or67c-Gal4-UAS-TrpA1_II-n.mat'
% 'Or67c-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or85a)-n.mat'
%     'w1118-Or85a-Gal4_I-n.mat'
%     'w1118-Or85a-Gal4_II-n.mat'
%     'w1118-Or85a-Gal4_III-n.mat'
%     'Or85a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or85a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or85a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or7a)-n.mat'
% 'w1118-Or7a-Gal4_II-n.mat'
% 'w1118-Or7a-Gal4_I-n.mat'
% 'w1118-Or7a-Gal4_III-n.mat'
% 'Or7a-Gal4-UAS-TrpA1_III-n.mat'
% 'Or7a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or7a-Gal4-UAS-TrpA1_II-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or88a)_f_R-n.mat'
%     'w1118-Or88a-Gal4_I_f_R-n.mat'
%     'w1118-Or88a-Gal4_II_f_R-n.mat'
%     'w1118-Or88a-Gal4_III_f_R-n.mat'
%     'Or88a-Gal4-UAS-TrpA1_I_f_R-n.mat'
%     'Or88a-Gal4-UAS-TrpA1_II_f_R-n.mat'
%     'Or88a-Gal4-UAS-TrpA1_III_f_R-n.mat'
% 
%     
% 'w1118-UAS-TrpA1(Or24a)R-n.mat'
%     'w1118-Or24a-Gal4_I_R-n.mat'
%     'w1118-Or24a-Gal4_II_R-n.mat'
%     'w1118-Or24a-Gal4_III_R-n.mat'
%     'Or24a-Gal4-UAS-TrpA1_I_R-n.mat'
%     'Or24a-Gal4-UAS-TrpA1_II_R-n.mat'
%     'Or24a-Gal4-UAS-TrpA1_III_R-n.mat'
%     
% 'w1118-UAS-TrpA1(Or19a)-n.mat'
% 'w1118-Or19a-Gal4_I-n.mat'
% 'w1118-Or19a-Gal4_II-n.mat'
% 'w1118-Or19a-Gal4_III-n.mat'
% 'Or19a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or19a-Gal4-UAS-TrpA1_II-n.mat'
% 'Or19a-Gal4-UAS-TrpA1_III-n.mat'   
% 
% 
% 'w1118-UAS-TrpA1(Or67b)-n.mat'
% 'w1118-Or67b-Gal4_I-n.mat'
% 'w1118-Or67b-Gal4_II-n.mat'
% 'w1118-Or67b-Gal4_III-n.mat'
% 'Or67b-Gal4-UAS-TrpA1_I-n.mat'
% 'Or67b-Gal4-UAS-TrpA1_II-n.mat'
% 'Or67b-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 
% 'w1118-UAS-TrpA1(Gr21a)-n.mat'
%   'w1118-Gr21a-Gal4_I-n.mat'  
%   'w1118-Gr21a-Gal4_II-n.mat' 
%   'w1118-Gr21a-Gal4_III-n.mat' 
%   'Gr21a-Gal4-UAS-TrpA1_I-n.mat'
%   'Gr21a-Gal4-UAS-TrpA1_II-n.mat'
%   'Gr21a-Gal4-UAS-TrpA1_III-n.mat'
%     
% 'w1118-UAS-TrpA1(Or46a)-n.mat'
%     'w1118-Or46a-Gal4_I-n.mat'
%     'w1118-Or46a-Gal4_II-n.mat'
%     'w1118-Or46a-Gal4_III-n.mat'
%     'Or46a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or46a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or46a-Gal4-UAS-TrpA1_III-n.mat'
%     
%     
% 'w1118-UAS-TrpA1(Or33c)-n.mat'
% 'w1118-Or33c-Gal4_I-n.mat'
% 'w1118-Or33c-Gal4_II-n.mat'
% 'w1118-Or33c-Gal4_III-n.mat'
% 'Or33c-Gal4-UAS-TrpA1_I-n.mat'
% 'Or33c-Gal4-UAS-TrpA1_II-n.mat'
% 'Or33c-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or22b)-n.mat'
% 'w1118-Or22b-Gal4_I-n.mat'
% 'w1118-Or22b-Gal4_II-n.mat'
% 'w1118-Or22b-Gal4_III-n.mat'
% 'Or22b-Gal4-UAS-TrpA1_I-n.mat'
% 'Or22b-Gal4-UAS-TrpA1_II-n.mat'
% 'Or22b-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or10a)-n.mat'
%     'w1118-Or10a-Gal4_I-n.mat'
%     'w1118-Or10a-Gal4_II-n.mat'
%     'w1118-Or10a-Gal4_III-n.mat'
%     'Or10a-Gal4-UAS-TrpA1_I-n.mat'
%     'Or10a-Gal4-UAS-TrpA1_II-n.mat'
%     'Or10a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or42a)-n.mat'
% 'w1118-Or42a-Gal4_I-n.mat'
% 'w1118-Or42a-Gal4_II-n.mat'
% 'w1118-Or42a-Gal4_III-n.mat'
% 'Or42a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or42a-Gal4-UAS-TrpA1_II-n.mat'
% 'Or42a-Gal4-UAS-TrpA1_III-n.mat'    
% 
% 'w1118-UAS-TrpA1(Or67d)(m)-n.mat'
% 'w1118-Or67d-Gal4_I(m)-n.mat'
% 'w1118-Or67d-Gal4_II(m)-n.mat'
% 'w1118-Or67d-Gal4_III(m)-n.mat'
% 'Or67d-Ga4-UAS-TrpA1_I(m)-n.mat'
% 'Or67d-Ga4-UAS-TrpA1_II(m)-n.mat'
% 'Or67d-Ga4-UAS-TrpA1_III(m)-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Gr63a)-n.mat'
%   'w1118-Gr63a-Gal4_I-n.mat'
%   'w1118-Gr63a-Gal4_II-n.mat'
%   'w1118-Gr63a-Gal4_III-n.mat'
%   'Gr63a-Gal4-UAS-TrpA1_I-n.mat'
%   'Gr63a-Gal4-UAS-TrpA1_II-n.mat'
%   'Gr63a-Gal4-UAS-TrpA1_III-n.mat'
%     
% 
% 'w1118-UAS-TrpA1(Or65a)(f)-n.mat'
% 'w1118-Or65a-Gal4(f)_I-n.mat'
% 'w1118-Or65a-Gal4(f)_II-n.mat'
% 'w1118-Or65a-Gal4(f)_III-n.mat'
% 'w1118-Or65a-Gal4(f)_IV-n.mat'
% 'w1118-Or65a-Gal4(f)_V-n.mat'
%  'Or65a-Gal4-UAS-TrpA1(f)_I-n.mat'
% 'Or65a-Gal4-UAS-TrpA1(f)_II-n.mat'
% 'Or65a-Gal4-UAS-TrpA1(f)_III-n.mat'
% 'Or65a-Gal4-UAS-TrpA1(f)_IV-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or85f)-n.mat'
% 'w1118-Or85f-Gal4_I-n.mat'
% 'w1118-Or85f-Gal4_II-n.mat'
% 'w1118-Or85f-Gal4_III-n.mat'
% 'Or85f-Gal4-UAS-TrpA1_I-n.mat'
% 'Or85f-Gal4-UAS-TrpA1_II-n.mat'
% 'Or85f-Gal4-UAS-TrpA1_III-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or33b)-n.mat'
%     'w1118-Or33b-Gal4_I-n.mat'
%     'w1118-Or33b-Gal4_II-n.mat'
%     'Or33b-Gal4-UAS-TrpA1_I-n.mat'
%     'Or33b-Gal4-UAS-TrpA1_II-n.mat'
% 
% 
% 'w1118-UAS-TrpA1(Or47a)-n.mat'
% 'w1118-Or47a-Gal4_I-n.mat'
% 'w1118-Or47a-Gal4_II-n.mat'
% 'w1118-Or47a-Gal4_III-n.mat'
% 'Or47a-Gal4-UAS-TrpA1_I-n.mat'
% 'Or47a-Gal4-UAS-TrpA1_II-n.mat'
% 'Or47a-Gal4-UAS-TrpA1_III-n.mat'
% 
% 'w1118-UAS-TrpA1(Or49b)-n.mat'
%  'w1118-Or49b-Gal4_I-n.mat'
%  'w1118-Or49b-Gal4_II-n.mat'
%  'w1118-Or49b-Gal4_III-n.mat'
%  'Or49b-Gal4-UAS-TrpA1_I-n.mat'
%  'Or49b-Gal4-UAS-TrpA1_II-n.mat'
%  'Or49b-Gal4-UAS-TrpA1_III-n.mat'
% 
%   'w1118-UAS-TrpA1(Or47b)(f)_II-n.mat'
% 'w1118-Or47b-Gal4(f)_I-n.mat'
% 'w1118-Or47b-Gal4(f)_II-n.mat'
% 'Or47b-Gal4-UAS-TrpA1(f)_I-n.mat'
% 'Or47b-Gal4-UAS-TrpA1(f)_II-n.mat'
% 
% 'w1118-UAS-TrpA1(Or42b)-n.mat'
%  'w1118-Or42b-Gal4_I-n.mat'
%  'w1118-Or42b-Gal4_II-n.mat'
%  'w1118-Or42b-Gal4_III-n.mat'
%  'Or42b-Gal4-UAS-TrpA1_I-n.mat'
%  'Or42b-Gal4-UAS-TrpA1_II-n.mat'
% %     
% % 'w1118-UAS-TrpA1(Or59b)-n.mat'
% % 'w1118-Or59b-Gal4_II-n.mat'
% % 'w1118-Or59b-Gal4_I-n.mat'
% % 'w1118-Or59b-Gal4_III-n.mat'
% % 'Or59b-Gal4-UAS-TrpA1_I-n.mat'
% % 'Or59b-Gal4-UAS-TrpA1_II-n.mat'
% % 'Or59b-Gal4-UAS-TrpA1_III-n.mat'
% % 
% % }
% % 
% % {'w1118-UAS-TrpA1(Or65cII)-n.mat'
% % 'w1118-Or65cII-Gal4_I-n.mat'
% % 'w1118-Or65cII-Gal4_II-n.mat'
% % 'Or65cII-Gal4-UAS-TrpA1_I-n.mat'
% % 'Or65cII-Gal4-UAS-TrpA1_II-n.mat'},
% 
% 
% % {'w1118-UAS-TrpA1(Or88a)_female-n.mat'
% % 'w1118-Or88a-Gal4(f)_I-n.mat'
% % 'w1118-Or88a-Gal4(f)_II-n.mat'
% % 'w1118-Or88a-Gal4(f)_III-n.mat'
% % 'w1118-Or88a-Gal4(f)_IV-n.mat'
% % 'Or88a-Gal4-UAS-TrpA1(f)_I-n.mat'
% % 'Or88a-Gal4-UAS-TrpA1(f)_II-n.mat'
% % 'Or88a-Gal4-UAS-TrpA1(f)_III-n.mat'
% % 'Or88a-Gal4-UAS-TrpA1(f)_IV-n.mat'
% %   
% % }
% % 
% 
% % % {'w1118-UAS-TrpA1(Gr66a)-n.mat'
% % %  'Gr66a-Gal4-UAS-TrpA1_I-n.mat'
% % %  'Gr66a-Gal4-UAS-TrpA1_II-n.mat'
% % %  'Gr66a-Gal4-UAS-TrpA1_III-n.mat'
% % % }
% % 
% % {'w1118-UAS-TrpA1(Or24a)-n.mat'
% % 'w1118-Or24a-Gal4_I-n.mat'
% % 'Or24a-Gal4-UAS-TrpA1_I-n.mat'
% % 'Or24a-Gal4-UAS-TrpA1_II-n.mat'
% % 
% % 
% % }
% % 
% 
% % 
% % {
% %  'w1118-UAS-TrpA1(Or47b)_m_R-n.mat'  
% % 'w1118-Or47b-Gal4_I_m_R-n.mat'
% % 'w1118-Or47b-Gal4_II_m_R-n.mat'
% % 'w1118-Or47b-Gal4_III_m_R-n.mat'
% % 'Or47b-Gal4-UAS-TrpA1-I_m_R-n.mat'
% % 'Or47b-Gal4-UAS-TrpA1-II_m_R-n.mat'
% % 'Or47b-Gal4-UAS-TrpA1-III_m_R-n.mat'
% % }
% 
% 
% % {'w1118-UAS-TrpA1(Or47b)_f_R-n.mat'
% %     'w1118-Or47b-Gal4_I_f_R-n.mat'
% %     'w1118-Or47b-Gal4_II_f_R-n.mat'
% %     'w1118-Or47b-Gal4_III_f_R-n.mat'
% %     'Or47b-Gal4-UAS-TrpA1_I_f_R-n.mat'
% %     'Or47b-Gal4-UAS-TrpA1_II_f_R-n.mat'
% %     'Or47b-Gal4-UAS-TrpA1_III_f_R-n.mat'
% %     
% % }
% 
% };


% for batch_id=1:length(file_list)
 

% e{1} = file_list{batch_id};



e{1} = {
% 'w1118-UAS-TrpA1(Or88a)_female-n.mat'
'w1118-Or88a-Gal4(f)_I-n.mat'
% 'w1118-Or88a-Gal4(f)_II-n.mat'
% 'w1118-Or88a-Gal4(f)_III-n.mat'
'Or88a-Gal4-UAS-TrpA1(f)_I-n.mat'
% 'Or88a-Gal4-UAS-TrpA1(f)_II-n.mat'
% 'Or88a-Gal4-UAS-TrpA1(f)_III-n.mat'

};

% Create FBMM from basket.
fbmm = TGP_plots2(e);
%% Doing some manual things
load(e{1,1}{1,1}); % load a fb file
e{1,1}{1,1}
% load(e{1,1});
% Store Time info in the fbmm file.

fb=TGP_Fix_Max_Frame_No_of_FB(fb);
fbmm.Time=fb.data.Time(:,1);


Mean_Temp=nanmean(fbmm.Temp,2);
% histfit(Mean_Temp)
% Mean_Temp;
% filename = sprintf('%s.csv',e{1 ,1}{1,1})
% fname = fbmm.szGenotype;
% wtocsv = cell([Mean_Temp;fbmm.szGenotype])
% e{1,1}
% [s,av,moe] = FscatJit2_Tayfun(fbmm.szGenotype, Mean_Temp);
s  = FscatJit2(fbmm.szGenotype, Mean_Temp);
% csvwrite(filename,[av,moe]) 

% ylim([-4.0 2.2]);
%ylabel('Mean Difference(Celcius Degrees)')

% drawnow;
% print(gcf, '-dpdf', '-r400', sprintf('%s.pdf', e{1,1}{1,1}))
%print(gcf, '-dpdf', '-r400', 'afteradj.pdf')

% clearvars -except file_list
% close(gcf);
% end