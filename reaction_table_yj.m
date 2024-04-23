function [species, irreversible_1_1, irreversible_1_2, irreversible_2_1, reversible_2_1] = reaction_table_yj()
species = {...
    'NULL' ...
    'V' ...
    'PAA' ...
    'PAB' ...
    'PBB' ...
    'R1_R1' ...
    'R1_R2' ...
    'R2_R1' ...
    'R2_R2' ...
    'PLCgam' ...
    'FAK' ...
    'PTPN' ...
    'uV_R1_R1' ...
    'uV_R1_R2' ...
    'uV_R2_R1' ...
    'uV_R2_R2' ...
    'V_R1_R1' ...
    'V_R1_R2' ...
    'V_R2_R1' ...
    'V_R2_R2' ...
    'uPAA_R1_R2' ...
    'uPAA_R2_R1' ...
    'uPAA_R2_R2' ...
    'uPAB_R1_R2' ...
    'uPAB_R2_R1' ...
    'uPAB_R2_R2' ...
    'uPBB_R1_R2' ...
    'uPBB_R2_R1' ...
    'uPBB_R2_R2' ...
    'PAA_R1_R2' ...
    'PAA_R2_R1' ...
    'PAB_R1_R2' ...
    'PAB_R2_R1' ...
    'PBB_R1_R2' ...
    'PBB_R2_R1' ...
    'V_R1_PLCgam_R1' ...
    'V_R1_PLCgam_R2' ...
    'V_R1_R1_PLCgam' ...
    'V_R2_R1_PLCgam' ...
    'V_R2_PLCgam_R1' ...
    'V_R2_PLCgam_R2' ...
    'V_R1_R2_PLCgam' ...
    'V_R2_R2_PLCgam' ...
    'V_R1_FAK_R1' ...
    'V_R1_FAK_R2' ...
    'V_R1_R1_FAK' ...
    'V_R2_R1_FAK' ...
    'V_R2_FAK_R1' ...
    'V_R2_FAK_R2' ...
    'V_R1_R2_FAK' ...
    'V_R2_R2_FAK' ...
    'PAA_R1_PLCgam_R2' ...
    'PAA_R2_R1_PLCgam' ...
    'PAA_R1_FAK_R2' ...
    'PAA_R2_R1_FAK' ...
    'PAB_R1_PLCgam_R2' ...
    'PAB_R2_R1_PLCgam' ...
    'PAB_R1_FAK_R2' ...
    'PAB_R2_R1_FAK' ...
    'PBB_R1_PLCgam_R2' ...
    'PBB_R2_R1_PLCgam' ...
    'PBB_R1_FAK_R2' ...
    'PBB_R2_R1_FAK' ...
    'V_R1_PLCgam_R1_PLCgam' ...
    'V_R1_PLCgam_R2_PLCgam' ...
    'V_R1_PLCgam_R1_FAK' ...
    'V_R1_PLCgam_R2_FAK' ...
    'V_R2_PLCgam_R1_PLCgam' ...
    'V_R1_FAK_R1_PLCgam' ...
    'V_R2_FAK_R1_PLCgam' ...
    'V_R2_PLCgam_R2_PLCgam' ...
    'V_R2_PLCgam_R1_FAK' ...
    'V_R2_PLCgam_R2_FAK' ...
    'V_R1_FAK_R2_PLCgam' ...
    'V_R2_FAK_R2_PLCgam' ...
    'V_R1_FAK_R1_FAK' ...
    'V_R1_FAK_R2_FAK' ...
    'V_R2_FAK_R1_FAK' ...
    'V_R2_FAK_R2_FAK' ...
    'V_R1_pPLCgam_R1' ...
    'V_R1_pPLCgam_R2' ...
    'V_R1_R1_pPLCgam' ...
    'V_R2_R1_pPLCgam' ...
    'V_R2_pPLCgam_R1' ...
    'V_R2_pPLCgam_R2' ...
    'V_R1_R2_pPLCgam' ...
    'V_R2_R2_pPLCgam' ...
    'PAA_R1_pPLCgam_R2' ...
    'PAA_R2_R1_pPLCgam' ...
    'PAB_R1_pPLCgam_R2' ...
    'PAB_R2_R1_pPLCgam' ...
    'PBB_R1_pPLCgam_R2' ...
    'PBB_R2_R1_pPLCgam' ...
    'V_R1_pFAK_R1' ...
    'V_R1_pFAK_R2' ...
    'V_R1_R1_pFAK' ...
    'V_R2_R1_pFAK' ...
    'V_R2_pFAK_R1' ...
    'V_R2_pFAK_R2' ...
    'V_R1_R2_pFAK' ...
    'V_R2_R2_pFAK' ...
    'PAA_R1_pFAK_R2' ...
    'PAA_R2_R1_pFAK' ...
    'PAB_R1_pFAK_R2' ...
    'PAB_R2_R1_pFAK' ...
    'PBB_R1_pFAK_R2' ...
    'PBB_R2_R1_pFAK' ...
    'V_R1_PLCgam_R1_pPLCgam' ...
    'V_R1_PLCgam_R2_pPLCgam' ...
    'V_R1_PLCgam_R1_pFAK' ...
    'V_R1_PLCgam_R2_pFAK' ...
    'V_R1_pPLCgam_R1_PLCgam' ...
    'V_R2_pPLCgam_R1_PLCgam' ...
    'V_R1_pFAK_R1_PLCgam' ...
    'V_R2_pFAK_R1_PLCgam' ...
    'V_R2_PLCgam_R1_pPLCgam' ...
    'V_R2_PLCgam_R2_pPLCgam' ...
    'V_R2_PLCgam_R1_pFAK' ...
    'V_R2_PLCgam_R2_pFAK' ...
    'V_R1_pPLCgam_R2_PLCgam' ...
    'V_R2_pPLCgam_R2_PLCgam' ...
    'V_R1_pFAK_R2_PLCgam' ...
    'V_R2_pFAK_R2_PLCgam' ...
    'V_R1_FAK_R1_pPLCgam' ...
    'V_R1_FAK_R2_pPLCgam' ...
    'V_R1_FAK_R1_pFAK' ...
    'V_R1_FAK_R2_pFAK' ...
    'V_R1_pPLCgam_R1_FAK' ...
    'V_R2_pPLCgam_R1_FAK' ...
    'V_R1_pFAK_R1_FAK' ...
    'V_R2_pFAK_R1_FAK' ...
    'V_R2_FAK_R1_pPLCgam' ...
    'V_R2_FAK_R2_pPLCgam' ...
    'V_R2_FAK_R1_pFAK' ...
    'V_R2_FAK_R2_pFAK' ...
    'V_R1_pPLCgam_R2_FAK' ...
    'V_R2_pPLCgam_R2_FAK' ...
    'V_R1_pFAK_R2_FAK' ...
    'V_R2_pFAK_R2_FAK' ...
    'V_R1_pPLCgam_PTPN_R1' ...
    'V_R1_pPLCgam_PTPN_R2' ...
    'V_R1_R1_pPLCgam_PTPN' ...
    'V_R2_R1_pPLCgam_PTPN' ...
    'V_R2_pPLCgam_PTPN_R1' ...
    'V_R2_pPLCgam_PTPN_R2' ...
    'V_R1_R2_pPLCgam_PTPN' ...
    'V_R2_R2_pPLCgam_PTPN' ...
    'PAA_R1_pPLCgam_PTPN_R2' ...
    'PAA_R2_R1_pPLCgam_PTPN' ...
    'PAB_R1_pPLCgam_PTPN_R2' ...
    'PAB_R2_R1_pPLCgam_PTPN' ...
    'PBB_R1_pPLCgam_PTPN_R2' ...
    'PBB_R2_R1_pPLCgam_PTPN' ...
    'V_R1_pFAK_PTPN_R1' ...
    'V_R1_pFAK_PTPN_R2' ...
    'V_R1_R1_pFAK_PTPN' ...
    'V_R2_R1_pFAK_PTPN' ...
    'V_R2_pFAK_PTPN_R1' ...
    'V_R2_pFAK_PTPN_R2' ...
    'V_R1_R2_pFAK_PTPN' ...
    'V_R2_R2_pFAK_PTPN' ...
    'PAA_R1_pFAK_PTPN_R2' ...
    'PAA_R2_R1_pFAK_PTPN' ...
    'PAB_R1_pFAK_PTPN_R2' ...
    'PAB_R2_R1_pFAK_PTPN' ...
    'PBB_R1_pFAK_PTPN_R2' ...
    'PBB_R2_R1_pFAK_PTPN' ...
    'V_R1_PLCgam_R1_pPLCgam_PTPN' ...
    'V_R1_PLCgam_R2_pPLCgam_PTPN' ...
    'V_R1_PLCgam_R1_pFAK_PTPN' ...
    'V_R1_PLCgam_R2_pFAK_PTPN' ...
    'V_R1_pPLCgam_PTPN_R1_PLCgam' ...
    'V_R2_pPLCgam_PTPN_R1_PLCgam' ...
    'V_R1_pFAK_PTPN_R1_PLCgam' ...
    'V_R2_pFAK_PTPN_R1_PLCgam' ...
    'V_R2_PLCgam_R1_pPLCgam_PTPN' ...
    'V_R2_PLCgam_R2_pPLCgam_PTPN' ...
    'V_R2_PLCgam_R1_pFAK_PTPN' ...
    'V_R2_PLCgam_R2_pFAK_PTPN' ...
    'V_R1_pPLCgam_PTPN_R2_PLCgam' ...
    'V_R2_pPLCgam_PTPN_R2_PLCgam' ...
    'V_R1_pFAK_PTPN_R2_PLCgam' ...
    'V_R2_pFAK_PTPN_R2_PLCgam' ...
    'V_R1_FAK_R1_pPLCgam_PTPN' ...
    'V_R1_FAK_R2_pPLCgam_PTPN' ...
    'V_R1_FAK_R1_pFAK_PTPN' ...
    'V_R1_FAK_R2_pFAK_PTPN' ...
    'V_R1_pPLCgam_PTPN_R1_FAK' ...
    'V_R2_pPLCgam_PTPN_R1_FAK' ...
    'V_R1_pFAK_PTPN_R1_FAK' ...
    'V_R2_pFAK_PTPN_R1_FAK' ...
    'V_R2_FAK_R1_pPLCgam_PTPN' ...
    'V_R2_FAK_R2_pPLCgam_PTPN' ...
    'V_R2_FAK_R1_pFAK_PTPN' ...
    'V_R2_FAK_R2_pFAK_PTPN' ...
    'V_R1_pPLCgam_PTPN_R2_FAK' ...
    'V_R2_pPLCgam_PTPN_R2_FAK' ...
    'V_R1_pFAK_PTPN_R2_FAK' ...
    'V_R2_pFAK_PTPN_R2_FAK' ...
    'V_R1_pPLCgam_R1_pPLCgam' ...
    'V_R1_pPLCgam_R2_pPLCgam' ...
    'V_R1_pPLCgam_R1_pFAK' ...
    'V_R1_pPLCgam_R2_pFAK' ...
    'V_R2_pPLCgam_R1_pPLCgam' ...
    'V_R1_pFAK_R1_pPLCgam' ...
    'V_R2_pFAK_R1_pPLCgam' ...
    'V_R2_pPLCgam_R2_pPLCgam' ...
    'V_R2_pPLCgam_R1_pFAK' ...
    'V_R2_pPLCgam_R2_pFAK' ...
    'V_R1_pFAK_R2_pPLCgam' ...
    'V_R2_pFAK_R2_pPLCgam' ...
    'V_R1_pFAK_R1_pFAK' ...
    'V_R1_pFAK_R2_pFAK' ...
    'V_R2_pFAK_R1_pFAK' ...
    'V_R2_pFAK_R2_pFAK' ...
    'PLCgam_PTPN' ...
    'FAK_PTPN' ...
    'R2_FAK_R1_pFAK_PTPN', ...
    'R2_FAK_R2_pFAK_PTPN', ...
    'R2_pFAK_R1_pFAK_PTPN', ...
    'R2_pFAK_R2_pFAK_PTPN', ...
    'V_R1_pPLCgam_R1_pPLCgam_PTPN' ...
    'V_R1_pPLCgam_R2_pPLCgam_PTPN' ...
    'V_R1_pPLCgam_R1_pFAK_PTPN' ...
    'V_R1_pPLCgam_R2_pFAK_PTPN' ...
    'V_R1_pPLCgam_PTPN_R1_pPLCgam' ...
    'V_R2_pPLCgam_PTPN_R1_pPLCgam' ...
    'V_R1_pFAK_PTPN_R1_pPLCgam' ...
    'V_R2_pFAK_PTPN_R1_pPLCgam' ...
    'V_R2_pPLCgam_R1_pPLCgam_PTPN' ...
    'V_R2_pPLCgam_R2_pPLCgam_PTPN' ...
    'V_R2_pPLCgam_R1_pFAK_PTPN' ...
    'V_R2_pPLCgam_R2_pFAK_PTPN' ...
    'V_R1_pPLCgam_PTPN_R2_pPLCgam' ...
    'V_R2_pPLCgam_PTPN_R2_pPLCgam' ...
    'V_R1_pFAK_PTPN_R2_pPLCgam' ...
    'V_R2_pFAK_PTPN_R2_pPLCgam' ...
    'V_R1_pFAK_R1_pPLCgam_PTPN' ...
    'V_R1_pFAK_R2_pPLCgam_PTPN' ...
    'V_R1_pFAK_R1_pFAK_PTPN' ...
    'V_R1_pFAK_R2_pFAK_PTPN' ...
    'V_R1_pPLCgam_PTPN_R1_pFAK' ...
    'V_R2_pPLCgam_PTPN_R1_pFAK' ...
    'V_R1_pFAK_PTPN_R1_pFAK' ...
    'V_R2_pFAK_PTPN_R1_pFAK' ...
    'V_R2_pFAK_R1_pPLCgam_PTPN' ...
    'V_R2_pFAK_R2_pPLCgam_PTPN' ...
    'V_R2_pFAK_R1_pFAK_PTPN' ...
    'V_R2_pFAK_R2_pFAK_PTPN' ...
    'V_R1_pPLCgam_PTPN_R2_pFAK' ...
    'V_R2_pPLCgam_PTPN_R2_pFAK' ...
    'V_R1_pFAK_PTPN_R2_pFAK' ...
    'V_R2_pFAK_PTPN_R2_pFAK' ...
    'V_R1_pPLCgam_PTPN_R1_pPLCgam_PTPN' ...
    'V_R1_pPLCgam_PTPN_R2_pPLCgam_PTPN' ...
    'V_R1_pPLCgam_PTPN_R1_pFAK_PTPN' ...
    'V_R1_pPLCgam_PTPN_R2_pFAK_PTPN' ...
    'V_R2_pPLCgam_PTPN_R1_pPLCgam_PTPN' ...
    'V_R1_pFAK_PTPN_R1_pPLCgam_PTPN' ...
    'V_R2_pFAK_PTPN_R1_pPLCgam_PTPN' ...
    'V_R2_pPLCgam_PTPN_R2_pPLCgam_PTPN' ...
    'V_R2_pPLCgam_PTPN_R1_pFAK_PTPN' ...
    'V_R2_pPLCgam_PTPN_R2_pFAK_PTPN' ...
    'V_R1_pFAK_PTPN_R2_pPLCgam_PTPN' ...
    'V_R2_pFAK_PTPN_R2_pPLCgam_PTPN' ...
    'V_R1_pFAK_PTPN_R1_pFAK_PTPN' ...
    'V_R1_pFAK_PTPN_R2_pFAK_PTPN' ...
    'V_R2_pFAK_PTPN_R1_pFAK_PTPN' ...
    'V_R2_pFAK_PTPN_R2_pFAK_PTPN' ...
    'pR1_R1' ...
    'pR1_R2' ...
    'pR2_R1' ...
    'pR2_R2' ...
    'pR1_PLCgam_R1' ...
    'pR1_PLCgam_R2' ...
    'pR1_R1_PLCgam' ...
    'pR2_R1_PLCgam' ...
    'pR2_PLCgam_R1' ...
    'pR2_PLCgam_R2' ...
    'pR1_R2_PLCgam' ...
    'pR2_R2_PLCgam' ...
    'pR1_FAK_R1' ...
    'pR1_FAK_R2' ...
    'pR1_R1_FAK' ...
    'pR2_R1_FAK' ...
    'pR2_FAK_R1' ...
    'pR2_FAK_R2' ...
    'pR1_R2_FAK' ...
    'pR2_R2_FAK' ...
    'pR1_PLCgam_R1_PLCgam' ...
    'pR1_PLCgam_R2_PLCgam' ...
    'pR1_PLCgam_R1_FAK' ...
    'pR1_PLCgam_R2_FAK' ...
    'pR2_PLCgam_R1_PLCgam' ...
    'pR1_FAK_R1_PLCgam' ...
    'pR2_FAK_R1_PLCgam' ...
    'pR2_PLCgam_R2_PLCgam' ...
    'pR2_PLCgam_R1_FAK' ...
    'pR2_PLCgam_R2_FAK' ...
    'pR1_FAK_R2_PLCgam' ...
    'pR2_FAK_R2_PLCgam' ...
    'pR1_FAK_R1_FAK' ...
    'pR1_FAK_R2_FAK' ...
    'pR2_FAK_R1_FAK' ...
    'pR2_FAK_R2_FAK' ...
    'pR1_pPLCgam_R1' ...
    'pR1_pPLCgam_R2' ...
    'pR1_R1_pPLCgam' ...
    'pR2_R1_pPLCgam' ...
    'pR2_pPLCgam_R1' ...
    'pR2_pPLCgam_R2' ...
    'pR1_R2_pPLCgam' ...
    'pR2_R2_pPLCgam' ...
    'pR1_pFAK_R1' ...
    'pR1_pFAK_R2' ...
    'pR1_R1_pFAK' ...
    'pR2_R1_pFAK' ...
    'pR2_pFAK_R1' ...
    'pR2_pFAK_R2' ...
    'pR1_R2_pFAK' ...
    'pR2_R2_pFAK' ...
    'pR1_PLCgam_R1_pPLCgam' ...
    'pR1_PLCgam_R2_pPLCgam' ...
    'pR1_PLCgam_R1_pFAK' ...
    'pR1_PLCgam_R2_pFAK' ...
    'pR1_pPLCgam_R1_PLCgam' ...
    'pR2_pPLCgam_R1_PLCgam' ...
    'pR1_pFAK_R1_PLCgam' ...
    'pR2_pFAK_R1_PLCgam' ...
    'pR2_PLCgam_R1_pPLCgam' ...
    'pR2_PLCgam_R2_pPLCgam' ...
    'pR2_PLCgam_R1_pFAK' ...
    'pR2_PLCgam_R2_pFAK' ...
    'pR1_pPLCgam_R2_PLCgam' ...
    'pR2_pPLCgam_R2_PLCgam' ...
    'pR1_pFAK_R2_PLCgam' ...
    'pR2_pFAK_R2_PLCgam' ...
    'pR1_FAK_R1_pPLCgam' ...
    'pR1_FAK_R2_pPLCgam' ...
    'pR1_FAK_R1_pFAK' ...
    'pR1_FAK_R2_pFAK' ...
    'pR1_pPLCgam_R1_FAK' ...
    'pR2_pPLCgam_R1_FAK' ...
    'pR1_pFAK_R1_FAK' ...
    'pR2_pFAK_R1_FAK' ...
    'pR2_FAK_R1_pPLCgam' ...
    'pR2_FAK_R2_pPLCgam' ...
    'pR2_FAK_R1_pFAK' ...
    'pR2_FAK_R2_pFAK' ...
    'pR1_pPLCgam_R2_FAK' ...
    'pR2_pPLCgam_R2_FAK' ...
    'pR1_pFAK_R2_FAK' ...
    'pR2_pFAK_R2_FAK' ...
    'pR1_pPLCgam_PTPN_R1' ...
    'pR1_pPLCgam_PTPN_R2' ...
    'pR1_R1_pPLCgam_PTPN' ...
    'pR2_R1_pPLCgam_PTPN' ...
    'pR2_pPLCgam_PTPN_R1' ...
    'pR2_pPLCgam_PTPN_R2' ...
    'pR1_R2_pPLCgam_PTPN' ...
    'pR2_R2_pPLCgam_PTPN' ...
    'pR1_pFAK_PTPN_R1' ...
    'pR1_pFAK_PTPN_R2' ...
    'pR1_R1_pFAK_PTPN' ...
    'pR2_R1_pFAK_PTPN' ...
    'pR2_pFAK_PTPN_R1' ...
    'pR2_pFAK_PTPN_R2' ...
    'pR1_R2_pFAK_PTPN' ...
    'pR2_R2_pFAK_PTPN' ...
    'pR1_PLCgam_R1_pPLCgam_PTPN' ...
    'pR1_PLCgam_R2_pPLCgam_PTPN' ...
    'pR1_PLCgam_R1_pFAK_PTPN' ...
    'pR1_PLCgam_R2_pFAK_PTPN' ...
    'pR1_pPLCgam_PTPN_R1_PLCgam' ...
    'pR2_pPLCgam_PTPN_R1_PLCgam' ...
    'pR1_pFAK_PTPN_R1_PLCgam' ...
    'pR2_pFAK_PTPN_R1_PLCgam' ...
    'pR2_PLCgam_R1_pPLCgam_PTPN' ...
    'pR2_PLCgam_R2_pPLCgam_PTPN' ...
    'pR2_PLCgam_R1_pFAK_PTPN' ...
    'pR2_PLCgam_R2_pFAK_PTPN' ...
    'pR1_pPLCgam_PTPN_R2_PLCgam' ...
    'pR2_pPLCgam_PTPN_R2_PLCgam' ...
    'pR1_pFAK_PTPN_R2_PLCgam' ...
    'pR2_pFAK_PTPN_R2_PLCgam' ...
    'pR1_FAK_R1_pPLCgam_PTPN' ...
    'pR1_FAK_R2_pPLCgam_PTPN' ...
    'pR1_FAK_R1_pFAK_PTPN' ...
    'pR1_FAK_R2_pFAK_PTPN' ...
    'pR1_pPLCgam_PTPN_R1_FAK' ...
    'pR2_pPLCgam_PTPN_R1_FAK' ...
    'pR1_pFAK_PTPN_R1_FAK' ...
    'pR2_pFAK_PTPN_R1_FAK' ...
    'pR2_FAK_R1_pPLCgam_PTPN' ...
    'pR2_FAK_R2_pPLCgam_PTPN' ...
    'pR2_FAK_R1_pFAK_PTPN' ...
    'pR2_FAK_R2_pFAK_PTPN' ...
    'pR1_pPLCgam_PTPN_R2_FAK' ...
    'pR2_pPLCgam_PTPN_R2_FAK' ...
    'pR1_pFAK_PTPN_R2_FAK' ...
    'pR2_pFAK_PTPN_R2_FAK' ...
    'pR1_pPLCgam_R1_pPLCgam' ...
    'pR1_pPLCgam_R2_pPLCgam' ...
    'pR1_pPLCgam_R1_pFAK' ...
    'pR1_pPLCgam_R2_pFAK' ...
    'pR2_pPLCgam_R1_pPLCgam' ...
    'pR1_pFAK_R1_pPLCgam' ...
    'pR2_pFAK_R1_pPLCgam' ...
    'pR2_pPLCgam_R2_pPLCgam' ...
    'pR2_pPLCgam_R1_pFAK' ...
    'pR2_pPLCgam_R2_pFAK' ...
    'pR1_pFAK_R2_pPLCgam' ...
    'pR2_pFAK_R2_pPLCgam' ...
    'pR1_pFAK_R1_pFAK' ...
    'pR1_pFAK_R2_pFAK' ...
    'pR2_pFAK_R1_pFAK' ...
    'pR2_pFAK_R2_pFAK' ...
    'pR1_pPLCgam_R1_pPLCgam_PTPN' ...
    'pR1_pPLCgam_R2_pPLCgam_PTPN' ...
    'pR1_pPLCgam_R1_pFAK_PTPN' ...
    'pR1_pPLCgam_R2_pFAK_PTPN' ...
    'pR1_pPLCgam_PTPN_R1_pPLCgam' ...
    'pR2_pPLCgam_PTPN_R1_pPLCgam' ...
    'pR1_pFAK_PTPN_R1_pPLCgam' ...
    'pR2_pFAK_PTPN_R1_pPLCgam' ...
    'pR2_pPLCgam_R1_pPLCgam_PTPN' ...
    'pR2_pPLCgam_R2_pPLCgam_PTPN' ...
    'pR2_pPLCgam_R1_pFAK_PTPN' ...
    'pR2_pPLCgam_R2_pFAK_PTPN' ...
    'pR1_pPLCgam_PTPN_R2_pPLCgam' ...
    'pR2_pPLCgam_PTPN_R2_pPLCgam' ...
    'pR1_pFAK_PTPN_R2_pPLCgam' ...
    'pR2_pFAK_PTPN_R2_pPLCgam' ...
    'pR1_pFAK_R1_pPLCgam_PTPN' ...
    'pR1_pFAK_R2_pPLCgam_PTPN' ...
    'pR1_pFAK_R1_pFAK_PTPN' ...
    'pR1_pFAK_R2_pFAK_PTPN' ...
    'pR1_pPLCgam_PTPN_R1_pFAK' ...
    'pR2_pPLCgam_PTPN_R1_pFAK' ...
    'pR1_pFAK_PTPN_R1_pFAK' ...
    'pR2_pFAK_PTPN_R1_pFAK' ...
    'pR2_pFAK_R1_pPLCgam_PTPN' ...
    'pR2_pFAK_R2_pPLCgam_PTPN' ...
    'pR2_pFAK_R1_pFAK_PTPN' ...
    'pR2_pFAK_R2_pFAK_PTPN' ...
    'pR1_pPLCgam_PTPN_R2_pFAK' ...
    'pR2_pPLCgam_PTPN_R2_pFAK' ...
    'pR1_pFAK_PTPN_R2_pFAK' ...
    'pR2_pFAK_PTPN_R2_pFAK' ...
    'pR1_pPLCgam_PTPN_R1_pPLCgam_PTPN' ...
    'pR1_pPLCgam_PTPN_R2_pPLCgam_PTPN' ...
    'pR1_pPLCgam_PTPN_R1_pFAK_PTPN' ...
    'pR1_pPLCgam_PTPN_R2_pFAK_PTPN' ...
    'pR2_pPLCgam_PTPN_R1_pPLCgam_PTPN' ...
    'pR1_pFAK_PTPN_R1_pPLCgam_PTPN' ...
    'pR2_pFAK_PTPN_R1_pPLCgam_PTPN' ...
    'pR2_pPLCgam_PTPN_R2_pPLCgam_PTPN' ...
    'pR2_pPLCgam_PTPN_R1_pFAK_PTPN' ...
    'pR2_pPLCgam_PTPN_R2_pFAK_PTPN' ...
    'pR1_pFAK_PTPN_R2_pPLCgam_PTPN' ...
    'pR2_pFAK_PTPN_R2_pPLCgam_PTPN' ...
    'pR1_pFAK_PTPN_R1_pFAK_PTPN' ...
    'pR1_pFAK_PTPN_R2_pFAK_PTPN' ...
    'pR2_pFAK_PTPN_R1_pFAK_PTPN' ...
    'pR2_pFAK_PTPN_R2_pFAK_PTPN' ...
};

irreversible_1_1 = {
    'V_R1_PLCgam_R1' '->' 'V_R1_pPLCgam_R1'
    'V_R1_PLCgam_R2' '->' 'V_R1_pPLCgam_R2'
    'V_R2_PLCgam_R1' '->' 'V_R2_pPLCgam_R1'
    'V_R2_PLCgam_R2' '->' 'V_R2_pPLCgam_R2'
    'V_R1_FAK_R1' '->' 'V_R1_pFAK_R1'
    'V_R1_FAK_R2' '->' 'V_R1_pFAK_R2'
    'V_R2_FAK_R1' '->' 'V_R2_pFAK_R1'
    'V_R2_FAK_R2' '->' 'V_R2_pFAK_R2'
    'V_R1_R1_PLCgam' '->' 'V_R1_R1_pPLCgam'
    'V_R1_R2_PLCgam' '->' 'V_R1_R2_pPLCgam'
    'V_R2_R1_PLCgam' '->' 'V_R2_R1_pPLCgam'
    'V_R2_R2_PLCgam' '->' 'V_R2_R2_pPLCgam'
    'V_R1_R1_FAK' '->' 'V_R1_R1_pFAK'
    'V_R1_R2_FAK' '->' 'V_R1_R2_pFAK'
    'V_R2_R1_FAK' '->' 'V_R2_R1_pFAK'
    'V_R2_R2_FAK' '->' 'V_R2_R2_pFAK'
    'V_R1_PLCgam_R1_PLCgam' '->' 'V_R1_pPLCgam_R1_PLCgam'
    'V_R1_PLCgam_R2_PLCgam' '->' 'V_R1_pPLCgam_R2_PLCgam'
    'V_R2_PLCgam_R1_PLCgam' '->' 'V_R2_pPLCgam_R1_PLCgam'
    'V_R2_PLCgam_R2_PLCgam' '->' 'V_R2_pPLCgam_R2_PLCgam'
    'V_R1_PLCgam_R1_FAK' '->' 'V_R1_pPLCgam_R1_FAK'
    'V_R1_PLCgam_R2_FAK' '->' 'V_R1_pPLCgam_R2_FAK'
    'V_R2_PLCgam_R1_FAK' '->' 'V_R2_pPLCgam_R1_FAK'
    'V_R2_PLCgam_R2_FAK' '->' 'V_R2_pPLCgam_R2_FAK'
    'V_R1_FAK_R1_PLCgam' '->' 'V_R1_pFAK_R1_PLCgam'
    'V_R1_FAK_R2_PLCgam' '->' 'V_R1_pFAK_R2_PLCgam'
    'V_R2_FAK_R1_PLCgam' '->' 'V_R2_pFAK_R1_PLCgam'
    'V_R2_FAK_R2_PLCgam' '->' 'V_R2_pFAK_R2_PLCgam'
    'V_R1_FAK_R1_FAK' '->' 'V_R1_pFAK_R1_FAK'
    'V_R1_FAK_R2_FAK' '->' 'V_R1_pFAK_R2_FAK'
    'V_R2_FAK_R1_FAK' '->' 'V_R2_pFAK_R1_FAK'
    'V_R2_FAK_R2_FAK' '->' 'V_R2_pFAK_R2_FAK'
    'V_R1_PLCgam_R1_PLCgam' '->' 'V_R1_PLCgam_R1_pPLCgam'
    'V_R1_PLCgam_R2_PLCgam' '->' 'V_R1_PLCgam_R2_pPLCgam'
    'V_R2_PLCgam_R1_PLCgam' '->' 'V_R2_PLCgam_R1_pPLCgam'
    'V_R2_PLCgam_R2_PLCgam' '->' 'V_R2_PLCgam_R2_pPLCgam'
    'V_R1_PLCgam_R1_FAK' '->' 'V_R1_PLCgam_R1_pFAK'
    'V_R1_PLCgam_R2_FAK' '->' 'V_R1_PLCgam_R2_pFAK'
    'V_R2_PLCgam_R1_FAK' '->' 'V_R2_PLCgam_R1_pFAK'
    'V_R2_PLCgam_R2_FAK' '->' 'V_R2_PLCgam_R2_pFAK'
    'V_R1_FAK_R1_PLCgam' '->' 'V_R1_FAK_R1_pPLCgam'
    'V_R1_FAK_R2_PLCgam' '->' 'V_R1_FAK_R2_pPLCgam'
    'V_R2_FAK_R1_PLCgam' '->' 'V_R2_FAK_R1_pPLCgam'
    'V_R2_FAK_R2_PLCgam' '->' 'V_R2_FAK_R2_pPLCgam'
    'V_R1_FAK_R1_FAK' '->' 'V_R1_FAK_R1_pFAK'
    'V_R1_FAK_R2_FAK' '->' 'V_R1_FAK_R2_pFAK'
    'V_R2_FAK_R1_FAK' '->' 'V_R2_FAK_R1_pFAK'
    'V_R2_FAK_R2_FAK' '->' 'V_R2_FAK_R2_pFAK'
    'V_R1_pPLCgam_R1_PLCgam' '->' 'V_R1_pPLCgam_R1_pPLCgam'
    'V_R1_pPLCgam_R2_PLCgam' '->' 'V_R1_pPLCgam_R2_pPLCgam'
    'V_R2_pPLCgam_R1_PLCgam' '->' 'V_R2_pPLCgam_R1_pPLCgam'
    'V_R2_pPLCgam_R2_PLCgam' '->' 'V_R2_pPLCgam_R2_pPLCgam'
    'V_R1_pPLCgam_R1_FAK' '->' 'V_R1_pPLCgam_R1_pFAK'
    'V_R1_pPLCgam_R2_FAK' '->' 'V_R1_pPLCgam_R2_pFAK'
    'V_R2_pPLCgam_R1_FAK' '->' 'V_R2_pPLCgam_R1_pFAK'
    'V_R2_pPLCgam_R2_FAK' '->' 'V_R2_pPLCgam_R2_pFAK'
    'V_R1_pFAK_R1_PLCgam' '->' 'V_R1_pFAK_R1_pPLCgam'
    'V_R1_pFAK_R2_PLCgam' '->' 'V_R1_pFAK_R2_pPLCgam'
    'V_R2_pFAK_R1_PLCgam' '->' 'V_R2_pFAK_R1_pPLCgam'
    'V_R2_pFAK_R2_PLCgam' '->' 'V_R2_pFAK_R2_pPLCgam'
    'V_R1_pFAK_R1_FAK' '->' 'V_R1_pFAK_R1_pFAK'
    'V_R1_pFAK_R2_FAK' '->' 'V_R1_pFAK_R2_pFAK'
    'V_R2_pFAK_R1_FAK' '->' 'V_R2_pFAK_R1_pFAK'
    'V_R2_pFAK_R2_FAK' '->' 'V_R2_pFAK_R2_pFAK'
    'V_R1_PLCgam_R1_pPLCgam' '->' 'V_R1_pPLCgam_R1_pPLCgam'
    'V_R1_PLCgam_R2_pPLCgam' '->' 'V_R1_pPLCgam_R2_pPLCgam'
    'V_R2_PLCgam_R1_pPLCgam' '->' 'V_R2_pPLCgam_R1_pPLCgam'
    'V_R2_PLCgam_R2_pPLCgam' '->' 'V_R2_pPLCgam_R2_pPLCgam'
    'V_R1_PLCgam_R1_pFAK' '->' 'V_R1_pPLCgam_R1_pFAK'
    'V_R1_PLCgam_R2_pFAK' '->' 'V_R1_pPLCgam_R2_pFAK'
    'V_R2_PLCgam_R1_pFAK' '->' 'V_R2_pPLCgam_R1_pFAK'
    'V_R2_PLCgam_R2_pFAK' '->' 'V_R2_pPLCgam_R2_pFAK'
    'V_R1_FAK_R1_pPLCgam' '->' 'V_R1_pFAK_R1_pPLCgam'
    'V_R1_FAK_R2_pPLCgam' '->' 'V_R1_pFAK_R2_pPLCgam'
    'V_R2_FAK_R1_pPLCgam' '->' 'V_R2_pFAK_R1_pPLCgam'
    'V_R2_FAK_R2_pPLCgam' '->' 'V_R2_pFAK_R2_pPLCgam'
    'V_R1_FAK_R1_pFAK' '->' 'V_R1_pFAK_R1_pFAK'
    'V_R1_FAK_R2_pFAK' '->' 'V_R1_pFAK_R2_pFAK'
    'V_R2_FAK_R1_pFAK' '->' 'V_R2_pFAK_R1_pFAK'
    'V_R2_FAK_R2_pFAK' '->' 'V_R2_pFAK_R2_pFAK'
    'V_R1_pPLCgam_PTPN_R1_PLCgam' '->' 'V_R1_pPLCgam_PTPN_R1_pPLCgam'
    'V_R1_pPLCgam_PTPN_R2_PLCgam' '->' 'V_R1_pPLCgam_PTPN_R2_pPLCgam'
    'V_R2_pPLCgam_PTPN_R1_PLCgam' '->' 'V_R2_pPLCgam_PTPN_R1_pPLCgam'
    'V_R2_pPLCgam_PTPN_R2_PLCgam' '->' 'V_R2_pPLCgam_PTPN_R2_pPLCgam'
    'V_R1_pPLCgam_PTPN_R1_FAK' '->' 'V_R1_pPLCgam_PTPN_R1_pFAK'
    'V_R1_pPLCgam_PTPN_R2_FAK' '->' 'V_R1_pPLCgam_PTPN_R2_pFAK'
    'V_R2_pPLCgam_PTPN_R1_FAK' '->' 'V_R2_pPLCgam_PTPN_R1_pFAK'
    'V_R2_pPLCgam_PTPN_R2_FAK' '->' 'V_R2_pPLCgam_PTPN_R2_pFAK'
    'V_R1_pFAK_PTPN_R1_PLCgam' '->' 'V_R1_pFAK_PTPN_R1_pPLCgam'
    'V_R1_pFAK_PTPN_R2_PLCgam' '->' 'V_R1_pFAK_PTPN_R2_pPLCgam'
    'V_R2_pFAK_PTPN_R1_PLCgam' '->' 'V_R2_pFAK_PTPN_R1_pPLCgam'
    'V_R2_pFAK_PTPN_R2_PLCgam' '->' 'V_R2_pFAK_PTPN_R2_pPLCgam'
    'V_R1_pFAK_PTPN_R1_FAK' '->' 'V_R1_pFAK_PTPN_R1_pFAK'
    'V_R1_pFAK_PTPN_R2_FAK' '->' 'V_R1_pFAK_PTPN_R2_pFAK'
    'V_R2_pFAK_PTPN_R1_FAK' '->' 'V_R2_pFAK_PTPN_R1_pFAK'
    'V_R2_pFAK_PTPN_R2_FAK' '->' 'V_R2_pFAK_PTPN_R2_pFAK'
    'V_R1_PLCgam_R1_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_R1_pPLCgam_PTPN'
    'V_R1_PLCgam_R2_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_R2_pPLCgam_PTPN'
    'V_R2_PLCgam_R1_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_R1_pPLCgam_PTPN'
    'V_R2_PLCgam_R2_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_R2_pPLCgam_PTPN'
    'V_R1_PLCgam_R1_pFAK_PTPN' '->' 'V_R1_pPLCgam_R1_pFAK_PTPN'
    'V_R1_PLCgam_R2_pFAK_PTPN' '->' 'V_R1_pPLCgam_R2_pFAK_PTPN'
    'V_R2_PLCgam_R1_pFAK_PTPN' '->' 'V_R2_pPLCgam_R1_pFAK_PTPN'
    'V_R2_PLCgam_R2_pFAK_PTPN' '->' 'V_R2_pPLCgam_R2_pFAK_PTPN'
    'V_R1_FAK_R1_pPLCgam_PTPN' '->' 'V_R1_pFAK_R1_pPLCgam_PTPN'
    'V_R1_FAK_R2_pPLCgam_PTPN' '->' 'V_R1_pFAK_R2_pPLCgam_PTPN'
    'V_R2_FAK_R1_pPLCgam_PTPN' '->' 'V_R2_pFAK_R1_pPLCgam_PTPN'
    'V_R2_FAK_R2_pPLCgam_PTPN' '->' 'V_R2_pFAK_R2_pPLCgam_PTPN'
    'V_R1_FAK_R1_pFAK_PTPN' '->' 'V_R1_pFAK_R1_pFAK_PTPN'
    'V_R1_FAK_R2_pFAK_PTPN' '->' 'V_R1_pFAK_R2_pFAK_PTPN'
    'V_R2_FAK_R1_pFAK_PTPN' '->' 'V_R2_pFAK_R1_pFAK_PTPN'
    'V_R2_FAK_R2_pFAK_PTPN' '->' 'V_R2_pFAK_R2_pFAK_PTPN'
    'uV_R1_R1' '->' 'V_R1_R1'
    'uV_R1_R2' '->' 'V_R1_R2'
    'uV_R2_R1' '->' 'V_R2_R1'
    'uV_R2_R2' '->' 'V_R2_R2'
    'V_R1_PLCgam_R1' '->' 'V_R1_pPLCgam_R1'
    'V_R1_PLCgam_R2' '->' 'V_R1_pPLCgam_R2'
    'V_R2_PLCgam_R1' '->' 'V_R2_pPLCgam_R1'
    'V_R2_PLCgam_R2' '->' 'V_R2_pPLCgam_R2'
    'V_R1_FAK_R1' '->' 'V_R1_pFAK_R1'
    'V_R1_FAK_R2' '->' 'V_R1_pFAK_R2'
    'V_R2_FAK_R1' '->' 'V_R2_pFAK_R1'
    'V_R2_FAK_R2' '->' 'V_R2_pFAK_R2'
    'V_R1_R1_PLCgam' '->' 'V_R1_R1_pPLCgam'
    'V_R1_R2_PLCgam' '->' 'V_R1_R2_pPLCgam'
    'V_R2_R1_PLCgam' '->' 'V_R2_R1_pPLCgam'
    'V_R2_R2_PLCgam' '->' 'V_R2_R2_pPLCgam'
    'V_R1_R1_FAK' '->' 'V_R1_R1_pFAK'
    'V_R1_R2_FAK' '->' 'V_R1_R2_pFAK'
    'V_R2_R1_FAK' '->' 'V_R2_R1_pFAK'
    'V_R2_R2_FAK' '->' 'V_R2_R2_pFAK'
    'V_R1_PLCgam_R1_PLCgam' '->' 'V_R1_pPLCgam_R1_PLCgam'
    'V_R1_PLCgam_R2_PLCgam' '->' 'V_R1_pPLCgam_R2_PLCgam'
    'V_R2_PLCgam_R1_PLCgam' '->' 'V_R2_pPLCgam_R1_PLCgam'
    'V_R2_PLCgam_R2_PLCgam' '->' 'V_R2_pPLCgam_R2_PLCgam'
    'V_R1_PLCgam_R1_FAK' '->' 'V_R1_pPLCgam_R1_FAK'
    'V_R1_PLCgam_R2_FAK' '->' 'V_R1_pPLCgam_R2_FAK'
    'V_R2_PLCgam_R1_FAK' '->' 'V_R2_pPLCgam_R1_FAK'
    'V_R2_PLCgam_R2_FAK' '->' 'V_R2_pPLCgam_R2_FAK'
    'V_R1_FAK_R1_PLCgam' '->' 'V_R1_pFAK_R1_PLCgam'
    'V_R1_FAK_R2_PLCgam' '->' 'V_R1_pFAK_R2_PLCgam'
    'V_R2_FAK_R1_PLCgam' '->' 'V_R2_pFAK_R1_PLCgam'
    'V_R2_FAK_R2_PLCgam' '->' 'V_R2_pFAK_R2_PLCgam'
    'V_R1_FAK_R1_FAK' '->' 'V_R1_pFAK_R1_FAK'
    'V_R1_FAK_R2_FAK' '->' 'V_R1_pFAK_R2_FAK'
    'V_R2_FAK_R1_FAK' '->' 'V_R2_pFAK_R1_FAK'
    'V_R2_FAK_R2_FAK' '->' 'V_R2_pFAK_R2_FAK'
    'V_R1_PLCgam_R1_PLCgam' '->' 'V_R1_PLCgam_R1_pPLCgam'
    'V_R1_PLCgam_R2_PLCgam' '->' 'V_R1_PLCgam_R2_pPLCgam'
    'V_R2_PLCgam_R1_PLCgam' '->' 'V_R2_PLCgam_R1_pPLCgam'
    'V_R2_PLCgam_R2_PLCgam' '->' 'V_R2_PLCgam_R2_pPLCgam'
    'V_R1_PLCgam_R1_FAK' '->' 'V_R1_PLCgam_R1_pFAK'
    'V_R1_PLCgam_R2_FAK' '->' 'V_R1_PLCgam_R2_pFAK'
    'V_R2_PLCgam_R1_FAK' '->' 'V_R2_PLCgam_R1_pFAK'
    'V_R2_PLCgam_R2_FAK' '->' 'V_R2_PLCgam_R2_pFAK'
    'V_R1_FAK_R1_PLCgam' '->' 'V_R1_FAK_R1_pPLCgam'
    'V_R1_FAK_R2_PLCgam' '->' 'V_R1_FAK_R2_pPLCgam'
    'V_R2_FAK_R1_PLCgam' '->' 'V_R2_FAK_R1_pPLCgam'
    'V_R2_FAK_R2_PLCgam' '->' 'V_R2_FAK_R2_pPLCgam'
    'V_R1_FAK_R1_FAK' '->' 'V_R1_FAK_R1_pFAK'
    'V_R1_FAK_R2_FAK' '->' 'V_R1_FAK_R2_pFAK'
    'V_R2_FAK_R1_FAK' '->' 'V_R2_FAK_R1_pFAK'
    'V_R2_FAK_R2_FAK' '->' 'V_R2_FAK_R2_pFAK'
    'V_R1_pPLCgam_R1_PLCgam' '->' 'V_R1_pPLCgam_R1_pPLCgam'
    'V_R1_pPLCgam_R2_PLCgam' '->' 'V_R1_pPLCgam_R2_pPLCgam'
    'V_R2_pPLCgam_R1_PLCgam' '->' 'V_R2_pPLCgam_R1_pPLCgam'
    'V_R2_pPLCgam_R2_PLCgam' '->' 'V_R2_pPLCgam_R2_pPLCgam'
    'V_R1_pPLCgam_R1_FAK' '->' 'V_R1_pPLCgam_R1_pFAK'
    'V_R1_pPLCgam_R2_FAK' '->' 'V_R1_pPLCgam_R2_pFAK'
    'V_R2_pPLCgam_R1_FAK' '->' 'V_R2_pPLCgam_R1_pFAK'
    'V_R2_pPLCgam_R2_FAK' '->' 'V_R2_pPLCgam_R2_pFAK'
    'V_R1_pFAK_R1_PLCgam' '->' 'V_R1_pFAK_R1_pPLCgam'
    'V_R1_pFAK_R2_PLCgam' '->' 'V_R1_pFAK_R2_pPLCgam'
    'V_R2_pFAK_R1_PLCgam' '->' 'V_R2_pFAK_R1_pPLCgam'
    'V_R2_pFAK_R2_PLCgam' '->' 'V_R2_pFAK_R2_pPLCgam'
    'V_R1_pFAK_R1_FAK' '->' 'V_R1_pFAK_R1_pFAK'
    'V_R1_pFAK_R2_FAK' '->' 'V_R1_pFAK_R2_pFAK'
    'V_R2_pFAK_R1_FAK' '->' 'V_R2_pFAK_R1_pFAK'
    'V_R2_pFAK_R2_FAK' '->' 'V_R2_pFAK_R2_pFAK'
    'V_R1_PLCgam_R1_pPLCgam' '->' 'V_R1_pPLCgam_R1_pPLCgam'
    'V_R1_PLCgam_R2_pPLCgam' '->' 'V_R1_pPLCgam_R2_pPLCgam'
    'V_R2_PLCgam_R1_pPLCgam' '->' 'V_R2_pPLCgam_R1_pPLCgam'
    'V_R2_PLCgam_R2_pPLCgam' '->' 'V_R2_pPLCgam_R2_pPLCgam'
    'V_R1_PLCgam_R1_pFAK' '->' 'V_R1_pPLCgam_R1_pFAK'
    'V_R1_PLCgam_R2_pFAK' '->' 'V_R1_pPLCgam_R2_pFAK'
    'V_R2_PLCgam_R1_pFAK' '->' 'V_R2_pPLCgam_R1_pFAK'
    'V_R2_PLCgam_R2_pFAK' '->' 'V_R2_pPLCgam_R2_pFAK'
    'V_R1_FAK_R1_pPLCgam' '->' 'V_R1_pFAK_R1_pPLCgam'
    'V_R1_FAK_R2_pPLCgam' '->' 'V_R1_pFAK_R2_pPLCgam'
    'V_R2_FAK_R1_pPLCgam' '->' 'V_R2_pFAK_R1_pPLCgam'
    'V_R2_FAK_R2_pPLCgam' '->' 'V_R2_pFAK_R2_pPLCgam'
    'V_R1_FAK_R1_pFAK' '->' 'V_R1_pFAK_R1_pFAK'
    'V_R1_FAK_R2_pFAK' '->' 'V_R1_pFAK_R2_pFAK'
    'V_R2_FAK_R1_pFAK' '->' 'V_R2_pFAK_R1_pFAK'
    'V_R2_FAK_R2_pFAK' '->' 'V_R2_pFAK_R2_pFAK'
    'V_R1_pPLCgam_PTPN_R1_PLCgam' '->' 'V_R1_pPLCgam_PTPN_R1_pPLCgam'
    'V_R1_pPLCgam_PTPN_R2_PLCgam' '->' 'V_R1_pPLCgam_PTPN_R2_pPLCgam'
    'V_R2_pPLCgam_PTPN_R1_PLCgam' '->' 'V_R2_pPLCgam_PTPN_R1_pPLCgam'
    'V_R2_pPLCgam_PTPN_R2_PLCgam' '->' 'V_R2_pPLCgam_PTPN_R2_pPLCgam'
    'V_R1_pPLCgam_PTPN_R1_FAK' '->' 'V_R1_pPLCgam_PTPN_R1_pFAK'
    'V_R1_pPLCgam_PTPN_R2_FAK' '->' 'V_R1_pPLCgam_PTPN_R2_pFAK'
    'V_R2_pPLCgam_PTPN_R1_FAK' '->' 'V_R2_pPLCgam_PTPN_R1_pFAK'
    'V_R2_pPLCgam_PTPN_R2_FAK' '->' 'V_R2_pPLCgam_PTPN_R2_pFAK'
    'V_R1_pFAK_PTPN_R1_PLCgam' '->' 'V_R1_pFAK_PTPN_R1_pPLCgam'
    'V_R1_pFAK_PTPN_R2_PLCgam' '->' 'V_R1_pFAK_PTPN_R2_pPLCgam'
    'V_R2_pFAK_PTPN_R1_PLCgam' '->' 'V_R2_pFAK_PTPN_R1_pPLCgam'
    'V_R2_pFAK_PTPN_R2_PLCgam' '->' 'V_R2_pFAK_PTPN_R2_pPLCgam'
    'V_R1_pFAK_PTPN_R1_FAK' '->' 'V_R1_pFAK_PTPN_R1_pFAK'
    'V_R1_pFAK_PTPN_R2_FAK' '->' 'V_R1_pFAK_PTPN_R2_pFAK'
    'V_R2_pFAK_PTPN_R1_FAK' '->' 'V_R2_pFAK_PTPN_R1_pFAK'
    'V_R2_pFAK_PTPN_R2_FAK' '->' 'V_R2_pFAK_PTPN_R2_pFAK'
    'V_R1_PLCgam_R1_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_R1_pPLCgam_PTPN'
    'V_R1_PLCgam_R2_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_R2_pPLCgam_PTPN'
    'V_R2_PLCgam_R1_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_R1_pPLCgam_PTPN'
    'V_R2_PLCgam_R2_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_R2_pPLCgam_PTPN'
    'V_R1_PLCgam_R1_pFAK_PTPN' '->' 'V_R1_pPLCgam_R1_pFAK_PTPN'
    'V_R1_PLCgam_R2_pFAK_PTPN' '->' 'V_R1_pPLCgam_R2_pFAK_PTPN'
    'V_R2_PLCgam_R1_pFAK_PTPN' '->' 'V_R2_pPLCgam_R1_pFAK_PTPN'
    'V_R2_PLCgam_R2_pFAK_PTPN' '->' 'V_R2_pPLCgam_R2_pFAK_PTPN'
    'V_R1_FAK_R1_pPLCgam_PTPN' '->' 'V_R1_pFAK_R1_pPLCgam_PTPN'
    'V_R1_FAK_R2_pPLCgam_PTPN' '->' 'V_R1_pFAK_R2_pPLCgam_PTPN'
    'V_R2_FAK_R1_pPLCgam_PTPN' '->' 'V_R2_pFAK_R1_pPLCgam_PTPN'
    'V_R2_FAK_R2_pPLCgam_PTPN' '->' 'V_R2_pFAK_R2_pPLCgam_PTPN'
    'V_R1_FAK_R1_pFAK_PTPN' '->' 'V_R1_pFAK_R1_pFAK_PTPN'
    'V_R1_FAK_R2_pFAK_PTPN' '->' 'V_R1_pFAK_R2_pFAK_PTPN'
    'V_R2_FAK_R1_pFAK_PTPN' '->' 'V_R2_pFAK_R1_pFAK_PTPN'
    'V_R2_FAK_R2_pFAK_PTPN' '->' 'V_R2_pFAK_R2_pFAK_PTPN'
    'uPAA_R1_R2' '->' 'PAA_R1_R2'
    'uPAB_R1_R2' '->' 'PAB_R1_R2'
    'uPBB_R1_R2' '->' 'PBB_R1_R2'
    'uPAA_R2_R1' '->' 'PAA_R2_R1'
    'uPAB_R2_R1' '->' 'PAB_R2_R1'
    'uPBB_R2_R1' '->' 'PBB_R2_R1'
    'PAA_R1_PLCgam_R2' '->' 'PAA_R1_pPLCgam_R2'
    'PAB_R1_PLCgam_R2' '->' 'PAB_R1_pPLCgam_R2'
    'PBB_R1_PLCgam_R2' '->' 'PBB_R1_pPLCgam_R2'
    'PAA_R1_FAK_R2' '->' 'PAA_R1_pFAK_R2'
    'PAB_R1_FAK_R2' '->' 'PAB_R1_pFAK_R2'
    'PBB_R1_FAK_R2' '->' 'PBB_R1_pFAK_R2'
    'PAA_R2_R1_PLCgam' '->' 'PAA_R2_R1_pPLCgam'
    'PAB_R2_R1_PLCgam' '->' 'PAB_R2_R1_pPLCgam'
    'PBB_R2_R1_PLCgam' '->' 'PBB_R2_R1_pPLCgam'
    'PAA_R2_R1_FAK' '->' 'PAA_R2_R1_pFAK'
    'PAB_R2_R1_FAK' '->' 'PAB_R2_R1_pFAK'
    'PBB_R2_R1_FAK' '->' 'PBB_R2_R1_pFAK'
    'V' '->' 'NULL'
    'PAA' '->' 'NULL'
    'PAB' '->' 'NULL'
    'PBB' '->' 'NULL'
    'R1_R1' '->' 'pR1_R1'
    'R1_R2' '->' 'pR1_R2'
    'R2_R1' '->' 'pR2_R1'
    'R2_R2' '->' 'pR2_R2'
    'pR1_PLCgam_R1' '->' 'pR1_pPLCgam_R1'
    'pR1_PLCgam_R2' '->' 'pR1_pPLCgam_R2'
    'pR2_PLCgam_R1' '->' 'pR2_pPLCgam_R1'
    'pR2_PLCgam_R2' '->' 'pR2_pPLCgam_R2'
    'pR1_FAK_R1' '->' 'pR1_pFAK_R1'
    'pR1_FAK_R2' '->' 'pR1_pFAK_R2'
    'pR2_FAK_R1' '->' 'pR2_pFAK_R1'
    'pR2_FAK_R2' '->' 'pR2_pFAK_R2'
    'pR1_R1_PLCgam' '->' 'pR1_R1_pPLCgam'
    'pR1_R2_PLCgam' '->' 'pR1_R2_pPLCgam'
    'pR2_R1_PLCgam' '->' 'pR2_R1_pPLCgam'
    'pR2_R2_PLCgam' '->' 'pR2_R2_pPLCgam'
    'pR1_R1_FAK' '->' 'pR1_R1_pFAK'
    'pR1_R2_FAK' '->' 'pR1_R2_pFAK'
    'pR2_R1_FAK' '->' 'pR2_R1_pFAK'
    'pR2_R2_FAK' '->' 'pR2_R2_pFAK'
    'pR1_PLCgam_R1_PLCgam' '->' 'pR1_pPLCgam_R1_PLCgam'
    'pR1_PLCgam_R2_PLCgam' '->' 'pR1_pPLCgam_R2_PLCgam'
    'pR2_PLCgam_R1_PLCgam' '->' 'pR2_pPLCgam_R1_PLCgam'
    'pR2_PLCgam_R2_PLCgam' '->' 'pR2_pPLCgam_R2_PLCgam'
    'pR1_PLCgam_R1_FAK' '->' 'pR1_pPLCgam_R1_FAK'
    'pR1_PLCgam_R2_FAK' '->' 'pR1_pPLCgam_R2_FAK'
    'pR2_PLCgam_R1_FAK' '->' 'pR2_pPLCgam_R1_FAK'
    'pR2_PLCgam_R2_FAK' '->' 'pR2_pPLCgam_R2_FAK'
    'pR1_FAK_R1_PLCgam' '->' 'pR1_pFAK_R1_PLCgam'
    'pR1_FAK_R2_PLCgam' '->' 'pR1_pFAK_R2_PLCgam'
    'pR2_FAK_R1_PLCgam' '->' 'pR2_pFAK_R1_PLCgam'
    'pR2_FAK_R2_PLCgam' '->' 'pR2_pFAK_R2_PLCgam'
    'pR1_FAK_R1_FAK' '->' 'pR1_pFAK_R1_FAK'
    'pR1_FAK_R2_FAK' '->' 'pR1_pFAK_R2_FAK'
    'pR2_FAK_R1_FAK' '->' 'pR2_pFAK_R1_FAK'
    'pR2_FAK_R2_FAK' '->' 'pR2_pFAK_R2_FAK'
    'pR1_PLCgam_R1_PLCgam' '->' 'pR1_PLCgam_R1_pPLCgam'
    'pR1_PLCgam_R2_PLCgam' '->' 'pR1_PLCgam_R2_pPLCgam'
    'pR2_PLCgam_R1_PLCgam' '->' 'pR2_PLCgam_R1_pPLCgam'
    'pR2_PLCgam_R2_PLCgam' '->' 'pR2_PLCgam_R2_pPLCgam'
    'pR1_PLCgam_R1_FAK' '->' 'pR1_PLCgam_R1_pFAK'
    'pR1_PLCgam_R2_FAK' '->' 'pR1_PLCgam_R2_pFAK'
    'pR2_PLCgam_R1_FAK' '->' 'pR2_PLCgam_R1_pFAK'
    'pR2_PLCgam_R2_FAK' '->' 'pR2_PLCgam_R2_pFAK'
    'pR1_FAK_R1_PLCgam' '->' 'pR1_FAK_R1_pPLCgam'
    'pR1_FAK_R2_PLCgam' '->' 'pR1_FAK_R2_pPLCgam'
    'pR2_FAK_R1_PLCgam' '->' 'pR2_FAK_R1_pPLCgam'
    'pR2_FAK_R2_PLCgam' '->' 'pR2_FAK_R2_pPLCgam'
    'pR1_FAK_R1_FAK' '->' 'pR1_FAK_R1_pFAK'
    'pR1_FAK_R2_FAK' '->' 'pR1_FAK_R2_pFAK'
    'pR2_FAK_R1_FAK' '->' 'pR2_FAK_R1_pFAK'
    'pR2_FAK_R2_FAK' '->' 'pR2_FAK_R2_pFAK'
    'pR1_pPLCgam_R1_PLCgam' '->' 'pR1_pPLCgam_R1_pPLCgam'
    'pR1_pPLCgam_R2_PLCgam' '->' 'pR1_pPLCgam_R2_pPLCgam'
    'pR2_pPLCgam_R1_PLCgam' '->' 'pR2_pPLCgam_R1_pPLCgam'
    'pR2_pPLCgam_R2_PLCgam' '->' 'pR2_pPLCgam_R2_pPLCgam'
    'pR1_pPLCgam_R1_FAK' '->' 'pR1_pPLCgam_R1_pFAK'
    'pR1_pPLCgam_R2_FAK' '->' 'pR1_pPLCgam_R2_pFAK'
    'pR2_pPLCgam_R1_FAK' '->' 'pR2_pPLCgam_R1_pFAK'
    'pR2_pPLCgam_R2_FAK' '->' 'pR2_pPLCgam_R2_pFAK'
    'pR1_pFAK_R1_PLCgam' '->' 'pR1_pFAK_R1_pPLCgam'
    'pR1_pFAK_R2_PLCgam' '->' 'pR1_pFAK_R2_pPLCgam'
    'pR2_pFAK_R1_PLCgam' '->' 'pR2_pFAK_R1_pPLCgam'
    'pR2_pFAK_R2_PLCgam' '->' 'pR2_pFAK_R2_pPLCgam'
    'pR1_pFAK_R1_FAK' '->' 'pR1_pFAK_R1_pFAK'
    'pR1_pFAK_R2_FAK' '->' 'pR1_pFAK_R2_pFAK'
    'pR2_pFAK_R1_FAK' '->' 'pR2_pFAK_R1_pFAK'
    'pR2_pFAK_R2_FAK' '->' 'pR2_pFAK_R2_pFAK'
    'pR1_PLCgam_R1_pPLCgam' '->' 'pR1_pPLCgam_R1_pPLCgam'
    'pR1_PLCgam_R2_pPLCgam' '->' 'pR1_pPLCgam_R2_pPLCgam'
    'pR2_PLCgam_R1_pPLCgam' '->' 'pR2_pPLCgam_R1_pPLCgam'
    'pR2_PLCgam_R2_pPLCgam' '->' 'pR2_pPLCgam_R2_pPLCgam'
    'pR1_PLCgam_R1_pFAK' '->' 'pR1_pPLCgam_R1_pFAK'
    'pR1_PLCgam_R2_pFAK' '->' 'pR1_pPLCgam_R2_pFAK'
    'pR2_PLCgam_R1_pFAK' '->' 'pR2_pPLCgam_R1_pFAK'
    'pR2_PLCgam_R2_pFAK' '->' 'pR2_pPLCgam_R2_pFAK'
    'pR1_FAK_R1_pPLCgam' '->' 'pR1_pFAK_R1_pPLCgam'
    'pR1_FAK_R2_pPLCgam' '->' 'pR1_pFAK_R2_pPLCgam'
    'pR2_FAK_R1_pPLCgam' '->' 'pR2_pFAK_R1_pPLCgam'
    'pR2_FAK_R2_pPLCgam' '->' 'pR2_pFAK_R2_pPLCgam'
    'pR1_FAK_R1_pFAK' '->' 'pR1_pFAK_R1_pFAK'
    'pR1_FAK_R2_pFAK' '->' 'pR1_pFAK_R2_pFAK'
    'pR2_FAK_R1_pFAK' '->' 'pR2_pFAK_R1_pFAK'
    'pR2_FAK_R2_pFAK' '->' 'pR2_pFAK_R2_pFAK'
    'pR1_pPLCgam_PTPN_R1_PLCgam' '->' 'pR1_pPLCgam_PTPN_R1_pPLCgam'
    'pR1_pPLCgam_PTPN_R2_PLCgam' '->' 'pR1_pPLCgam_PTPN_R2_pPLCgam'
    'pR2_pPLCgam_PTPN_R1_PLCgam' '->' 'pR2_pPLCgam_PTPN_R1_pPLCgam'
    'pR2_pPLCgam_PTPN_R2_PLCgam' '->' 'pR2_pPLCgam_PTPN_R2_pPLCgam'
    'pR1_pPLCgam_PTPN_R1_FAK' '->' 'pR1_pPLCgam_PTPN_R1_pFAK'
    'pR1_pPLCgam_PTPN_R2_FAK' '->' 'pR1_pPLCgam_PTPN_R2_pFAK'
    'pR2_pPLCgam_PTPN_R1_FAK' '->' 'pR2_pPLCgam_PTPN_R1_pFAK'
    'pR2_pPLCgam_PTPN_R2_FAK' '->' 'pR2_pPLCgam_PTPN_R2_pFAK'
    'pR1_pFAK_PTPN_R1_PLCgam' '->' 'pR1_pFAK_PTPN_R1_pPLCgam'
    'pR1_pFAK_PTPN_R2_PLCgam' '->' 'pR1_pFAK_PTPN_R2_pPLCgam'
    'pR2_pFAK_PTPN_R1_PLCgam' '->' 'pR2_pFAK_PTPN_R1_pPLCgam'
    'pR2_pFAK_PTPN_R2_PLCgam' '->' 'pR2_pFAK_PTPN_R2_pPLCgam'
    'pR1_pFAK_PTPN_R1_FAK' '->' 'pR1_pFAK_PTPN_R1_pFAK'
    'pR1_pFAK_PTPN_R2_FAK' '->' 'pR1_pFAK_PTPN_R2_pFAK'
    'pR2_pFAK_PTPN_R1_FAK' '->' 'pR2_pFAK_PTPN_R1_pFAK'
    'pR2_pFAK_PTPN_R2_FAK' '->' 'pR2_pFAK_PTPN_R2_pFAK'
    'pR1_PLCgam_R1_pPLCgam_PTPN' '->' 'pR1_pPLCgam_R1_pPLCgam_PTPN'
    'pR1_PLCgam_R2_pPLCgam_PTPN' '->' 'pR1_pPLCgam_R2_pPLCgam_PTPN'
    'pR2_PLCgam_R1_pPLCgam_PTPN' '->' 'pR2_pPLCgam_R1_pPLCgam_PTPN'
    'pR2_PLCgam_R2_pPLCgam_PTPN' '->' 'pR2_pPLCgam_R2_pPLCgam_PTPN'
    'pR1_PLCgam_R1_pFAK_PTPN' '->' 'pR1_pPLCgam_R1_pFAK_PTPN'
    'pR1_PLCgam_R2_pFAK_PTPN' '->' 'pR1_pPLCgam_R2_pFAK_PTPN'
    'pR2_PLCgam_R1_pFAK_PTPN' '->' 'pR2_pPLCgam_R1_pFAK_PTPN'
    'pR2_PLCgam_R2_pFAK_PTPN' '->' 'pR2_pPLCgam_R2_pFAK_PTPN'
    'pR1_FAK_R1_pPLCgam_PTPN' '->' 'pR1_pFAK_R1_pPLCgam_PTPN'
    'pR1_FAK_R2_pPLCgam_PTPN' '->' 'pR1_pFAK_R2_pPLCgam_PTPN'
    'pR2_FAK_R1_pPLCgam_PTPN' '->' 'pR2_pFAK_R1_pPLCgam_PTPN'
    'pR2_FAK_R2_pPLCgam_PTPN' '->' 'pR2_pFAK_R2_pPLCgam_PTPN'
    'pR1_FAK_R1_pFAK_PTPN' '->' 'pR1_pFAK_R1_pFAK_PTPN'
    'pR1_FAK_R2_pFAK_PTPN' '->' 'pR1_pFAK_R2_pFAK_PTPN'
    'R2_FAK_R1_pFAK_PTPN' '->' 'R2_pFAK_R1_pFAK_PTPN'
    'R2_FAK_R2_pFAK_PTPN' '->' 'R2_pFAK_R2_pFAK_PTPN'
    'PAA_R1_PLCgam_R2' '->' 'PAA_R1_pPLCgam_R2'
    'PAB_R1_PLCgam_R2' '->' 'PAB_R1_pPLCgam_R2'
    'PBB_R1_PLCgam_R2' '->' 'PBB_R1_pPLCgam_R2'
    'PAA_R1_FAK_R2' '->' 'PAA_R1_pFAK_R2'
    'PAB_R1_FAK_R2' '->' 'PAB_R1_pFAK_R2'
    'PBB_R1_FAK_R2' '->' 'PBB_R1_pFAK_R2'
    'PAA_R2_R1_PLCgam' '->' 'PAA_R2_R1_pPLCgam'
    'PAB_R2_R1_PLCgam' '->' 'PAB_R2_R1_pPLCgam'
    'PBB_R2_R1_PLCgam' '->' 'PBB_R2_R1_pPLCgam'
    'PAA_R2_R1_FAK' '->' 'PAA_R2_R1_pFAK'
    'PAB_R2_R1_FAK' '->' 'PAB_R2_R1_pFAK'
    'PBB_R2_R1_FAK' '->' 'PBB_R2_R1_pFAK'
};


irreversible_1_2 = {
    'pR1_pPLCgam_PTPN_R1' '->' 'pR1_R1' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R2' '->' 'pR1_R2' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R1' '->' 'pR2_R1' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R2' '->' 'pR2_R2' 'PLCgam_PTPN'
    'pR1_pFAK_PTPN_R1' '->' 'pR1_R1' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R2' '->' 'pR1_R2' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R1' '->' 'pR2_R1' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R2' '->' 'pR2_R2' 'FAK_PTPN'
    'pR1_R1_pPLCgam_PTPN' '->' 'pR1_R1' 'PLCgam_PTPN'
    'pR1_R2_pPLCgam_PTPN' '->' 'pR1_R2' 'PLCgam_PTPN'
    'pR2_R1_pPLCgam_PTPN' '->' 'pR2_R1' 'PLCgam_PTPN'
    'pR2_R2_pPLCgam_PTPN' '->' 'pR2_R2' 'PLCgam_PTPN'
    'pR1_R1_pFAK_PTPN' '->' 'pR1_R1' 'FAK_PTPN'
    'pR1_R2_pFAK_PTPN' '->' 'pR1_R2' 'FAK_PTPN'
    'pR2_R1_pFAK_PTPN' '->' 'pR2_R1' 'FAK_PTPN'
    'pR2_R2_pFAK_PTPN' '->' 'pR2_R2' 'FAK_PTPN'
    'pR1_pPLCgam_PTPN_R1_PLCgam' '->' 'pR1_R1_PLCgam' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R2_PLCgam' '->' 'pR1_R2_PLCgam' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R1_PLCgam' '->' 'pR2_R1_PLCgam' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R2_PLCgam' '->' 'pR2_R2_PLCgam' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R1_FAK' '->' 'pR1_R1_FAK' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R2_FAK' '->' 'pR1_R2_FAK' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R1_FAK' '->' 'pR2_R1_FAK' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R2_FAK' '->' 'pR2_R2_FAK' 'PLCgam_PTPN'
    'pR1_pFAK_PTPN_R1_PLCgam' '->' 'pR1_R1_PLCgam' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R2_PLCgam' '->' 'pR1_R2_PLCgam' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R1_PLCgam' '->' 'pR2_R1_PLCgam' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R2_PLCgam' '->' 'pR2_R2_PLCgam' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R1_FAK' '->' 'pR1_R1_FAK' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R2_FAK' '->' 'pR1_R2_FAK' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R1_FAK' '->' 'pR2_R1_FAK' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R2_FAK' '->' 'pR2_R2_FAK' 'FAK_PTPN'
    'pR1_PLCgam_R1_pPLCgam_PTPN' '->' 'pR1_PLCgam_R1' 'PLCgam_PTPN'
    'pR1_PLCgam_R2_pPLCgam_PTPN' '->' 'pR1_PLCgam_R2' 'PLCgam_PTPN'
    'pR2_PLCgam_R1_pPLCgam_PTPN' '->' 'pR2_PLCgam_R1' 'PLCgam_PTPN'
    'pR2_PLCgam_R2_pPLCgam_PTPN' '->' 'pR2_PLCgam_R2' 'PLCgam_PTPN'
    'pR1_PLCgam_R1_pFAK_PTPN' '->' 'pR1_PLCgam_R1' 'FAK_PTPN'
    'pR1_PLCgam_R2_pFAK_PTPN' '->' 'pR1_PLCgam_R2' 'FAK_PTPN'
    'pR2_PLCgam_R1_pFAK_PTPN' '->' 'pR2_PLCgam_R1' 'FAK_PTPN'
    'pR2_PLCgam_R2_pFAK_PTPN' '->' 'pR2_PLCgam_R2' 'FAK_PTPN'
    'pR1_FAK_R1_pPLCgam_PTPN' '->' 'pR1_FAK_R1' 'PLCgam_PTPN'
    'pR1_FAK_R2_pPLCgam_PTPN' '->' 'pR1_FAK_R2' 'PLCgam_PTPN'
    'pR2_FAK_R1_pPLCgam_PTPN' '->' 'pR2_FAK_R1' 'PLCgam_PTPN'
    'pR2_FAK_R2_pPLCgam_PTPN' '->' 'pR2_FAK_R2' 'PLCgam_PTPN'
    'pR1_FAK_R1_pFAK_PTPN' '->' 'pR1_FAK_R1' 'FAK_PTPN'
    'pR1_FAK_R2_pFAK_PTPN' '->' 'pR1_FAK_R2' 'FAK_PTPN'
    'pR2_FAK_R1_pFAK_PTPN' '->' 'pR2_FAK_R1' 'FAK_PTPN'
    'pR2_FAK_R2_pFAK_PTPN' '->' 'pR2_FAK_R2' 'FAK_PTPN'
    'pR1_pPLCgam_PTPN_R1_pPLCgam' '->' 'pR1_R1_pPLCgam' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R2_pPLCgam' '->' 'pR1_R2_pPLCgam' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R1_pPLCgam' '->' 'pR2_R1_pPLCgam' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R2_pPLCgam' '->' 'pR2_R2_pPLCgam' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R1_pFAK' '->' 'pR1_R1_pFAK' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R2_pFAK' '->' 'pR1_R2_pFAK' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R1_pFAK' '->' 'pR2_R1_pFAK' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R2_pFAK' '->' 'pR2_R2_pFAK' 'PLCgam_PTPN'
    'pR1_pFAK_PTPN_R1_pPLCgam' '->' 'pR1_R1_pPLCgam' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R2_pPLCgam' '->' 'pR1_R2_pPLCgam' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R1_pPLCgam' '->' 'pR2_R1_pPLCgam' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R2_pPLCgam' '->' 'pR2_R2_pPLCgam' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R1_pFAK' '->' 'pR1_R1_pFAK' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R2_pFAK' '->' 'pR1_R2_pFAK' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R1_pFAK' '->' 'pR2_R1_pFAK' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R2_pFAK' '->' 'pR2_R2_pFAK' 'FAK_PTPN'
    'pR1_pPLCgam_R1_pPLCgam_PTPN' '->' 'pR1_pPLCgam_R1' 'PLCgam_PTPN'
    'pR1_pPLCgam_R2_pPLCgam_PTPN' '->' 'pR1_pPLCgam_R2' 'PLCgam_PTPN'
    'pR2_pPLCgam_R1_pPLCgam_PTPN' '->' 'pR2_pPLCgam_R1' 'PLCgam_PTPN'
    'pR2_pPLCgam_R2_pPLCgam_PTPN' '->' 'pR2_pPLCgam_R2' 'PLCgam_PTPN'
    'pR1_pPLCgam_R1_pFAK_PTPN' '->' 'pR1_pPLCgam_R1' 'FAK_PTPN'
    'pR1_pPLCgam_R2_pFAK_PTPN' '->' 'pR1_pPLCgam_R2' 'FAK_PTPN'
    'pR2_pPLCgam_R1_pFAK_PTPN' '->' 'pR2_pPLCgam_R1' 'FAK_PTPN'
    'pR2_pPLCgam_R2_pFAK_PTPN' '->' 'pR2_pPLCgam_R2' 'FAK_PTPN'
    'pR1_pFAK_R1_pPLCgam_PTPN' '->' 'pR1_pFAK_R1' 'PLCgam_PTPN'
    'pR1_pFAK_R2_pPLCgam_PTPN' '->' 'pR1_pFAK_R2' 'PLCgam_PTPN'
    'pR2_pFAK_R1_pPLCgam_PTPN' '->' 'pR2_pFAK_R1' 'PLCgam_PTPN'
    'pR2_pFAK_R2_pPLCgam_PTPN' '->' 'pR2_pFAK_R2' 'PLCgam_PTPN'
    'pR1_pFAK_R1_pFAK_PTPN' '->' 'pR1_pFAK_R1' 'FAK_PTPN'
    'pR1_pFAK_R2_pFAK_PTPN' '->' 'pR1_pFAK_R2' 'FAK_PTPN'
    'pR2_pFAK_R1_pFAK_PTPN' '->' 'pR2_pFAK_R1' 'FAK_PTPN'
    'pR2_pFAK_R2_pFAK_PTPN' '->' 'pR2_pFAK_R2' 'FAK_PTPN'
    'pR1_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'pR1_R1_pPLCgam_PTPN' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'pR1_R2_pPLCgam_PTPN' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'pR2_R1_pPLCgam_PTPN' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'pR2_R2_pPLCgam_PTPN' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'pR1_R1_pFAK_PTPN' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'pR1_R2_pFAK_PTPN' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'pR2_R1_pFAK_PTPN' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'pR2_R2_pFAK_PTPN' 'PLCgam_PTPN'
    'pR1_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'pR1_R1_pPLCgam_PTPN' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'pR1_R2_pPLCgam_PTPN' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'pR2_R1_pPLCgam_PTPN' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'pR2_R2_pPLCgam_PTPN' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R1_pFAK_PTPN' '->' 'pR1_R1_pFAK_PTPN' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R2_pFAK_PTPN' '->' 'pR1_R2_pFAK_PTPN' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R1_pFAK_PTPN' '->' 'pR2_R1_pFAK_PTPN' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R2_pFAK_PTPN' '->' 'pR2_R2_pFAK_PTPN' 'FAK_PTPN'
    'pR1_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'pR1_pPLCgam_PTPN_R1' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'pR1_pPLCgam_PTPN_R2' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'pR2_pPLCgam_PTPN_R1' 'PLCgam_PTPN'
    'pR2_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'pR2_pPLCgam_PTPN_R2' 'PLCgam_PTPN'
    'pR1_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'pR1_pPLCgam_PTPN_R1' 'FAK_PTPN'
    'pR1_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'pR1_pPLCgam_PTPN_R2' 'FAK_PTPN'
    'pR2_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'pR2_pPLCgam_PTPN_R1' 'FAK_PTPN'
    'pR2_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'pR2_pPLCgam_PTPN_R2' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'pR1_pFAK_PTPN_R1' 'PLCgam_PTPN'
    'pR1_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'pR1_pFAK_PTPN_R2' 'PLCgam_PTPN'
    'pR2_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'pR2_pFAK_PTPN_R1' 'PLCgam_PTPN'
    'pR2_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'pR2_pFAK_PTPN_R2' 'PLCgam_PTPN'
    'pR1_pFAK_PTPN_R1_pFAK_PTPN' '->' 'pR1_pFAK_PTPN_R1' 'FAK_PTPN'
    'pR1_pFAK_PTPN_R2_pFAK_PTPN' '->' 'pR1_pFAK_PTPN_R2' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R1_pFAK_PTPN' '->' 'pR2_pFAK_PTPN_R1' 'FAK_PTPN'
    'pR2_pFAK_PTPN_R2_pFAK_PTPN' '->' 'pR2_pFAK_PTPN_R2' 'FAK_PTPN'
    'PAA_R1_pPLCgam_PTPN_R2' '->' 'PAA_R1_R1' 'PLCgam_PTPN'
    'PAB_R1_pPLCgam_PTPN_R2' '->' 'PAB_R1_R2' 'PLCgam_PTPN'
    'PBB_R1_pPLCgam_PTPN_R2' '->' 'PBB_R1_R2' 'PLCgam_PTPN'
    'PAA_R1_pFAK_PTPN_R2' '->' 'PAA_R1_R2' 'FAK_PTPN'
    'PAB_R1_pFAK_PTPN_R2' '->' 'PAB_R1_R2' 'FAK_PTPN'
    'PBB_R1_pFAK_PTPN_R2' '->' 'PBB_R1_R2' 'FAK_PTPN'
    'PAA_R2_R1_pPLCgam_PTPN' '->' 'PAA_R2_R1' 'PLCgam_PTPN'
    'PAB_R2_R1_pPLCgam_PTPN' '->' 'PAB_R2_R1' 'PLCgam_PTPN'
    'PBB_R2_R1_pPLCgam_PTPN' '->' 'PBB_R2_R1' 'PLCgam_PTPN'
    'PAA_R2_R1_pFAK_PTPN' '->' 'PAA_R2_R1' 'FAK_PTPN'
    'PAB_R2_R1_pFAK_PTPN' '->' 'PAB_R2_R1' 'FAK_PTPN'
    'PBB_R2_R1_pFAK_PTPN' '->' 'PBB_R2_R1' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1' '->' 'V_R1_R1' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2' '->' 'V_R1_R2' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1' '->' 'V_R2_R1' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2' '->' 'V_R2_R2' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1' '->' 'V_R1_R1' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2' '->' 'V_R1_R2' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1' '->' 'V_R2_R1' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2' '->' 'V_R2_R2' 'FAK_PTPN'
    'V_R1_R1_pPLCgam_PTPN' '->' 'V_R1_R1' 'PLCgam_PTPN'
    'V_R1_R2_pPLCgam_PTPN' '->' 'V_R1_R2' 'PLCgam_PTPN'
    'V_R2_R1_pPLCgam_PTPN' '->' 'V_R2_R1' 'PLCgam_PTPN'
    'V_R2_R2_pPLCgam_PTPN' '->' 'V_R2_R2' 'PLCgam_PTPN'
    'V_R1_R1_pFAK_PTPN' '->' 'V_R1_R1' 'FAK_PTPN'
    'V_R1_R2_pFAK_PTPN' '->' 'V_R1_R2' 'FAK_PTPN'
    'V_R2_R1_pFAK_PTPN' '->' 'V_R2_R1' 'FAK_PTPN'
    'V_R2_R2_pFAK_PTPN' '->' 'V_R2_R2' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1_PLCgam' '->' 'V_R1_R1_PLCgam' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_PLCgam' '->' 'V_R1_R2_PLCgam' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_PLCgam' '->' 'V_R2_R1_PLCgam' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_PLCgam' '->' 'V_R2_R2_PLCgam' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R1_FAK' '->' 'V_R1_R1_FAK' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_FAK' '->' 'V_R1_R2_FAK' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_FAK' '->' 'V_R2_R1_FAK' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_FAK' '->' 'V_R2_R2_FAK' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1_PLCgam' '->' 'V_R1_R1_PLCgam' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_PLCgam' '->' 'V_R1_R2_PLCgam' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_PLCgam' '->' 'V_R2_R1_PLCgam' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_PLCgam' '->' 'V_R2_R2_PLCgam' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R1_FAK' '->' 'V_R1_R1_FAK' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_FAK' '->' 'V_R1_R2_FAK' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_FAK' '->' 'V_R2_R1_FAK' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_FAK' '->' 'V_R2_R2_FAK' 'FAK_PTPN'
    'V_R1_PLCgam_R1_pPLCgam_PTPN' '->' 'V_R1_PLCgam_R1' 'PLCgam_PTPN'
    'V_R1_PLCgam_R2_pPLCgam_PTPN' '->' 'V_R1_PLCgam_R2' 'PLCgam_PTPN'
    'V_R2_PLCgam_R1_pPLCgam_PTPN' '->' 'V_R2_PLCgam_R1' 'PLCgam_PTPN'
    'V_R2_PLCgam_R2_pPLCgam_PTPN' '->' 'V_R2_PLCgam_R2' 'PLCgam_PTPN'
    'V_R1_PLCgam_R1_pFAK_PTPN' '->' 'V_R1_PLCgam_R1' 'FAK_PTPN'
    'V_R1_PLCgam_R2_pFAK_PTPN' '->' 'V_R1_PLCgam_R2' 'FAK_PTPN'
    'V_R2_PLCgam_R1_pFAK_PTPN' '->' 'V_R2_PLCgam_R1' 'FAK_PTPN'
    'V_R2_PLCgam_R2_pFAK_PTPN' '->' 'V_R2_PLCgam_R2' 'FAK_PTPN'
    'V_R1_FAK_R1_pPLCgam_PTPN' '->' 'V_R1_FAK_R1' 'PLCgam_PTPN'
    'V_R1_FAK_R2_pPLCgam_PTPN' '->' 'V_R1_FAK_R2' 'PLCgam_PTPN'
    'V_R2_FAK_R1_pPLCgam_PTPN' '->' 'V_R2_FAK_R1' 'PLCgam_PTPN'
    'V_R2_FAK_R2_pPLCgam_PTPN' '->' 'V_R2_FAK_R2' 'PLCgam_PTPN'
    'V_R1_FAK_R1_pFAK_PTPN' '->' 'V_R1_FAK_R1' 'FAK_PTPN'
    'V_R1_FAK_R2_pFAK_PTPN' '->' 'V_R1_FAK_R2' 'FAK_PTPN'
    'V_R2_FAK_R1_pFAK_PTPN' '->' 'V_R2_FAK_R1' 'FAK_PTPN'
    'V_R2_FAK_R2_pFAK_PTPN' '->' 'V_R2_FAK_R2' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pPLCgam' '->' 'V_R1_R1_pPLCgam' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pPLCgam' '->' 'V_R1_R2_pPLCgam' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pPLCgam' '->' 'V_R2_R1_pPLCgam' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pPLCgam' '->' 'V_R2_R2_pPLCgam' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pFAK' '->' 'V_R1_R1_pFAK' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pFAK' '->' 'V_R1_R2_pFAK' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pFAK' '->' 'V_R2_R1_pFAK' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pFAK' '->' 'V_R2_R2_pFAK' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1_pPLCgam' '->' 'V_R1_R1_pPLCgam' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pPLCgam' '->' 'V_R1_R2_pPLCgam' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pPLCgam' '->' 'V_R2_R1_pPLCgam' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pPLCgam' '->' 'V_R2_R2_pPLCgam' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R1_pFAK' '->' 'V_R1_R1_pFAK' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pFAK' '->' 'V_R1_R2_pFAK' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pFAK' '->' 'V_R2_R1_pFAK' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pFAK' '->' 'V_R2_R2_pFAK' 'FAK_PTPN'
    'V_R1_pPLCgam_R1_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_R1' 'PLCgam_PTPN'
    'V_R1_pPLCgam_R2_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_R2' 'PLCgam_PTPN'
    'V_R2_pPLCgam_R1_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_R1' 'PLCgam_PTPN'
    'V_R2_pPLCgam_R2_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_R2' 'PLCgam_PTPN'
    'V_R1_pPLCgam_R1_pFAK_PTPN' '->' 'V_R1_pPLCgam_R1' 'FAK_PTPN'
    'V_R1_pPLCgam_R2_pFAK_PTPN' '->' 'V_R1_pPLCgam_R2' 'FAK_PTPN'
    'V_R2_pPLCgam_R1_pFAK_PTPN' '->' 'V_R2_pPLCgam_R1' 'FAK_PTPN'
    'V_R2_pPLCgam_R2_pFAK_PTPN' '->' 'V_R2_pPLCgam_R2' 'FAK_PTPN'
    'V_R1_pFAK_R1_pPLCgam_PTPN' '->' 'V_R1_pFAK_R1' 'PLCgam_PTPN'
    'V_R1_pFAK_R2_pPLCgam_PTPN' '->' 'V_R1_pFAK_R2' 'PLCgam_PTPN'
    'V_R2_pFAK_R1_pPLCgam_PTPN' '->' 'V_R2_pFAK_R1' 'PLCgam_PTPN'
    'V_R2_pFAK_R2_pPLCgam_PTPN' '->' 'V_R2_pFAK_R2' 'PLCgam_PTPN'
    'V_R1_pFAK_R1_pFAK_PTPN' '->' 'V_R1_pFAK_R1' 'FAK_PTPN'
    'V_R1_pFAK_R2_pFAK_PTPN' '->' 'V_R1_pFAK_R2' 'FAK_PTPN'
    'V_R2_pFAK_R1_pFAK_PTPN' '->' 'V_R2_pFAK_R1' 'FAK_PTPN'
    'V_R2_pFAK_R2_pFAK_PTPN' '->' 'V_R2_pFAK_R2' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'V_R1_R1_pPLCgam_PTPN' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'V_R1_R2_pPLCgam_PTPN' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'V_R2_R1_pPLCgam_PTPN' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'V_R2_R2_pPLCgam_PTPN' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'V_R1_R1_pFAK_PTPN' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'V_R1_R2_pFAK_PTPN' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'V_R2_R1_pFAK_PTPN' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'V_R2_R2_pFAK_PTPN' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'V_R1_R1_pPLCgam_PTPN' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'V_R1_R2_pPLCgam_PTPN' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'V_R2_R1_pPLCgam_PTPN' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'V_R2_R2_pPLCgam_PTPN' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R1_pFAK_PTPN' '->' 'V_R1_R1_pFAK_PTPN' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pFAK_PTPN' '->' 'V_R1_R2_pFAK_PTPN' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pFAK_PTPN' '->' 'V_R2_R1_pFAK_PTPN' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pFAK_PTPN' '->' 'V_R2_R2_pFAK_PTPN' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_PTPN_R1' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_PTPN_R2' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_PTPN_R1' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_PTPN_R2' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'V_R1_pPLCgam_PTPN_R1' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'V_R1_pPLCgam_PTPN_R2' 'FAK_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'V_R2_pPLCgam_PTPN_R1' 'FAK_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'V_R2_pPLCgam_PTPN_R2' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'V_R1_pFAK_PTPN_R1' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'V_R1_pFAK_PTPN_R2' 'PLCgam_PTPN'
    'V_R2_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'V_R2_pFAK_PTPN_R1' 'PLCgam_PTPN'
    'V_R2_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'V_R2_pFAK_PTPN_R2' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1_pFAK_PTPN' '->' 'V_R1_pFAK_PTPN_R1' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pFAK_PTPN' '->' 'V_R1_pFAK_PTPN_R2' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pFAK_PTPN' '->' 'V_R2_pFAK_PTPN_R1' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pFAK_PTPN' '->' 'V_R2_pFAK_PTPN_R2' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1' '->' 'V_R1_R1' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2' '->' 'V_R1_R2' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1' '->' 'V_R2_R1' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2' '->' 'V_R2_R2' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1' '->' 'V_R1_R1' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2' '->' 'V_R1_R2' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1' '->' 'V_R2_R1' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2' '->' 'V_R2_R2' 'FAK_PTPN'
    'V_R1_R1_pPLCgam_PTPN' '->' 'V_R1_R1' 'PLCgam_PTPN'
    'V_R1_R2_pPLCgam_PTPN' '->' 'V_R1_R2' 'PLCgam_PTPN'
    'V_R2_R1_pPLCgam_PTPN' '->' 'V_R2_R1' 'PLCgam_PTPN'
    'V_R2_R2_pPLCgam_PTPN' '->' 'V_R2_R2' 'PLCgam_PTPN'
    'V_R1_R1_pFAK_PTPN' '->' 'V_R1_R1' 'FAK_PTPN'
    'V_R1_R2_pFAK_PTPN' '->' 'V_R1_R2' 'FAK_PTPN'
    'V_R2_R1_pFAK_PTPN' '->' 'V_R2_R1' 'FAK_PTPN'
    'V_R2_R2_pFAK_PTPN' '->' 'V_R2_R2' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1_PLCgam' '->' 'V_R1_R1_PLCgam' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_PLCgam' '->' 'V_R1_R2_PLCgam' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_PLCgam' '->' 'V_R2_R1_PLCgam' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_PLCgam' '->' 'V_R2_R2_PLCgam' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R1_FAK' '->' 'V_R1_R1_FAK' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_FAK' '->' 'V_R1_R2_FAK' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_FAK' '->' 'V_R2_R1_FAK' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_FAK' '->' 'V_R2_R2_FAK' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1_PLCgam' '->' 'V_R1_R1_PLCgam' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_PLCgam' '->' 'V_R1_R2_PLCgam' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_PLCgam' '->' 'V_R2_R1_PLCgam' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_PLCgam' '->' 'V_R2_R2_PLCgam' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R1_FAK' '->' 'V_R1_R1_FAK' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_FAK' '->' 'V_R1_R2_FAK' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_FAK' '->' 'V_R2_R1_FAK' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_FAK' '->' 'V_R2_R2_FAK' 'FAK_PTPN'
    'V_R1_PLCgam_R1_pPLCgam_PTPN' '->' 'V_R1_PLCgam_R1' 'PLCgam_PTPN'
    'V_R1_PLCgam_R2_pPLCgam_PTPN' '->' 'V_R1_PLCgam_R2' 'PLCgam_PTPN'
    'V_R2_PLCgam_R1_pPLCgam_PTPN' '->' 'V_R2_PLCgam_R1' 'PLCgam_PTPN'
    'V_R2_PLCgam_R2_pPLCgam_PTPN' '->' 'V_R2_PLCgam_R2' 'PLCgam_PTPN'
    'V_R1_PLCgam_R1_pFAK_PTPN' '->' 'V_R1_PLCgam_R1' 'FAK_PTPN'
    'V_R1_PLCgam_R2_pFAK_PTPN' '->' 'V_R1_PLCgam_R2' 'FAK_PTPN'
    'V_R2_PLCgam_R1_pFAK_PTPN' '->' 'V_R2_PLCgam_R1' 'FAK_PTPN'
    'V_R2_PLCgam_R2_pFAK_PTPN' '->' 'V_R2_PLCgam_R2' 'FAK_PTPN'
    'V_R1_FAK_R1_pPLCgam_PTPN' '->' 'V_R1_FAK_R1' 'PLCgam_PTPN'
    'V_R1_FAK_R2_pPLCgam_PTPN' '->' 'V_R1_FAK_R2' 'PLCgam_PTPN'
    'V_R2_FAK_R1_pPLCgam_PTPN' '->' 'V_R2_FAK_R1' 'PLCgam_PTPN'
    'V_R2_FAK_R2_pPLCgam_PTPN' '->' 'V_R2_FAK_R2' 'PLCgam_PTPN'
    'V_R1_FAK_R1_pFAK_PTPN' '->' 'V_R1_FAK_R1' 'FAK_PTPN'
    'V_R1_FAK_R2_pFAK_PTPN' '->' 'V_R1_FAK_R2' 'FAK_PTPN'
    'V_R2_FAK_R1_pFAK_PTPN' '->' 'V_R2_FAK_R1' 'FAK_PTPN'
    'V_R2_FAK_R2_pFAK_PTPN' '->' 'V_R2_FAK_R2' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pPLCgam' '->' 'V_R1_R1_pPLCgam' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pPLCgam' '->' 'V_R1_R2_pPLCgam' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pPLCgam' '->' 'V_R2_R1_pPLCgam' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pPLCgam' '->' 'V_R2_R2_pPLCgam' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pFAK' '->' 'V_R1_R1_pFAK' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pFAK' '->' 'V_R1_R2_pFAK' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pFAK' '->' 'V_R2_R1_pFAK' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pFAK' '->' 'V_R2_R2_pFAK' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1_pPLCgam' '->' 'V_R1_R1_pPLCgam' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pPLCgam' '->' 'V_R1_R2_pPLCgam' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pPLCgam' '->' 'V_R2_R1_pPLCgam' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pPLCgam' '->' 'V_R2_R2_pPLCgam' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R1_pFAK' '->' 'V_R1_R1_pFAK' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pFAK' '->' 'V_R1_R2_pFAK' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pFAK' '->' 'V_R2_R1_pFAK' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pFAK' '->' 'V_R2_R2_pFAK' 'FAK_PTPN'
    'V_R1_pPLCgam_R1_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_R1' 'PLCgam_PTPN'
    'V_R1_pPLCgam_R2_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_R2' 'PLCgam_PTPN'
    'V_R2_pPLCgam_R1_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_R1' 'PLCgam_PTPN'
    'V_R2_pPLCgam_R2_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_R2' 'PLCgam_PTPN'
    'V_R1_pPLCgam_R1_pFAK_PTPN' '->' 'V_R1_pPLCgam_R1' 'FAK_PTPN'
    'V_R1_pPLCgam_R2_pFAK_PTPN' '->' 'V_R1_pPLCgam_R2' 'FAK_PTPN'
    'V_R2_pPLCgam_R1_pFAK_PTPN' '->' 'V_R2_pPLCgam_R1' 'FAK_PTPN'
    'V_R2_pPLCgam_R2_pFAK_PTPN' '->' 'V_R2_pPLCgam_R2' 'FAK_PTPN'
    'V_R1_pFAK_R1_pPLCgam_PTPN' '->' 'V_R1_pFAK_R1' 'PLCgam_PTPN'
    'V_R1_pFAK_R2_pPLCgam_PTPN' '->' 'V_R1_pFAK_R2' 'PLCgam_PTPN'
    'V_R2_pFAK_R1_pPLCgam_PTPN' '->' 'V_R2_pFAK_R1' 'PLCgam_PTPN'
    'V_R2_pFAK_R2_pPLCgam_PTPN' '->' 'V_R2_pFAK_R2' 'PLCgam_PTPN'
    'V_R1_pFAK_R1_pFAK_PTPN' '->' 'V_R1_pFAK_R1' 'FAK_PTPN'
    'V_R1_pFAK_R2_pFAK_PTPN' '->' 'V_R1_pFAK_R2' 'FAK_PTPN'
    'V_R2_pFAK_R1_pFAK_PTPN' '->' 'V_R2_pFAK_R1' 'FAK_PTPN'
    'V_R2_pFAK_R2_pFAK_PTPN' '->' 'V_R2_pFAK_R2' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'V_R1_R1_pPLCgam_PTPN' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'V_R1_R2_pPLCgam_PTPN' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'V_R2_R1_pPLCgam_PTPN' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'V_R2_R2_pPLCgam_PTPN' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'V_R1_R1_pFAK_PTPN' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'V_R1_R2_pFAK_PTPN' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'V_R2_R1_pFAK_PTPN' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'V_R2_R2_pFAK_PTPN' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'V_R1_R1_pPLCgam_PTPN' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'V_R1_R2_pPLCgam_PTPN' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'V_R2_R1_pPLCgam_PTPN' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'V_R2_R2_pPLCgam_PTPN' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R1_pFAK_PTPN' '->' 'V_R1_R1_pFAK_PTPN' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pFAK_PTPN' '->' 'V_R1_R2_pFAK_PTPN' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pFAK_PTPN' '->' 'V_R2_R1_pFAK_PTPN' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pFAK_PTPN' '->' 'V_R2_R2_pFAK_PTPN' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_PTPN_R1' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'V_R1_pPLCgam_PTPN_R2' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_PTPN_R1' 'PLCgam_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pPLCgam_PTPN' '->' 'V_R2_pPLCgam_PTPN_R2' 'PLCgam_PTPN'
    'V_R1_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'V_R1_pPLCgam_PTPN_R1' 'FAK_PTPN'
    'V_R1_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'V_R1_pPLCgam_PTPN_R2' 'FAK_PTPN'
    'V_R2_pPLCgam_PTPN_R1_pFAK_PTPN' '->' 'V_R2_pPLCgam_PTPN_R1' 'FAK_PTPN'
    'V_R2_pPLCgam_PTPN_R2_pFAK_PTPN' '->' 'V_R2_pPLCgam_PTPN_R2' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'V_R1_pFAK_PTPN_R1' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'V_R1_pFAK_PTPN_R2' 'PLCgam_PTPN'
    'V_R2_pFAK_PTPN_R1_pPLCgam_PTPN' '->' 'V_R2_pFAK_PTPN_R1' 'PLCgam_PTPN'
    'V_R2_pFAK_PTPN_R2_pPLCgam_PTPN' '->' 'V_R2_pFAK_PTPN_R2' 'PLCgam_PTPN'
    'V_R1_pFAK_PTPN_R1_pFAK_PTPN' '->' 'V_R1_pFAK_PTPN_R1' 'FAK_PTPN'
    'V_R1_pFAK_PTPN_R2_pFAK_PTPN' '->' 'V_R1_pFAK_PTPN_R2' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R1_pFAK_PTPN' '->' 'V_R2_pFAK_PTPN_R1' 'FAK_PTPN'
    'V_R2_pFAK_PTPN_R2_pFAK_PTPN' '->' 'V_R2_pFAK_PTPN_R2' 'FAK_PTPN'
    'PAA_R1_pPLCgam_PTPN_R2' '->' 'PAA_R1_R1' 'PLCgam_PTPN'
    'PAB_R1_pPLCgam_PTPN_R2' '->' 'PAB_R1_R2' 'PLCgam_PTPN'
    'PBB_R1_pPLCgam_PTPN_R2' '->' 'PBB_R1_R2' 'PLCgam_PTPN'
    'PAA_R1_pFAK_PTPN_R2' '->' 'PAA_R1_R2' 'FAK_PTPN'
    'PAB_R1_pFAK_PTPN_R2' '->' 'PAB_R1_R2' 'FAK_PTPN'
    'PBB_R1_pFAK_PTPN_R2' '->' 'PBB_R1_R2' 'FAK_PTPN'
    'PAA_R2_R1_pPLCgam_PTPN' '->' 'PAA_R2_R1' 'PLCgam_PTPN'
    'PAB_R2_R1_pPLCgam_PTPN' '->' 'PAB_R2_R1' 'PLCgam_PTPN'
    'PBB_R2_R1_pPLCgam_PTPN' '->' 'PBB_R2_R1' 'PLCgam_PTPN'
    'PAA_R2_R1_pFAK_PTPN' '->' 'PAA_R2_R1' 'FAK_PTPN'
    'PAB_R2_R1_pFAK_PTPN' '->' 'PAB_R2_R1' 'FAK_PTPN'
    'PBB_R2_R1_pFAK_PTPN' '->' 'PBB_R2_R1' 'FAK_PTPN'
};

irreversible_2_1 = {
    'PAA' 'R1_R2' '->' 'uPAA_R1_R2'
    'PAB' 'R1_R2' '->' 'uPAB_R1_R2'
    'PBB' 'R1_R2' '->' 'uPBB_R1_R2'
    'PAA' 'R2_R1' '->' 'uPAA_R2_R1'
    'PAB' 'R2_R1' '->' 'uPAB_R2_R1'
    'PBB' 'R2_R1' '->' 'uPBB_R2_R1'
    'PAA' 'R2_R2' '->' 'uPAA_R2_R2'
    'PAB' 'R2_R2' '->' 'uPAB_R2_R2'
    'PBB' 'R2_R2' '->' 'uPBB_R2_R2'
    'PAA' 'R1_R2' '->' 'PAA_R1_R2'
    'PAB' 'R1_R2' '->' 'PAB_R1_R2'
    'PBB' 'R1_R2' '->' 'PBB_R1_R2'
    'PAA' 'R2_R1' '->' 'PAA_R2_R1'
    'PAB' 'R2_R1' '->' 'PAB_R2_R1'
    'PBB' 'R2_R1' '->' 'PBB_R2_R1'
    'PAA' 'R2_R2' '->' 'PAA_R2_R2'
    'PAB' 'R2_R2' '->' 'PAB_R2_R2'
    'PBB' 'R2_R2' '->' 'PBB_R2_R2'
};

reversible_2_1 = {
'V' 'R1_R1' '<->' 'V_R1_R1'
'V' 'R1_R2' '<->' 'V_R1_R2'
'V' 'R2_R1' '<->' 'V_R2_R1'
'V' 'R2_R2' '<->' 'V_R2_R2'
'V_R1_R1' 'PLCgam' '<->' 'V_R1_PLCgam_R1'
'V_R1_R2' 'PLCgam' '<->' 'V_R1_PLCgam_R2'
'V_R2_R1' 'PLCgam' '<->' 'V_R2_PLCgam_R1'
'V_R2_R2' 'PLCgam' '<->' 'V_R2_PLCgam_R2'
'V_R1_R1' 'FAK' '<->' 'V_R1_FAK_R1'
'V_R1_R2' 'FAK' '<->' 'V_R1_FAK_R2'
'V_R2_R1' 'FAK' '<->' 'V_R2_FAK_R1'
'V_R2_R2' 'FAK' '<->' 'V_R2_FAK_R2'
'V_R1_R1' 'PLCgam' '<->' 'V_R1_R1_PLCgam'
'V_R1_R2' 'PLCgam' '<->' 'V_R1_R2_PLCgam'
'V_R2_R1' 'PLCgam' '<->' 'V_R2_R1_PLCgam'
'V_R2_R2' 'PLCgam' '<->' 'V_R2_R2_PLCgam'
'V_R1_R1' 'FAK' '<->' 'V_R1_R1_FAK'
'V_R1_R2' 'FAK' '<->' 'V_R1_R2_FAK'
'V_R2_R1' 'FAK' '<->' 'V_R2_R1_FAK'
'V_R2_R2' 'FAK' '<->' 'V_R2_R2_FAK'
'V_R1_PLCgam_R1' 'PLCgam' '<->' 'V_R1_PLCgam_R1_PLCgam'
'V_R1_PLCgam_R2' 'PLCgam' '<->' 'V_R1_PLCgam_R2_PLCgam'
'V_R2_PLCgam_R1' 'PLCgam' '<->' 'V_R2_PLCgam_R1_PLCgam'
'V_R2_PLCgam_R2' 'PLCgam' '<->' 'V_R2_PLCgam_R2_PLCgam'
'V_R1_PLCgam_R1' 'FAK' '<->' 'V_R1_PLCgam_R1_FAK'
'V_R1_PLCgam_R2' 'FAK' '<->' 'V_R1_PLCgam_R2_FAK'
'V_R2_PLCgam_R1' 'FAK' '<->' 'V_R2_PLCgam_R1_FAK'
'V_R2_PLCgam_R2' 'FAK' '<->' 'V_R2_PLCgam_R2_FAK'
'V_R1_FAK_R1' 'PLCgam' '<->' 'V_R1_FAK_R1_PLCgam'
'V_R1_FAK_R2' 'PLCgam' '<->' 'V_R1_FAK_R2_PLCgam'
'V_R2_FAK_R1' 'PLCgam' '<->' 'V_R2_FAK_R1_PLCgam'
'V_R2_FAK_R2' 'PLCgam' '<->' 'V_R2_FAK_R2_PLCgam'
'V_R1_FAK_R1' 'FAK' '<->' 'V_R1_FAK_R1_FAK'
'V_R1_FAK_R2' 'FAK' '<->' 'V_R1_FAK_R2_FAK'
'V_R2_FAK_R1' 'FAK' '<->' 'V_R2_FAK_R1_FAK'
'V_R2_FAK_R2' 'FAK' '<->' 'V_R2_FAK_R2_FAK'
'V_R1_R1_PLCgam' 'PLCgam' '<->' 'V_R1_PLCgam_R1_PLCgam'
'V_R1_R2_PLCgam' 'PLCgam' '<->' 'V_R1_PLCgam_R2_PLCgam'
'V_R2_R1_PLCgam' 'PLCgam' '<->' 'V_R2_PLCgam_R1_PLCgam'
'V_R2_R2_PLCgam' 'PLCgam' '<->' 'V_R2_PLCgam_R2_PLCgam'
'V_R1_R1_PLCgam' 'FAK' '<->' 'V_R1_FAK_R1_PLCgam'
'V_R1_R2_PLCgam' 'FAK' '<->' 'V_R1_FAK_R2_PLCgam'
'V_R2_R1_PLCgam' 'FAK' '<->' 'V_R2_FAK_R1_PLCgam'
'V_R2_R2_PLCgam' 'FAK' '<->' 'V_R2_FAK_R2_PLCgam'
'V_R1_R1_FAK' 'PLCgam' '<->' 'V_R1_PLCgam_R1_FAK'
'V_R1_R2_FAK' 'PLCgam' '<->' 'V_R1_PLCgam_R2_FAK'
'V_R2_R1_FAK' 'PLCgam' '<->' 'V_R2_PLCgam_R1_FAK'
'V_R2_R2_FAK' 'PLCgam' '<->' 'V_R2_PLCgam_R2_FAK'
'V_R1_R1_FAK' 'FAK' '<->' 'V_R1_FAK_R1_FAK'
'V_R1_R2_FAK' 'FAK' '<->' 'V_R1_FAK_R2_FAK'
'V_R2_R1_FAK' 'FAK' '<->' 'V_R2_FAK_R1_FAK'
'V_R2_R2_FAK' 'FAK' '<->' 'V_R2_FAK_R2_FAK'
'V_R1_pPLCgam_R1' 'PLCgam' '<->' 'V_R1_pPLCgam_R1_PLCgam'
'V_R1_pPLCgam_R2' 'PLCgam' '<->' 'V_R1_pPLCgam_R2_PLCgam'
'V_R2_pPLCgam_R1' 'PLCgam' '<->' 'V_R2_pPLCgam_R1_PLCgam'
'V_R2_pPLCgam_R2' 'PLCgam' '<->' 'V_R2_pPLCgam_R2_PLCgam'
'V_R1_pPLCgam_R1' 'FAK' '<->' 'V_R1_pPLCgam_R1_FAK'
'V_R1_pPLCgam_R2' 'FAK' '<->' 'V_R1_pPLCgam_R2_FAK'
'V_R2_pPLCgam_R1' 'FAK' '<->' 'V_R2_pPLCgam_R1_FAK'
'V_R2_pPLCgam_R2' 'FAK' '<->' 'V_R2_pPLCgam_R2_FAK'
'V_R1_pFAK_R1' 'PLCgam' '<->' 'V_R1_pFAK_R1_PLCgam'
'V_R1_pFAK_R2' 'PLCgam' '<->' 'V_R1_pFAK_R2_PLCgam'
'V_R2_pFAK_R1' 'PLCgam' '<->' 'V_R2_pFAK_R1_PLCgam'
'V_R2_pFAK_R2' 'PLCgam' '<->' 'V_R2_pFAK_R2_PLCgam'
'V_R1_pFAK_R1' 'FAK' '<->' 'V_R1_pFAK_R1_FAK'
'V_R1_pFAK_R2' 'FAK' '<->' 'V_R1_pFAK_R2_FAK'
'V_R2_pFAK_R1' 'FAK' '<->' 'V_R2_pFAK_R1_FAK'
'V_R2_pFAK_R2' 'FAK' '<->' 'V_R2_pFAK_R2_FAK'
'V_R1_R1_pPLCgam' 'PLCgam' '<->' 'V_R1_PLCgam_R1_pPLCgam'
'V_R1_R2_pPLCgam' 'PLCgam' '<->' 'V_R1_PLCgam_R2_pPLCgam'
'V_R2_R1_pPLCgam' 'PLCgam' '<->' 'V_R2_PLCgam_R1_pPLCgam'
'V_R2_R2_pPLCgam' 'PLCgam' '<->' 'V_R2_PLCgam_R2_pPLCgam'
'V_R1_R1_pPLCgam' 'FAK' '<->' 'V_R1_FAK_R1_pPLCgam'
'V_R1_R2_pPLCgam' 'FAK' '<->' 'V_R1_FAK_R2_pPLCgam'
'V_R2_R1_pPLCgam' 'FAK' '<->' 'V_R2_FAK_R1_pPLCgam'
'V_R2_R2_pPLCgam' 'FAK' '<->' 'V_R2_FAK_R2_pPLCgam'
'V_R1_R1_pFAK' 'PLCgam' '<->' 'V_R1_PLCgam_R1_pFAK'
'V_R1_R2_pFAK' 'PLCgam' '<->' 'V_R1_PLCgam_R2_pFAK'
'V_R2_R1_pFAK' 'PLCgam' '<->' 'V_R2_PLCgam_R1_pFAK'
'V_R2_R2_pFAK' 'PLCgam' '<->' 'V_R2_PLCgam_R2_pFAK'
'V_R1_R1_pFAK' 'FAK' '<->' 'V_R1_FAK_R1_pFAK'
'V_R1_R2_pFAK' 'FAK' '<->' 'V_R1_FAK_R2_pFAK'
'V_R2_R1_pFAK' 'FAK' '<->' 'V_R2_FAK_R1_pFAK'
'V_R2_R2_pFAK' 'FAK' '<->' 'V_R2_FAK_R2_pFAK'
'V_R1_pPLCgam_PTPN_R1' 'PLCgam' '<->' 'V_R1_pPLCgam_PTPN_R1_PLCgam'
'V_R1_pPLCgam_PTPN_R2' 'PLCgam' '<->' 'V_R1_pPLCgam_PTPN_R2_PLCgam'
'V_R2_pPLCgam_PTPN_R1' 'PLCgam' '<->' 'V_R2_pPLCgam_PTPN_R1_PLCgam'
'V_R2_pPLCgam_PTPN_R2' 'PLCgam' '<->' 'V_R2_pPLCgam_PTPN_R2_PLCgam'
'V_R1_pPLCgam_PTPN_R1' 'FAK' '<->' 'V_R1_pPLCgam_PTPN_R1_FAK'
'V_R1_pPLCgam_PTPN_R2' 'FAK' '<->' 'V_R1_pPLCgam_PTPN_R2_FAK'
'V_R2_pPLCgam_PTPN_R1' 'FAK' '<->' 'V_R2_pPLCgam_PTPN_R1_FAK'
'V_R2_pPLCgam_PTPN_R2' 'FAK' '<->' 'V_R2_pPLCgam_PTPN_R2_FAK'
'V_R1_pFAK_PTPN_R1' 'PLCgam' '<->' 'V_R1_pFAK_PTPN_R1_PLCgam'
'V_R1_pFAK_PTPN_R2' 'PLCgam' '<->' 'V_R1_pFAK_PTPN_R2_PLCgam'
'V_R2_pFAK_PTPN_R1' 'PLCgam' '<->' 'V_R2_pFAK_PTPN_R1_PLCgam'
'V_R2_pFAK_PTPN_R2' 'PLCgam' '<->' 'V_R2_pFAK_PTPN_R2_PLCgam'
'V_R1_pFAK_PTPN_R1' 'FAK' '<->' 'V_R1_pFAK_PTPN_R1_FAK'
'V_R1_pFAK_PTPN_R2' 'FAK' '<->' 'V_R1_pFAK_PTPN_R2_FAK'
'V_R2_pFAK_PTPN_R1' 'FAK' '<->' 'V_R2_pFAK_PTPN_R1_FAK'
'V_R2_pFAK_PTPN_R2' 'FAK' '<->' 'V_R2_pFAK_PTPN_R2_FAK'
'V_R1_R1_pPLCgam_PTPN' 'PLCgam' '<->' 'V_R1_PLCgam_R1_pPLCgam_PTPN'
'V_R1_R2_pPLCgam_PTPN' 'PLCgam' '<->' 'V_R1_PLCgam_R2_pPLCgam_PTPN'
'V_R2_R1_pPLCgam_PTPN' 'PLCgam' '<->' 'V_R2_PLCgam_R1_pPLCgam_PTPN'
'V_R2_R2_pPLCgam_PTPN' 'PLCgam' '<->' 'V_R2_PLCgam_R2_pPLCgam_PTPN'
'V_R1_R1_pPLCgam_PTPN' 'FAK' '<->' 'V_R1_FAK_R1_pPLCgam_PTPN'
'V_R1_R2_pPLCgam_PTPN' 'FAK' '<->' 'V_R1_FAK_R2_pPLCgam_PTPN'
'V_R2_R1_pPLCgam_PTPN' 'FAK' '<->' 'V_R2_FAK_R1_pPLCgam_PTPN'
'V_R2_R2_pPLCgam_PTPN' 'FAK' '<->' 'V_R2_FAK_R2_pPLCgam_PTPN'
'V_R1_R1_pFAK_PTPN' 'PLCgam' '<->' 'V_R1_PLCgam_R1_pFAK_PTPN'
'V_R1_R2_pFAK_PTPN' 'PLCgam' '<->' 'V_R1_PLCgam_R2_pFAK_PTPN'
'V_R2_R1_pFAK_PTPN' 'PLCgam' '<->' 'V_R2_PLCgam_R1_pFAK_PTPN'
'V_R2_R2_pFAK_PTPN' 'PLCgam' '<->' 'V_R2_PLCgam_R2_pFAK_PTPN'
'V_R1_R1_pFAK_PTPN' 'FAK' '<->' 'V_R1_FAK_R1_pFAK_PTPN'
'V_R1_R2_pFAK_PTPN' 'FAK' '<->' 'V_R1_FAK_R2_pFAK_PTPN'
'V_R2_R1_pFAK_PTPN' 'FAK' '<->' 'V_R2_FAK_R1_pFAK_PTPN'
'V_R2_R2_pFAK_PTPN' 'FAK' '<->' 'V_R2_FAK_R2_pFAK_PTPN'
'V_R1_pPLCgam_R1' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1'
'V_R1_pPLCgam_R2' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2'
'V_R2_pPLCgam_R1' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1'
'V_R2_pPLCgam_R2' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2'
'V_R1_pFAK_R1' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1'
'V_R1_pFAK_R2' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2'
'V_R2_pFAK_R1' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1'
'V_R2_pFAK_R2' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2'
'V_R1_R1_pPLCgam' 'PTPN' '<->' 'V_R1_R1_pPLCgam_PTPN'
'V_R1_R2_pPLCgam' 'PTPN' '<->' 'V_R1_R2_pPLCgam_PTPN'
'V_R2_R1_pPLCgam' 'PTPN' '<->' 'V_R2_R1_pPLCgam_PTPN'
'V_R2_R2_pPLCgam' 'PTPN' '<->' 'V_R2_R2_pPLCgam_PTPN'
'V_R1_R1_pFAK' 'PTPN' '<->' 'V_R1_R1_pFAK_PTPN'
'V_R1_R2_pFAK' 'PTPN' '<->' 'V_R1_R2_pFAK_PTPN'
'V_R2_R1_pFAK' 'PTPN' '<->' 'V_R2_R1_pFAK_PTPN'
'V_R2_R2_pFAK' 'PTPN' '<->' 'V_R2_R2_pFAK_PTPN'
'V_R1_pPLCgam_R1_PLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_PLCgam'
'V_R1_pPLCgam_R2_PLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_PLCgam'
'V_R2_pPLCgam_R1_PLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_PLCgam'
'V_R2_pPLCgam_R2_PLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_PLCgam'
'V_R1_pPLCgam_R1_FAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_FAK'
'V_R1_pPLCgam_R2_FAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_FAK'
'V_R2_pPLCgam_R1_FAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_FAK'
'V_R2_pPLCgam_R2_FAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_FAK'
'V_R1_pFAK_R1_PLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_PLCgam'
'V_R1_pFAK_R2_PLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_PLCgam'
'V_R2_pFAK_R1_PLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_PLCgam'
'V_R2_pFAK_R2_PLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_PLCgam'
'V_R1_pFAK_R1_FAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_FAK'
'V_R1_pFAK_R2_FAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_FAK'
'V_R2_pFAK_R1_FAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_FAK'
'V_R2_pFAK_R2_FAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_FAK'
'V_R1_PLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R1_PLCgam_R1_pPLCgam_PTPN'
'V_R1_PLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R1_PLCgam_R2_pPLCgam_PTPN'
'V_R2_PLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R2_PLCgam_R1_pPLCgam_PTPN'
'V_R2_PLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R2_PLCgam_R2_pPLCgam_PTPN'
'V_R1_PLCgam_R1_pFAK' 'PTPN' '<->' 'V_R1_PLCgam_R1_pFAK_PTPN'
'V_R1_PLCgam_R2_pFAK' 'PTPN' '<->' 'V_R1_PLCgam_R2_pFAK_PTPN'
'V_R2_PLCgam_R1_pFAK' 'PTPN' '<->' 'V_R2_PLCgam_R1_pFAK_PTPN'
'V_R2_PLCgam_R2_pFAK' 'PTPN' '<->' 'V_R2_PLCgam_R2_pFAK_PTPN'
'V_R1_FAK_R1_pPLCgam' 'PTPN' '<->' 'V_R1_FAK_R1_pPLCgam_PTPN'
'V_R1_FAK_R2_pPLCgam' 'PTPN' '<->' 'V_R1_FAK_R2_pPLCgam_PTPN'
'V_R2_FAK_R1_pPLCgam' 'PTPN' '<->' 'V_R2_FAK_R1_pPLCgam_PTPN'
'V_R2_FAK_R2_pPLCgam' 'PTPN' '<->' 'V_R2_FAK_R2_pPLCgam_PTPN'
'V_R1_FAK_R1_pFAK' 'PTPN' '<->' 'V_R1_FAK_R1_pFAK_PTPN'
'V_R1_FAK_R2_pFAK' 'PTPN' '<->' 'V_R1_FAK_R2_pFAK_PTPN'
'V_R2_FAK_R1_pFAK' 'PTPN' '<->' 'V_R2_FAK_R1_pFAK_PTPN'
'V_R2_FAK_R2_pFAK' 'PTPN' '<->' 'V_R2_FAK_R2_pFAK_PTPN'
'V_R1_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pPLCgam'
'V_R1_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pPLCgam'
'V_R2_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pPLCgam'
'V_R2_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pPLCgam'
'V_R1_pPLCgam_R1_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pFAK'
'V_R1_pPLCgam_R2_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pFAK'
'V_R2_pPLCgam_R1_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pFAK'
'V_R2_pPLCgam_R2_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pFAk'
'V_R1_pFAK_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pPLCgam'
'V_R1_pFAK_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pPLCgam'
'V_R2_pFAK_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pPLCgam'
'V_R2_pFAK_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pPLCgam'
'V_R1_pFAK_R1_pFAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pFAK'
'V_R1_pFAK_R2_pFAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pFAK'
'V_R2_pFAK_R1_pFAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pFAK'
'V_R2_pFAK_R2_pFAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pFAK'
'V_R1_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_R1_pPLCgam_PTPN'
'V_R1_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_R2_pPLCgam_PTPN'
'V_R2_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_R1_pPLCgam_PTPN'
'V_R2_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_R2_pPLCgam_PTPN'
'V_R1_pPLCgam_R1_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_R1_pFAK_PTPN'
'V_R1_pPLCgam_R2_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_R2_pFAK_PTPN'
'V_R2_pPLCgam_R1_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_R1_pFAK_PTPN'
'V_R2_pPLCgam_R2_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_R2_pFAK_PTPN'
'V_R1_pFAK_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_R1_pPLCgam_PTPN'
'V_R1_pFAK_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_R2_pPLCgam_PTPN'
'V_R2_pFAK_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_R1_pPLCgam_PTPN'
'V_R2_pFAK_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_R2_pPLCgam_PTPN'
'V_R1_pFAK_R1_pFAK' 'PTPN' '<->' 'V_R1_pFAK_R1_pFAK_PTPN'
'V_R1_pFAK_R2_pFAK' 'PTPN' '<->' 'V_R1_pFAK_R2_pFAK_PTPN'
'V_R2_pFAK_R1_pFAK' 'PTPN' '<->' 'V_R2_pFAK_R1_pFAK_PTPN'
'V_R2_pFAK_R2_pFAK' 'PTPN' '<->' 'V_R2_pFAK_R2_pFAK_PTPN'
'V_R1_pPLCgam_PTPN_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'V_R1_pPLCgam_PTPN_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'V_R2_pPLCgam_PTPN_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'V_R2_pPLCgam_PTPN_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'V_R1_pPLCgam_PTPN_R1_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pFAK_PTPN'
'V_R1_pPLCgam_PTPN_R2_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pFAK_PTPN'
'V_R2_pPLCgam_PTPN_R1_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pFAK_PTPN'
'V_R2_pPLCgam_PTPN_R2_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pFAK_PTPN'
'V_R1_pFAK_PTPN_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pPLCgam_PTPN'
'V_R1_pFAK_PTPN_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pPLCgam_PTPN'
'V_R2_pFAK_PTPN_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pPLCgam_PTPN'
'V_R2_pFAK_PTPN_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pPLCgam_PTPN'
'V_R1_pFAK_PTPN_R1_pFAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pFAK_PTPN'
'V_R1_pFAK_PTPN_R2_pFAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pFAK_PTPN'
'V_R2_pFAK_PTPN_R1_pFAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pFAK_PTPN'
'V_R2_pFAK_PTPN_R2_pFAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pFAK_PTPN'
'V_R1_pPLCgam_R1_pPLCgam_PTPN' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'V_R1_pPLCgam_R2_pPLCgam_PTPN' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'V_R2_pPLCgam_R1_pPLCgam_PTPN' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'V_R2_pPLCgam_R2_pPLCgam_PTPN' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'V_R1_pPLCgam_R1_pFAK_PTPN' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pFAK_PTPN'
'V_R1_pPLCgam_R2_pFAK_PTPN' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pFAK_PTPN'
'V_R2_pPLCgam_R1_pFAK_PTPN' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pFAK_PTPN'
'V_R2_pPLCgam_R2_pFAK_PTPN' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pFAK_PTPN'
'V_R1_pFAK_R1_pPLCgam_PTPN' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pPLCgam_PTPN'
'V_R1_pFAK_R2_pPLCgam_PTPN' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pPLCgam_PTPN'
'V_R2_pFAK_R1_pPLCgam_PTPN' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pPLCgam_PTPN'
'V_R2_pFAK_R2_pPLCgam_PTPN' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pPLCgam_PTPN'
'V_R1_pFAK_R1_pFAK_PTPN' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pFAK_PTPN'
'V_R1_pFAK_R2_pFAK_PTPN' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pFAK_PTPN'
'V_R2_pFAK_R1_pFAK_PTPN' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pFAK_PTPN'
'V_R2_pFAK_R2_pFAK_PTPN' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pFAK_PTPN'
'V' 'R1_R1' '<->' 'uV_R1_R1'
'V' 'R1_R2' '<->' 'uV_R1_R2'
'V' 'R2_R1' '<->' 'uV_R2_R1'
'V' 'R2_R2' '<->' 'uV_R2_R2'
'V_R1_R1' 'PLCgam' '<->' 'V_R1_PLCgam_R1'
'V_R1_R2' 'PLCgam' '<->' 'V_R1_PLCgam_R2'
'V_R2_R1' 'PLCgam' '<->' 'V_R2_PLCgam_R1'
'V_R2_R2' 'PLCgam' '<->' 'V_R2_PLCgam_R2'
'V_R1_R1' 'FAK' '<->' 'V_R1_FAK_R1'
'V_R1_R2' 'FAK' '<->' 'V_R1_FAK_R2'
'V_R2_R1' 'FAK' '<->' 'V_R2_FAK_R1'
'V_R2_R2' 'FAK' '<->' 'V_R2_FAK_R2'
'V_R1_R1' 'PLCgam' '<->' 'V_R1_R1_PLCgam'
'V_R1_R2' 'PLCgam' '<->' 'V_R1_R2_PLCgam'
'V_R2_R1' 'PLCgam' '<->' 'V_R2_R1_PLCgam'
'V_R2_R2' 'PLCgam' '<->' 'V_R2_R2_PLCgam'
'V_R1_R1' 'FAK' '<->' 'V_R1_R1_FAK'
'V_R1_R2' 'FAK' '<->' 'V_R1_R2_FAK'
'V_R2_R1' 'FAK' '<->' 'V_R2_R1_FAK'
'V_R2_R2' 'FAK' '<->' 'V_R2_R2_FAK'
'V_R1_PLCgam_R1' 'PLCgam' '<->' 'V_R1_PLCgam_R1_PLCgam'
'V_R1_PLCgam_R2' 'PLCgam' '<->' 'V_R1_PLCgam_R2_PLCgam'
'V_R2_PLCgam_R1' 'PLCgam' '<->' 'V_R2_PLCgam_R1_PLCgam'
'V_R2_PLCgam_R2' 'PLCgam' '<->' 'V_R2_PLCgam_R2_PLCgam'
'V_R1_PLCgam_R1' 'FAK' '<->' 'V_R1_PLCgam_R1_FAK'
'V_R1_PLCgam_R2' 'FAK' '<->' 'V_R1_PLCgam_R2_FAK'
'V_R2_PLCgam_R1' 'FAK' '<->' 'V_R2_PLCgam_R1_FAK'
'V_R2_PLCgam_R2' 'FAK' '<->' 'V_R2_PLCgam_R2_FAK'
'V_R1_FAK_R1' 'PLCgam' '<->' 'V_R1_FAK_R1_PLCgam'
'V_R1_FAK_R2' 'PLCgam' '<->' 'V_R1_FAK_R2_PLCgam'
'V_R2_FAK_R1' 'PLCgam' '<->' 'V_R2_FAK_R1_PLCgam'
'V_R2_FAK_R2' 'PLCgam' '<->' 'V_R2_FAK_R2_PLCgam'
'V_R1_FAK_R1' 'FAK' '<->' 'V_R1_FAK_R1_FAK'
'V_R1_FAK_R2' 'FAK' '<->' 'V_R1_FAK_R2_FAK'
'V_R2_FAK_R1' 'FAK' '<->' 'V_R2_FAK_R1_FAK'
'V_R2_FAK_R2' 'FAK' '<->' 'V_R2_FAK_R2_FAK'
'V_R1_R1_PLCgam' 'PLCgam' '<->' 'V_R1_PLCgam_R1_PLCgam'
'V_R1_R2_PLCgam' 'PLCgam' '<->' 'V_R1_PLCgam_R2_PLCgam'
'V_R2_R1_PLCgam' 'PLCgam' '<->' 'V_R2_PLCgam_R1_PLCgam'
'V_R2_R2_PLCgam' 'PLCgam' '<->' 'V_R2_PLCgam_R2_PLCgam'
'V_R1_R1_PLCgam' 'FAK' '<->' 'V_R1_FAK_R1_PLCgam'
'V_R1_R2_PLCgam' 'FAK' '<->' 'V_R1_FAK_R2_PLCgam'
'V_R2_R1_PLCgam' 'FAK' '<->' 'V_R2_FAK_R1_PLCgam'
'V_R2_R2_PLCgam' 'FAK' '<->' 'V_R2_FAK_R2_PLCgam'
'V_R1_R1_FAK' 'PLCgam' '<->' 'V_R1_PLCgam_R1_FAK'
'V_R1_R2_FAK' 'PLCgam' '<->' 'V_R1_PLCgam_R2_FAK'
'V_R2_R1_FAK' 'PLCgam' '<->' 'V_R2_PLCgam_R1_FAK'
'V_R2_R2_FAK' 'PLCgam' '<->' 'V_R2_PLCgam_R2_FAK'
'V_R1_R1_FAK' 'FAK' '<->' 'V_R1_FAK_R1_FAK'
'V_R1_R2_FAK' 'FAK' '<->' 'V_R1_FAK_R2_FAK'
'V_R2_R1_FAK' 'FAK' '<->' 'V_R2_FAK_R1_FAK'
'V_R2_R2_FAK' 'FAK' '<->' 'V_R2_FAK_R2_FAK'
'V_R1_pPLCgam_R1' 'PLCgam' '<->' 'V_R1_pPLCgam_R1_PLCgam'
'V_R1_pPLCgam_R2' 'PLCgam' '<->' 'V_R1_pPLCgam_R2_PLCgam'
'V_R2_pPLCgam_R1' 'PLCgam' '<->' 'V_R2_pPLCgam_R1_PLCgam'
'V_R2_pPLCgam_R2' 'PLCgam' '<->' 'V_R2_pPLCgam_R2_PLCgam'
'V_R1_pPLCgam_R1' 'FAK' '<->' 'V_R1_pPLCgam_R1_FAK'
'V_R1_pPLCgam_R2' 'FAK' '<->' 'V_R1_pPLCgam_R2_FAK'
'V_R2_pPLCgam_R1' 'FAK' '<->' 'V_R2_pPLCgam_R1_FAK'
'V_R2_pPLCgam_R2' 'FAK' '<->' 'V_R2_pPLCgam_R2_FAK'
'V_R1_pFAK_R1' 'PLCgam' '<->' 'V_R1_pFAK_R1_PLCgam'
'V_R1_pFAK_R2' 'PLCgam' '<->' 'V_R1_pFAK_R2_PLCgam'
'V_R2_pFAK_R1' 'PLCgam' '<->' 'V_R2_pFAK_R1_PLCgam'
'V_R2_pFAK_R2' 'PLCgam' '<->' 'V_R2_pFAK_R2_PLCgam'
'V_R1_pFAK_R1' 'FAK' '<->' 'V_R1_pFAK_R1_FAK'
'V_R1_pFAK_R2' 'FAK' '<->' 'V_R1_pFAK_R2_FAK'
'V_R2_pFAK_R1' 'FAK' '<->' 'V_R2_pFAK_R1_FAK'
'V_R2_pFAK_R2' 'FAK' '<->' 'V_R2_pFAK_R2_FAK'
'V_R1_R1_pPLCgam' 'PLCgam' '<->' 'V_R1_PLCgam_R1_pPLCgam'
'V_R1_R2_pPLCgam' 'PLCgam' '<->' 'V_R1_PLCgam_R2_pPLCgam'
'V_R2_R1_pPLCgam' 'PLCgam' '<->' 'V_R2_PLCgam_R1_pPLCgam'
'V_R2_R2_pPLCgam' 'PLCgam' '<->' 'V_R2_PLCgam_R2_pPLCgam'
'V_R1_R1_pPLCgam' 'FAK' '<->' 'V_R1_FAK_R1_pPLCgam'
'V_R1_R2_pPLCgam' 'FAK' '<->' 'V_R1_FAK_R2_pPLCgam'
'V_R2_R1_pPLCgam' 'FAK' '<->' 'V_R2_FAK_R1_pPLCgam'
'V_R2_R2_pPLCgam' 'FAK' '<->' 'V_R2_FAK_R2_pPLCgam'
'V_R1_R1_pFAK' 'PLCgam' '<->' 'V_R1_PLCgam_R1_pFAK'
'V_R1_R2_pFAK' 'PLCgam' '<->' 'V_R1_PLCgam_R2_pFAK'
'V_R2_R1_pFAK' 'PLCgam' '<->' 'V_R2_PLCgam_R1_pFAK'
'V_R2_R2_pFAK' 'PLCgam' '<->' 'V_R2_PLCgam_R2_pFAK'
'V_R1_R1_pFAK' 'FAK' '<->' 'V_R1_FAK_R1_pFAK'
'V_R1_R2_pFAK' 'FAK' '<->' 'V_R1_FAK_R2_pFAK'
'V_R2_R1_pFAK' 'FAK' '<->' 'V_R2_FAK_R1_pFAK'
'V_R2_R2_pFAK' 'FAK' '<->' 'V_R2_FAK_R2_pFAK'
'V_R1_pPLCgam_PTPN_R1' 'PLCgam' '<->' 'V_R1_pPLCgam_PTPN_R1_PLCgam'
'V_R1_pPLCgam_PTPN_R2' 'PLCgam' '<->' 'V_R1_pPLCgam_PTPN_R2_PLCgam'
'V_R2_pPLCgam_PTPN_R1' 'PLCgam' '<->' 'V_R2_pPLCgam_PTPN_R1_PLCgam'
'V_R2_pPLCgam_PTPN_R2' 'PLCgam' '<->' 'V_R2_pPLCgam_PTPN_R2_PLCgam'
'V_R1_pPLCgam_PTPN_R1' 'FAK' '<->' 'V_R1_pPLCgam_PTPN_R1_FAK'
'V_R1_pPLCgam_PTPN_R2' 'FAK' '<->' 'V_R1_pPLCgam_PTPN_R2_FAK'
'V_R2_pPLCgam_PTPN_R1' 'FAK' '<->' 'V_R2_pPLCgam_PTPN_R1_FAK'
'V_R2_pPLCgam_PTPN_R2' 'FAK' '<->' 'V_R2_pPLCgam_PTPN_R2_FAK'
'V_R1_pFAK_PTPN_R1' 'PLCgam' '<->' 'V_R1_pFAK_PTPN_R1_PLCgam'
'V_R1_pFAK_PTPN_R2' 'PLCgam' '<->' 'V_R1_pFAK_PTPN_R2_PLCgam'
'V_R2_pFAK_PTPN_R1' 'PLCgam' '<->' 'V_R2_pFAK_PTPN_R1_PLCgam'
'V_R2_pFAK_PTPN_R2' 'PLCgam' '<->' 'V_R2_pFAK_PTPN_R2_PLCgam'
'V_R1_pFAK_PTPN_R1' 'FAK' '<->' 'V_R1_pFAK_PTPN_R1_FAK'
'V_R1_pFAK_PTPN_R2' 'FAK' '<->' 'V_R1_pFAK_PTPN_R2_FAK'
'V_R2_pFAK_PTPN_R1' 'FAK' '<->' 'V_R2_pFAK_PTPN_R1_FAK'
'V_R2_pFAK_PTPN_R2' 'FAK' '<->' 'V_R2_pFAK_PTPN_R2_FAK'
'V_R1_R1_pPLCgam_PTPN' 'PLCgam' '<->' 'V_R1_PLCgam_R1_pPLCgam_PTPN'
'V_R1_R2_pPLCgam_PTPN' 'PLCgam' '<->' 'V_R1_PLCgam_R2_pPLCgam_PTPN'
'V_R2_R1_pPLCgam_PTPN' 'PLCgam' '<->' 'V_R2_PLCgam_R1_pPLCgam_PTPN'
'V_R2_R2_pPLCgam_PTPN' 'PLCgam' '<->' 'V_R2_PLCgam_R2_pPLCgam_PTPN'
'V_R1_R1_pPLCgam_PTPN' 'FAK' '<->' 'V_R1_FAK_R1_pPLCgam_PTPN'
'V_R1_R2_pPLCgam_PTPN' 'FAK' '<->' 'V_R1_FAK_R2_pPLCgam_PTPN'
'V_R2_R1_pPLCgam_PTPN' 'FAK' '<->' 'V_R2_FAK_R1_pPLCgam_PTPN'
'V_R2_R2_pPLCgam_PTPN' 'FAK' '<->' 'V_R2_FAK_R2_pPLCgam_PTPN'
'V_R1_R1_pFAK_PTPN' 'PLCgam' '<->' 'V_R1_PLCgam_R1_pFAK_PTPN'
'V_R1_R2_pFAK_PTPN' 'PLCgam' '<->' 'V_R1_PLCgam_R2_pFAK_PTPN'
'V_R2_R1_pFAK_PTPN' 'PLCgam' '<->' 'V_R2_PLCgam_R1_pFAK_PTPN'
'V_R2_R2_pFAK_PTPN' 'PLCgam' '<->' 'V_R2_PLCgam_R2_pFAK_PTPN'
'V_R1_R1_pFAK_PTPN' 'FAK' '<->' 'V_R1_FAK_R1_pFAK_PTPN'
'V_R1_R2_pFAK_PTPN' 'FAK' '<->' 'V_R1_FAK_R2_pFAK_PTPN'
'V_R2_R1_pFAK_PTPN' 'FAK' '<->' 'V_R2_FAK_R1_pFAK_PTPN'
'V_R2_R2_pFAK_PTPN' 'FAK' '<->' 'V_R2_FAK_R2_pFAK_PTPN'
'V_R1_pPLCgam_R1' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1'
'V_R1_pPLCgam_R2' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2'
'V_R2_pPLCgam_R1' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1'
'V_R2_pPLCgam_R2' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2'
'V_R1_pFAK_R1' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1'
'V_R1_pFAK_R2' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2'
'V_R2_pFAK_R1' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1'
'V_R2_pFAK_R2' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2'
'V_R1_R1_pPLCgam' 'PTPN' '<->' 'V_R1_R1_pPLCgam_PTPN'
'V_R1_R2_pPLCgam' 'PTPN' '<->' 'V_R1_R2_pPLCgam_PTPN'
'V_R2_R1_pPLCgam' 'PTPN' '<->' 'V_R2_R1_pPLCgam_PTPN'
'V_R2_R2_pPLCgam' 'PTPN' '<->' 'V_R2_R2_pPLCgam_PTPN'
'V_R1_R1_pFAK' 'PTPN' '<->' 'V_R1_R1_pFAK_PTPN'
'V_R1_R2_pFAK' 'PTPN' '<->' 'V_R1_R2_pFAK_PTPN'
'V_R2_R1_pFAK' 'PTPN' '<->' 'V_R2_R1_pFAK_PTPN'
'V_R2_R2_pFAK' 'PTPN' '<->' 'V_R2_R2_pFAK_PTPN'
'V_R1_pPLCgam_R1_PLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_PLCgam'
'V_R1_pPLCgam_R2_PLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_PLCgam'
'V_R2_pPLCgam_R1_PLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_PLCgam'
'V_R2_pPLCgam_R2_PLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_PLCgam'
'V_R1_pPLCgam_R1_FAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_FAK'
'V_R1_pPLCgam_R2_FAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_FAK'
'V_R2_pPLCgam_R1_FAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_FAK'
'V_R2_pPLCgam_R2_FAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_FAK'
'V_R1_pFAK_R1_PLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_PLCgam'
'V_R1_pFAK_R2_PLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_PLCgam'
'V_R2_pFAK_R1_PLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_PLCgam'
'V_R2_pFAK_R2_PLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_PLCgam'
'V_R1_pFAK_R1_FAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_FAK'
'V_R1_pFAK_R2_FAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_FAK'
'V_R2_pFAK_R1_FAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_FAK'
'V_R2_pFAK_R2_FAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_FAK'
'V_R1_PLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R1_PLCgam_R1_pPLCgam_PTPN'
'V_R1_PLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R1_PLCgam_R2_pPLCgam_PTPN'
'V_R2_PLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R2_PLCgam_R1_pPLCgam_PTPN'
'V_R2_PLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R2_PLCgam_R2_pPLCgam_PTPN'
'V_R1_PLCgam_R1_pFAK' 'PTPN' '<->' 'V_R1_PLCgam_R1_pFAK_PTPN'
'V_R1_PLCgam_R2_pFAK' 'PTPN' '<->' 'V_R1_PLCgam_R2_pFAK_PTPN'
'V_R2_PLCgam_R1_pFAK' 'PTPN' '<->' 'V_R2_PLCgam_R1_pFAK_PTPN'
'V_R2_PLCgam_R2_pFAK' 'PTPN' '<->' 'V_R2_PLCgam_R2_pFAK_PTPN'
'V_R1_FAK_R1_pPLCgam' 'PTPN' '<->' 'V_R1_FAK_R1_pPLCgam_PTPN'
'V_R1_FAK_R2_pPLCgam' 'PTPN' '<->' 'V_R1_FAK_R2_pPLCgam_PTPN'
'V_R2_FAK_R1_pPLCgam' 'PTPN' '<->' 'V_R2_FAK_R1_pPLCgam_PTPN'
'V_R2_FAK_R2_pPLCgam' 'PTPN' '<->' 'V_R2_FAK_R2_pPLCgam_PTPN'
'V_R1_FAK_R1_pFAK' 'PTPN' '<->' 'V_R1_FAK_R1_pFAK_PTPN'
'V_R1_FAK_R2_pFAK' 'PTPN' '<->' 'V_R1_FAK_R2_pFAK_PTPN'
'V_R2_FAK_R1_pFAK' 'PTPN' '<->' 'V_R2_FAK_R1_pFAK_PTPN'
'V_R2_FAK_R2_pFAK' 'PTPN' '<->' 'V_R2_FAK_R2_pFAK_PTPN'
'V_R1_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pPLCgam'
'V_R1_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pPLCgam'
'V_R2_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pPLCgam'
'V_R2_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pPLCgam'
'V_R1_pPLCgam_R1_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pFAK'
'V_R1_pPLCgam_R2_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pFAK'
'V_R2_pPLCgam_R1_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pFAK'
'V_R2_pPLCgam_R2_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pFAk'
'V_R1_pFAK_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pPLCgam'
'V_R1_pFAK_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pPLCgam'
'V_R2_pFAK_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pPLCgam'
'V_R2_pFAK_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pPLCgam'
'V_R1_pFAK_R1_pFAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pFAK'
'V_R1_pFAK_R2_pFAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pFAK'
'V_R2_pFAK_R1_pFAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pFAK'
'V_R2_pFAK_R2_pFAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pFAK'
'V_R1_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_R1_pPLCgam_PTPN'
'V_R1_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_R2_pPLCgam_PTPN'
'V_R2_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_R1_pPLCgam_PTPN'
'V_R2_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_R2_pPLCgam_PTPN'
'V_R1_pPLCgam_R1_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_R1_pFAK_PTPN'
'V_R1_pPLCgam_R2_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_R2_pFAK_PTPN'
'V_R2_pPLCgam_R1_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_R1_pFAK_PTPN'
'V_R2_pPLCgam_R2_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_R2_pFAK_PTPN'
'V_R1_pFAK_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_R1_pPLCgam_PTPN'
'V_R1_pFAK_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_R2_pPLCgam_PTPN'
'V_R2_pFAK_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_R1_pPLCgam_PTPN'
'V_R2_pFAK_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_R2_pPLCgam_PTPN'
'V_R1_pFAK_R1_pFAK' 'PTPN' '<->' 'V_R1_pFAK_R1_pFAK_PTPN'
'V_R1_pFAK_R2_pFAK' 'PTPN' '<->' 'V_R1_pFAK_R2_pFAK_PTPN'
'V_R2_pFAK_R1_pFAK' 'PTPN' '<->' 'V_R2_pFAK_R1_pFAK_PTPN'
'V_R2_pFAK_R2_pFAK' 'PTPN' '<->' 'V_R2_pFAK_R2_pFAK_PTPN'
'V_R1_pPLCgam_PTPN_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'V_R1_pPLCgam_PTPN_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'V_R2_pPLCgam_PTPN_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'V_R2_pPLCgam_PTPN_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'V_R1_pPLCgam_PTPN_R1_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pFAK_PTPN'
'V_R1_pPLCgam_PTPN_R2_pFAK' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pFAK_PTPN'
'V_R2_pPLCgam_PTPN_R1_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pFAK_PTPN'
'V_R2_pPLCgam_PTPN_R2_pFAK' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pFAK_PTPN'
'V_R1_pFAK_PTPN_R1_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pPLCgam_PTPN'
'V_R1_pFAK_PTPN_R2_pPLCgam' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pPLCgam_PTPN'
'V_R2_pFAK_PTPN_R1_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pPLCgam_PTPN'
'V_R2_pFAK_PTPN_R2_pPLCgam' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pPLCgam_PTPN'
'V_R1_pFAK_PTPN_R1_pFAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pFAK_PTPN'
'V_R1_pFAK_PTPN_R2_pFAK' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pFAK_PTPN'
'V_R2_pFAK_PTPN_R1_pFAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pFAK_PTPN'
'V_R2_pFAK_PTPN_R2_pFAK' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pFAK_PTPN'
'V_R1_pPLCgam_R1_pPLCgam_PTPN' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'V_R1_pPLCgam_R2_pPLCgam_PTPN' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'V_R2_pPLCgam_R1_pPLCgam_PTPN' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'V_R2_pPLCgam_R2_pPLCgam_PTPN' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'V_R1_pPLCgam_R1_pFAK_PTPN' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R1_pFAK_PTPN'
'V_R1_pPLCgam_R2_pFAK_PTPN' 'PTPN' '<->' 'V_R1_pPLCgam_PTPN_R2_pFAK_PTPN'
'V_R2_pPLCgam_R1_pFAK_PTPN' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R1_pFAK_PTPN'
'V_R2_pPLCgam_R2_pFAK_PTPN' 'PTPN' '<->' 'V_R2_pPLCgam_PTPN_R2_pFAK_PTPN'
'V_R1_pFAK_R1_pPLCgam_PTPN' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pPLCgam_PTPN'
'V_R1_pFAK_R2_pPLCgam_PTPN' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pPLCgam_PTPN'
'V_R2_pFAK_R1_pPLCgam_PTPN' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pPLCgam_PTPN'
'V_R2_pFAK_R2_pPLCgam_PTPN' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pPLCgam_PTPN'
'V_R1_pFAK_R1_pFAK_PTPN' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R1_pFAK_PTPN'
'V_R1_pFAK_R2_pFAK_PTPN' 'PTPN' '<->' 'V_R1_pFAK_PTPN_R2_pFAK_PTPN'
'V_R2_pFAK_R1_pFAK_PTPN' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R1_pFAK_PTPN'
'V_R2_pFAK_R2_pFAK_PTPN' 'PTPN' '<->' 'V_R2_pFAK_PTPN_R2_pFAK_PTPN'
'PAA_R1_R2' 'PLCgam' '<->' 'PAA_R1_PLCgam_R2'
'PAB_R1_R2' 'PLCgam' '<->' 'PAB_R1_PLCgam_R2'
'PBB_R1_R2' 'PLCgam' '<->' 'PBB_R1_PLCgam_R2'
'PAA_R1_R2' 'FAK' '<->' 'PAA_R1_FAK_R2'
'PAB_R1_R2' 'FAK' '<->' 'PAB_R1_FAK_R2'
'PBB_R1_R2' 'FAK' '<->' 'PBB_R1_FAK_R2'
'PAA_R2_R1' 'PLCgam' '<->' 'PAA_R2_R1_PLCgam'
'PAB_R2_R1' 'PLCgam' '<->' 'PAB_R2_R1_PLCgam'
'PBB_R2_R1' 'PLCgam' '<->' 'PBB_R2_R1_PLCgam'
'PAA_R2_R1' 'FAK' '<->' 'PAA_R2_R1_FAK'
'PAB_R2_R1' 'FAK' '<->' 'PAB_R2_R1_FAK'
'PBB_R2_R1' 'FAK' '<->' 'PBB_R2_R1_FAK'
'PAA_R1_pPLCgam_R2' 'PTPN' '<->' 'PAA_R1_pPLCgam_PTPN_R2'
'PAB_R1_pPLCgam_R2' 'PTPN' '<->' 'PAB_R1_pPLCgam_PTPN_R2'
'PBB_R1_pPLCgam_R2' 'PTPN' '<->' 'PBB_R1_pPLCgam_PTPN_R2'
'PAA_R1_pFAK_R2' 'PTPN' '<->' 'PAA_R1_pFAK_PTPN_R2'
'PAB_R1_pFAK_R2' 'PTPN' '<->' 'PAB_R1_pFAK_PTPN_R2'
'PBB_R1_pFAK_R2' 'PTPN' '<->' 'PBB_R1_pFAK_PTPN_R2'
'PAA_R2_R1_pPLCgam' 'PTPN' '<->' 'PAA_R2_R1_pPLCgam_PTPN'
'PAB_R2_R1_pPLCgam' 'PTPN' '<->' 'PAB_R2_R1_pPLCgam_PTPN'
'PBB_R2_R1_pPLCgam' 'PTPN' '<->' 'PBB_R2_R1_pPLCgam_PTPN'
'PAA_R2_R1_pFAK' 'PTPN' '<->' 'PAA_R2_R1_pFAK_PTPN'
'PAB_R2_R1_pFAK' 'PTPN' '<->' 'PAB_R2_R1_pFAK_PTPN'
'PBB_R2_R1_pFAK' 'PTPN' '<->' 'PBB_R2_R1_pFAK_PTPN'
'pR1_R1' 'PLCgam' '<->' 'pR1_PLCgam_R1'
'pR1_R2' 'PLCgam' '<->' 'pR1_PLCgam_R2'
'pR2_R1' 'PLCgam' '<->' 'pR2_PLCgam_R1'
'pR2_R2' 'PLCgam' '<->' 'pR2_PLCgam_R2'
'pR1_R1' 'FAK' '<->' 'pR1_FAK_R1'
'pR1_R2' 'FAK' '<->' 'pR1_FAK_R2'
'pR2_R1' 'FAK' '<->' 'pR2_FAK_R1'
'pR2_R2' 'FAK' '<->' 'pR2_FAK_R2'
'pR1_R1' 'PLCgam' '<->' 'pR1_R1_PLCgam'
'pR1_R2' 'PLCgam' '<->' 'pR1_R2_PLCgam'
'pR2_R1' 'PLCgam' '<->' 'pR2_R1_PLCgam'
'pR2_R2' 'PLCgam' '<->' 'pR2_R2_PLCgam'
'pR1_R1' 'FAK' '<->' 'pR1_R1_FAK'
'pR1_R2' 'FAK' '<->' 'pR1_R2_FAK'
'pR2_R1' 'FAK' '<->' 'pR2_R1_FAK'
'pR2_R2' 'FAK' '<->' 'pR2_R2_FAK'
'pR1_PLCgam_R1' 'PLCgam' '<->' 'pR1_PLCgam_R1_PLCgam'
'pR1_PLCgam_R2' 'PLCgam' '<->' 'pR1_PLCgam_R2_PLCgam'
'pR2_PLCgam_R1' 'PLCgam' '<->' 'pR2_PLCgam_R1_PLCgam'
'pR2_PLCgam_R2' 'PLCgam' '<->' 'pR2_PLCgam_R2_PLCgam'
'pR1_PLCgam_R1' 'FAK' '<->' 'pR1_PLCgam_R1_FAK'
'pR1_PLCgam_R2' 'FAK' '<->' 'pR1_PLCgam_R2_FAK'
'pR2_PLCgam_R1' 'FAK' '<->' 'pR2_PLCgam_R1_FAK'
'pR2_PLCgam_R2' 'FAK' '<->' 'pR2_PLCgam_R2_FAK'
'pR1_FAK_R1' 'PLCgam' '<->' 'pR1_FAK_R1_PLCgam'
'pR1_FAK_R2' 'PLCgam' '<->' 'pR1_FAK_R2_PLCgam'
'pR2_FAK_R1' 'PLCgam' '<->' 'pR2_FAK_R1_PLCgam'
'pR2_FAK_R2' 'PLCgam' '<->' 'pR2_FAK_R2_PLCgam'
'pR1_FAK_R1' 'FAK' '<->' 'pR1_FAK_R1_FAK'
'pR1_FAK_R2' 'FAK' '<->' 'pR1_FAK_R2_FAK'
'pR2_FAK_R1' 'FAK' '<->' 'pR2_FAK_R1_FAK'
'pR2_FAK_R2' 'FAK' '<->' 'pR2_FAK_R2_FAK'
'pR1_R1_PLCgam' 'PLCgam' '<->' 'pR1_PLCgam_R1_PLCgam'
'pR1_R2_PLCgam' 'PLCgam' '<->' 'pR1_PLCgam_R2_PLCgam'
'pR2_R1_PLCgam' 'PLCgam' '<->' 'pR2_PLCgam_R1_PLCgam'
'pR2_R2_PLCgam' 'PLCgam' '<->' 'pR2_PLCgam_R2_PLCgam'
'pR1_R1_PLCgam' 'FAK' '<->' 'pR1_FAK_R1_PLCgam'
'pR1_R2_PLCgam' 'FAK' '<->' 'pR1_FAK_R2_PLCgam'
'pR2_R1_PLCgam' 'FAK' '<->' 'pR2_FAK_R1_PLCgam'
'pR2_R2_PLCgam' 'FAK' '<->' 'pR2_FAK_R2_PLCgam'
'pR1_R1_FAK' 'PLCgam' '<->' 'pR1_PLCgam_R1_FAK'
'pR1_R2_FAK' 'PLCgam' '<->' 'pR1_PLCgam_R2_FAK'
'pR2_R1_FAK' 'PLCgam' '<->' 'pR2_PLCgam_R1_FAK'
'pR2_R2_FAK' 'PLCgam' '<->' 'pR2_PLCgam_R2_FAK'
'pR1_R1_FAK' 'FAK' '<->' 'pR1_FAK_R1_FAK'
'pR1_R2_FAK' 'FAK' '<->' 'pR1_FAK_R2_FAK'
'pR2_R1_FAK' 'FAK' '<->' 'pR2_FAK_R1_FAK'
'pR2_R2_FAK' 'FAK' '<->' 'pR2_FAK_R2_FAK'
'pR1_pPLCgam_R1' 'PLCgam' '<->' 'pR1_pPLCgam_R1_PLCgam'
'pR1_pPLCgam_R2' 'PLCgam' '<->' 'pR1_pPLCgam_R2_PLCgam'
'pR2_pPLCgam_R1' 'PLCgam' '<->' 'pR2_pPLCgam_R1_PLCgam'
'pR2_pPLCgam_R2' 'PLCgam' '<->' 'pR2_pPLCgam_R2_PLCgam'
'pR1_pPLCgam_R1' 'FAK' '<->' 'pR1_pPLCgam_R1_FAK'
'pR1_pPLCgam_R2' 'FAK' '<->' 'pR1_pPLCgam_R2_FAK'
'pR2_pPLCgam_R1' 'FAK' '<->' 'pR2_pPLCgam_R1_FAK'
'pR2_pPLCgam_R2' 'FAK' '<->' 'pR2_pPLCgam_R2_FAK'
'pR1_pFAK_R1' 'PLCgam' '<->' 'pR1_pFAK_R1_PLCgam'
'pR1_pFAK_R2' 'PLCgam' '<->' 'pR1_pFAK_R2_PLCgam'
'pR2_pFAK_R1' 'PLCgam' '<->' 'pR2_pFAK_R1_PLCgam'
'pR2_pFAK_R2' 'PLCgam' '<->' 'pR2_pFAK_R2_PLCgam'
'pR1_pFAK_R1' 'FAK' '<->' 'pR1_pFAK_R1_FAK'
'pR1_pFAK_R2' 'FAK' '<->' 'pR1_pFAK_R2_FAK'
'pR2_pFAK_R1' 'FAK' '<->' 'pR2_pFAK_R1_FAK'
'pR2_pFAK_R2' 'FAK' '<->' 'pR2_pFAK_R2_FAK'
'pR1_R1_pPLCgam' 'PLCgam' '<->' 'pR1_PLCgam_R1_pPLCgam'
'pR1_R2_pPLCgam' 'PLCgam' '<->' 'pR1_PLCgam_R2_pPLCgam'
'pR2_R1_pPLCgam' 'PLCgam' '<->' 'pR2_PLCgam_R1_pPLCgam'
'pR2_R2_pPLCgam' 'PLCgam' '<->' 'pR2_PLCgam_R2_pPLCgam'
'pR1_R1_pPLCgam' 'FAK' '<->' 'pR1_FAK_R1_pPLCgam'
'pR1_R2_pPLCgam' 'FAK' '<->' 'pR1_FAK_R2_pPLCgam'
'pR2_R1_pPLCgam' 'FAK' '<->' 'pR2_FAK_R1_pPLCgam'
'pR2_R2_pPLCgam' 'FAK' '<->' 'pR2_FAK_R2_pPLCgam'
'pR1_R1_pFAK' 'PLCgam' '<->' 'pR1_PLCgam_R1_pFAK'
'pR1_R2_pFAK' 'PLCgam' '<->' 'pR1_PLCgam_R2_pFAK'
'pR2_R1_pFAK' 'PLCgam' '<->' 'pR2_PLCgam_R1_pFAK'
'pR2_R2_pFAK' 'PLCgam' '<->' 'pR2_PLCgam_R2_pFAK'
'pR1_R1_pFAK' 'FAK' '<->' 'pR1_FAK_R1_pFAK'
'pR1_R2_pFAK' 'FAK' '<->' 'pR1_FAK_R2_pFAK'
'pR2_R1_pFAK' 'FAK' '<->' 'pR2_FAK_R1_pFAK'
'pR2_R2_pFAK' 'FAK' '<->' 'pR2_FAK_R2_pFAK'
'pR1_pPLCgam_PTPN_R1' 'PLCgam' '<->' 'pR1_pPLCgam_PTPN_R1_PLCgam'
'pR1_pPLCgam_PTPN_R2' 'PLCgam' '<->' 'pR1_pPLCgam_PTPN_R2_PLCgam'
'pR2_pPLCgam_PTPN_R1' 'PLCgam' '<->' 'pR2_pPLCgam_PTPN_R1_PLCgam'
'pR2_pPLCgam_PTPN_R2' 'PLCgam' '<->' 'pR2_pPLCgam_PTPN_R2_PLCgam'
'pR1_pPLCgam_PTPN_R1' 'FAK' '<->' 'pR1_pPLCgam_PTPN_R1_FAK'
'pR1_pPLCgam_PTPN_R2' 'FAK' '<->' 'pR1_pPLCgam_PTPN_R2_FAK'
'pR2_pPLCgam_PTPN_R1' 'FAK' '<->' 'pR2_pPLCgam_PTPN_R1_FAK'
'pR2_pPLCgam_PTPN_R2' 'FAK' '<->' 'pR2_pPLCgam_PTPN_R2_FAK'
'pR1_pFAK_PTPN_R1' 'PLCgam' '<->' 'pR1_pFAK_PTPN_R1_PLCgam'
'pR1_pFAK_PTPN_R2' 'PLCgam' '<->' 'pR1_pFAK_PTPN_R2_PLCgam'
'pR2_pFAK_PTPN_R1' 'PLCgam' '<->' 'pR2_pFAK_PTPN_R1_PLCgam'
'pR2_pFAK_PTPN_R2' 'PLCgam' '<->' 'pR2_pFAK_PTPN_R2_PLCgam'
'pR1_pFAK_PTPN_R1' 'FAK' '<->' 'pR1_pFAK_PTPN_R1_FAK'
'pR1_pFAK_PTPN_R2' 'FAK' '<->' 'pR1_pFAK_PTPN_R2_FAK'
'pR2_pFAK_PTPN_R1' 'FAK' '<->' 'pR2_pFAK_PTPN_R1_FAK'
'pR2_pFAK_PTPN_R2' 'FAK' '<->' 'pR2_pFAK_PTPN_R2_FAK'
'pR1_R1_pPLCgam_PTPN' 'PLCgam' '<->' 'pR1_PLCgam_R1_pPLCgam_PTPN'
'pR1_R2_pPLCgam_PTPN' 'PLCgam' '<->' 'pR1_PLCgam_R2_pPLCgam_PTPN'
'pR2_R1_pPLCgam_PTPN' 'PLCgam' '<->' 'pR2_PLCgam_R1_pPLCgam_PTPN'
'pR2_R2_pPLCgam_PTPN' 'PLCgam' '<->' 'pR2_PLCgam_R2_pPLCgam_PTPN'
'pR1_R1_pPLCgam_PTPN' 'FAK' '<->' 'pR1_FAK_R1_pPLCgam_PTPN'
'pR1_R2_pPLCgam_PTPN' 'FAK' '<->' 'pR1_FAK_R2_pPLCgam_PTPN'
'pR2_R1_pPLCgam_PTPN' 'FAK' '<->' 'pR2_FAK_R1_pPLCgam_PTPN'
'pR2_R2_pPLCgam_PTPN' 'FAK' '<->' 'pR2_FAK_R2_pPLCgam_PTPN'
'pR1_R1_pFAK_PTPN' 'PLCgam' '<->' 'pR1_PLCgam_R1_pFAK_PTPN'
'pR1_R2_pFAK_PTPN' 'PLCgam' '<->' 'pR1_PLCgam_R2_pFAK_PTPN'
'pR2_R1_pFAK_PTPN' 'PLCgam' '<->' 'pR2_PLCgam_R1_pFAK_PTPN'
'pR2_R2_pFAK_PTPN' 'PLCgam' '<->' 'pR2_PLCgam_R2_pFAK_PTPN'
'pR1_R1_pFAK_PTPN' 'FAK' '<->' 'pR1_FAK_R1_pFAK_PTPN'
'pR1_R2_pFAK_PTPN' 'FAK' '<->' 'pR1_FAK_R2_pFAK_PTPN'
'pR2_R1_pFAK_PTPN' 'FAK' '<->' 'pR2_FAK_R1_pFAK_PTPN'
'pR2_R2_pFAK_PTPN' 'FAK' '<->' 'pR2_FAK_R2_pFAK_PTPN'
'pR1_pPLCgam_R1' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R1'
'pR1_pPLCgam_R2' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R2'
'pR2_pPLCgam_R1' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R1'
'pR2_pPLCgam_R2' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R2'
'pR1_pFAK_R1' 'PTPN' '<->' 'pR1_pFAK_PTPN_R1'
'pR1_pFAK_R2' 'PTPN' '<->' 'pR1_pFAK_PTPN_R2'
'pR2_pFAK_R1' 'PTPN' '<->' 'pR2_pFAK_PTPN_R1'
'pR2_pFAK_R2' 'PTPN' '<->' 'pR2_pFAK_PTPN_R2'
'pR1_R1_pPLCgam' 'PTPN' '<->' 'pR1_R1_pPLCgam_PTPN'
'pR1_R2_pPLCgam' 'PTPN' '<->' 'pR1_R2_pPLCgam_PTPN'
'pR2_R1_pPLCgam' 'PTPN' '<->' 'pR2_R1_pPLCgam_PTPN'
'pR2_R2_pPLCgam' 'PTPN' '<->' 'pR2_R2_pPLCgam_PTPN'
'pR1_R1_pFAK' 'PTPN' '<->' 'pR1_R1_pFAK_PTPN'
'pR1_R2_pFAK' 'PTPN' '<->' 'pR1_R2_pFAK_PTPN'
'pR2_R1_pFAK' 'PTPN' '<->' 'pR2_R1_pFAK_PTPN'
'pR2_R2_pFAK' 'PTPN' '<->' 'pR2_R2_pFAK_PTPN'
'pR1_pPLCgam_R1_PLCgam' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R1_PLCgam'
'pR1_pPLCgam_R2_PLCgam' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R2_PLCgam'
'pR2_pPLCgam_R1_PLCgam' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R1_PLCgam'
'pR2_pPLCgam_R2_PLCgam' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R2_PLCgam'
'pR1_pPLCgam_R1_FAK' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R1_FAK'
'pR1_pPLCgam_R2_FAK' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R2_FAK'
'pR2_pPLCgam_R1_FAK' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R1_FAK'
'pR2_pPLCgam_R2_FAK' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R2_FAK'
'pR1_pFAK_R1_PLCgam' 'PTPN' '<->' 'pR1_pFAK_PTPN_R1_PLCgam'
'pR1_pFAK_R2_PLCgam' 'PTPN' '<->' 'pR1_pFAK_PTPN_R2_PLCgam'
'pR2_pFAK_R1_PLCgam' 'PTPN' '<->' 'pR2_pFAK_PTPN_R1_PLCgam'
'pR2_pFAK_R2_PLCgam' 'PTPN' '<->' 'pR2_pFAK_PTPN_R2_PLCgam'
'pR1_pFAK_R1_FAK' 'PTPN' '<->' 'pR1_pFAK_PTPN_R1_FAK'
'pR1_pFAK_R2_FAK' 'PTPN' '<->' 'pR1_pFAK_PTPN_R2_FAK'
'pR2_pFAK_R1_FAK' 'PTPN' '<->' 'pR2_pFAK_PTPN_R1_FAK'
'pR2_pFAK_R2_FAK' 'PTPN' '<->' 'pR2_pFAK_PTPN_R2_FAK'
'pR1_PLCgam_R1_pPLCgam' 'PTPN' '<->' 'pR1_PLCgam_R1_pPLCgam_PTPN'
'pR1_PLCgam_R2_pPLCgam' 'PTPN' '<->' 'pR1_PLCgam_R2_pPLCgam_PTPN'
'pR2_PLCgam_R1_pPLCgam' 'PTPN' '<->' 'pR2_PLCgam_R1_pPLCgam_PTPN'
'pR2_PLCgam_R2_pPLCgam' 'PTPN' '<->' 'pR2_PLCgam_R2_pPLCgam_PTPN'
'pR1_PLCgam_R1_pFAK' 'PTPN' '<->' 'pR1_PLCgam_R1_pFAK_PTPN'
'pR1_PLCgam_R2_pFAK' 'PTPN' '<->' 'pR1_PLCgam_R2_pFAK_PTPN'
'pR2_PLCgam_R1_pFAK' 'PTPN' '<->' 'pR2_PLCgam_R1_pFAK_PTPN'
'pR2_PLCgam_R2_pFAK' 'PTPN' '<->' 'pR2_PLCgam_R2_pFAK_PTPN'
'pR1_FAK_R1_pPLCgam' 'PTPN' '<->' 'pR1_FAK_R1_pPLCgam_PTPN'
'pR1_FAK_R2_pPLCgam' 'PTPN' '<->' 'pR1_FAK_R2_pPLCgam_PTPN'
'pR2_FAK_R1_pPLCgam' 'PTPN' '<->' 'pR2_FAK_R1_pPLCgam_PTPN'
'pR2_FAK_R2_pPLCgam' 'PTPN' '<->' 'pR2_FAK_R2_pPLCgam_PTPN'
'pR1_FAK_R1_pFAK' 'PTPN' '<->' 'pR1_FAK_R1_pFAK_PTPN'
'pR1_FAK_R2_pFAK' 'PTPN' '<->' 'pR1_FAK_R2_pFAK_PTPN'
'pR2_FAK_R1_pFAK' 'PTPN' '<->' 'pR2_FAK_R1_pFAK_PTPN'
'pR2_FAK_R2_pFAK' 'PTPN' '<->' 'pR2_FAK_R2_pFAK_PTPN'
'pR1_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R1_pPLCgam'
'pR1_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R2_pPLCgam'
'pR2_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R1_pPLCgam'
'pR2_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R2_pPLCgam'
'pR1_pPLCgam_R1_pFAK' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R1_pFAK'
'pR1_pPLCgam_R2_pFAK' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R2_pFAK'
'pR2_pPLCgam_R1_pFAK' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R1_pFAK'
'pR2_pPLCgam_R2_pFAK' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R2_pFAk'
'pR1_pFAK_R1_pPLCgam' 'PTPN' '<->' 'pR1_pFAK_PTPN_R1_pPLCgam'
'pR1_pFAK_R2_pPLCgam' 'PTPN' '<->' 'pR1_pFAK_PTPN_R2_pPLCgam'
'pR2_pFAK_R1_pPLCgam' 'PTPN' '<->' 'pR2_pFAK_PTPN_R1_pPLCgam'
'pR2_pFAK_R2_pPLCgam' 'PTPN' '<->' 'pR2_pFAK_PTPN_R2_pPLCgam'
'pR1_pFAK_R1_pFAK' 'PTPN' '<->' 'pR1_pFAK_PTPN_R1_pFAK'
'pR1_pFAK_R2_pFAK' 'PTPN' '<->' 'pR1_pFAK_PTPN_R2_pFAK'
'pR2_pFAK_R1_pFAK' 'PTPN' '<->' 'pR2_pFAK_PTPN_R1_pFAK'
'pR2_pFAK_R2_pFAK' 'PTPN' '<->' 'pR2_pFAK_PTPN_R2_pFAK'
'pR1_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'pR1_pPLCgam_R1_pPLCgam_PTPN'
'pR1_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'pR1_pPLCgam_R2_pPLCgam_PTPN'
'pR2_pPLCgam_R1_pPLCgam' 'PTPN' '<->' 'pR2_pPLCgam_R1_pPLCgam_PTPN'
'pR2_pPLCgam_R2_pPLCgam' 'PTPN' '<->' 'pR2_pPLCgam_R2_pPLCgam_PTPN'
'pR1_pPLCgam_R1_pFAK' 'PTPN' '<->' 'pR1_pPLCgam_R1_pFAK_PTPN'
'pR1_pPLCgam_R2_pFAK' 'PTPN' '<->' 'pR1_pPLCgam_R2_pFAK_PTPN'
'pR2_pPLCgam_R1_pFAK' 'PTPN' '<->' 'pR2_pPLCgam_R1_pFAK_PTPN'
'pR2_pPLCgam_R2_pFAK' 'PTPN' '<->' 'pR2_pPLCgam_R2_pFAK_PTPN'
'pR1_pFAK_R1_pPLCgam' 'PTPN' '<->' 'pR1_pFAK_R1_pPLCgam_PTPN'
'pR1_pFAK_R2_pPLCgam' 'PTPN' '<->' 'pR1_pFAK_R2_pPLCgam_PTPN'
'pR2_pFAK_R1_pPLCgam' 'PTPN' '<->' 'pR2_pFAK_R1_pPLCgam_PTPN'
'pR2_pFAK_R2_pPLCgam' 'PTPN' '<->' 'pR2_pFAK_R2_pPLCgam_PTPN'
'pR1_pFAK_R1_pFAK' 'PTPN' '<->' 'pR1_pFAK_R1_pFAK_PTPN'
'pR1_pFAK_R2_pFAK' 'PTPN' '<->' 'pR1_pFAK_R2_pFAK_PTPN'
'pR2_pFAK_R1_pFAK' 'PTPN' '<->' 'pR2_pFAK_R1_pFAK_PTPN'
'pR2_pFAK_R2_pFAK' 'PTPN' '<->' 'pR2_pFAK_R2_pFAK_PTPN'
'pR1_pPLCgam_PTPN_R1_pPLCgam' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'pR1_pPLCgam_PTPN_R2_pPLCgam' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'pR2_pPLCgam_PTPN_R1_pPLCgam' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'pR2_pPLCgam_PTPN_R2_pPLCgam' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'pR1_pPLCgam_PTPN_R1_pFAK' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R1_pFAK_PTPN'
'pR1_pPLCgam_PTPN_R2_pFAK' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R2_pFAK_PTPN'
'pR2_pPLCgam_PTPN_R1_pFAK' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R1_pFAK_PTPN'
'pR2_pPLCgam_PTPN_R2_pFAK' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R2_pFAK_PTPN'
'pR1_pFAK_PTPN_R1_pPLCgam' 'PTPN' '<->' 'pR1_pFAK_PTPN_R1_pPLCgam_PTPN'
'pR1_pFAK_PTPN_R2_pPLCgam' 'PTPN' '<->' 'pR1_pFAK_PTPN_R2_pPLCgam_PTPN'
'pR2_pFAK_PTPN_R1_pPLCgam' 'PTPN' '<->' 'pR2_pFAK_PTPN_R1_pPLCgam_PTPN'
'pR2_pFAK_PTPN_R2_pPLCgam' 'PTPN' '<->' 'pR2_pFAK_PTPN_R2_pPLCgam_PTPN'
'pR1_pFAK_PTPN_R1_pFAK' 'PTPN' '<->' 'pR1_pFAK_PTPN_R1_pFAK_PTPN'
'pR1_pFAK_PTPN_R2_pFAK' 'PTPN' '<->' 'pR1_pFAK_PTPN_R2_pFAK_PTPN'
'pR2_pFAK_PTPN_R1_pFAK' 'PTPN' '<->' 'pR2_pFAK_PTPN_R1_pFAK_PTPN'
'pR2_pFAK_PTPN_R2_pFAK' 'PTPN' '<->' 'pR2_pFAK_PTPN_R2_pFAK_PTPN'
'pR1_pPLCgam_R1_pPLCgam_PTPN' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'pR1_pPLCgam_R2_pPLCgam_PTPN' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'pR2_pPLCgam_R1_pPLCgam_PTPN' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R1_pPLCgam_PTPN'
'pR2_pPLCgam_R2_pPLCgam_PTPN' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R2_pPLCgam_PTPN'
'pR1_pPLCgam_R1_pFAK_PTPN' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R1_pFAK_PTPN'
'pR1_pPLCgam_R2_pFAK_PTPN' 'PTPN' '<->' 'pR1_pPLCgam_PTPN_R2_pFAK_PTPN'
'pR2_pPLCgam_R1_pFAK_PTPN' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R1_pFAK_PTPN'
'pR2_pPLCgam_R2_pFAK_PTPN' 'PTPN' '<->' 'pR2_pPLCgam_PTPN_R2_pFAK_PTPN'
'pR1_pFAK_R1_pPLCgam_PTPN' 'PTPN' '<->' 'pR1_pFAK_PTPN_R1_pPLCgam_PTPN'
'pR1_pFAK_R2_pPLCgam_PTPN' 'PTPN' '<->' 'pR1_pFAK_PTPN_R2_pPLCgam_PTPN'
'pR2_pFAK_R1_pPLCgam_PTPN' 'PTPN' '<->' 'pR2_pFAK_PTPN_R1_pPLCgam_PTPN'
'pR2_pFAK_R2_pPLCgam_PTPN' 'PTPN' '<->' 'pR2_pFAK_PTPN_R2_pPLCgam_PTPN'
'pR1_pFAK_R1_pFAK_PTPN' 'PTPN' '<->' 'pR1_pFAK_PTPN_R1_pFAK_PTPN'
'pR1_pFAK_R2_pFAK_PTPN' 'PTPN' '<->' 'pR1_pFAK_PTPN_R2_pFAK_PTPN'
'pR2_pFAK_R1_pFAK_PTPN' 'PTPN' '<->' 'pR2_pFAK_PTPN_R1_pFAK_PTPN'
'pR2_pFAK_R2_pFAK_PTPN' 'PTPN' '<->' 'pR2_pFAK_PTPN_R2_pFAK_PTPN'
'PAA_R1_R2' 'PLCgam' '<->' 'PAA_R1_PLCgam_R2'
'PAB_R1_R2' 'PLCgam' '<->' 'PAB_R1_PLCgam_R2'
'PBB_R1_R2' 'PLCgam' '<->' 'PBB_R1_PLCgam_R2'
'PAA_R1_R2' 'FAK' '<->' 'PAA_R1_FAK_R2'
'PAB_R1_R2' 'FAK' '<->' 'PAB_R1_FAK_R2'
'PBB_R1_R2' 'FAK' '<->' 'PBB_R1_FAK_R2'
'PAA_R2_R1' 'PLCgam' '<->' 'PAA_R2_R1_PLCgam'
'PAB_R2_R1' 'PLCgam' '<->' 'PAB_R2_R1_PLCgam'
'PBB_R2_R1' 'PLCgam' '<->' 'PBB_R2_R1_PLCgam'
'PAA_R2_R1' 'FAK' '<->' 'PAA_R2_R1_FAK'
'PAB_R2_R1' 'FAK' '<->' 'PAB_R2_R1_FAK'
'PBB_R2_R1' 'FAK' '<->' 'PBB_R2_R1_FAK'
'PAA_R1_pPLCgam_R2' 'PTPN' '<->' 'PAA_R1_pPLCgam_PTPN_R2'
'PAB_R1_pPLCgam_R2' 'PTPN' '<->' 'PAB_R1_pPLCgam_PTPN_R2'
'PBB_R1_pPLCgam_R2' 'PTPN' '<->' 'PBB_R1_pPLCgam_PTPN_R2'
'PAA_R1_pFAK_R2' 'PTPN' '<->' 'PAA_R1_pFAK_PTPN_R2'
'PAB_R1_pFAK_R2' 'PTPN' '<->' 'PAB_R1_pFAK_PTPN_R2'
'PBB_R1_pFAK_R2' 'PTPN' '<->' 'PBB_R1_pFAK_PTPN_R2'
'PAA_R2_R1_pPLCgam' 'PTPN' '<->' 'PAA_R2_R1_pPLCgam_PTPN'
'PAB_R2_R1_pPLCgam' 'PTPN' '<->' 'PAB_R2_R1_pPLCgam_PTPN'
'PBB_R2_R1_pPLCgam' 'PTPN' '<->' 'PBB_R2_R1_pPLCgam_PTPN'
'PAA_R2_R1_pFAK' 'PTPN' '<->' 'PAA_R2_R1_pFAK_PTPN'
'PAB_R2_R1_pFAK' 'PTPN' '<->' 'PAB_R2_R1_pFAK_PTPN'
'PBB_R2_R1_pFAK' 'PTPN' '<->' 'PBB_R2_R1_pFAK_PTPN'
};