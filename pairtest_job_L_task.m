%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 4252 $)
%-----------------------------------------------------------------------
out_dir = '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/Paired_T_R_2_Task'

spm('defaults', 'FMRI');
clear matlabbatch

matlabbatch{1}.spm.stats.factorial_design.dir = {out_dir};
matlabbatch{1}.spm.stats.factorial_design.des.pt.pair(1).scans = {
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_md/ZCorrel_MAC_DE_08_task_rMAC_DE_08.2_RH_V1.label_roi.img,1'
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_con/ZCorrel_MAC_CON_08_task_rMAC_CON_08.2_RH_V1.label_roi.img,1'
                                                                  };
matlabbatch{1}.spm.stats.factorial_design.des.pt.pair(2).scans = {
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_md/ZCorrel_MAC_DE_09_task_rMAC_DE_09.2_RH_V1.label_roi.img,1'
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_con/ZCorrel_MAC_CON_09_task_rMAC_CON_09.2_RH_V1.label_roi.img,1'
                                                                  };
matlabbatch{1}.spm.stats.factorial_design.des.pt.pair(3).scans = {
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_md/ZCorrel_MAC_DE_011_task_rMAC_DE_011.2_RH_V1.label_roi.img,1'
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_con/ZCorrel_MAC_CON_011_task_rMAC_CON_011.2_RH_V1.label_roi.img,1'
                                                                  };
matlabbatch{1}.spm.stats.factorial_design.des.pt.pair(4).scans = {
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_md/ZCorrel_MAC_DE_013_task_rMAC_DE_013.2_RH_V1.label_roi.img,1'
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_con/ZCorrel_MAC_CON_013_task_rMAC_CON_013.2_RH_V1.label_roi.img,1'
                                                                  };
matlabbatch{1}.spm.stats.factorial_design.des.pt.pair(5).scans = {
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_md/ZCorrel_MAC_DE_016_task_rMAC_DE_016.2_RH_V1.label_roi.img,1'
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_con/ZCorrel_MAC_CON_016_task_rMAC_CON_016.2_RH_V1.label_roi.img,1'
                                                                  };
matlabbatch{1}.spm.stats.factorial_design.des.pt.pair(6).scans = {
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_md/ZCorrel_MAC_DE_018_task_rMAC_DE_018.2_RH_V1.label_roi.img,1'
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_con/ZCorrel_MAC_CON_018_task_rMAC_CON_018.2_RH_V1.label_roi.img,1'
                                                                  };

matlabbatch{1}.spm.stats.factorial_design.des.pt.pair(7).scans = {
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_md/ZCorrel_MAC_DE_024_task_rMAC_DE_024.2_RH_V1.label_roi.img,1'
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_con/ZCorrel_MAC_CON_024_task_rMAC_CON_024.2_RH_V1.label_roi.img,1'
                                                                  };
matlabbatch{1}.spm.stats.factorial_design.des.pt.pair(8).scans = {
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_md/ZCorrel_MAC_DE_025_task_rMAC_DE_025.2_RH_V1.label_roi.img,1'
                                                                  '/media/store3/Projects/Wess/subjects/Whole_Brain_MD/ZCorrel_con/ZCorrel_MAC_CON_025_task_rMAC_CON_025.2_RH_V1.label_roi.img,1'
                                                                  };

matlabbatch{1}.spm.stats.factorial_design.des.pt.gmsca = 0;
matlabbatch{1}.spm.stats.factorial_design.des.pt.ancova = 0;
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 2;
spm_jobman('run',matlabbatch);

clear matlabbatch

cd(out_dir);

matlabbatch{1}.spm.stats.fmri_est.spmmat = cellstr(fullfile(pwd,'SPM.mat'));

matlabbatch{1}.spm.stats.fmri_est.method.Classical = 1;

spm_jobman('run',matlabbatch);
%%
clear matlabbatch

matlabbatch{1}.spm.stats.con.spmmat = cellstr(fullfile(pwd,'SPM.mat')); %Define path directory to Block Estimated SPM.mat file for a single subject

matlabbatch{1}.spm.stats.con.consess{1}.tcon.name = 'TCon01';
matlabbatch{1}.spm.stats.con.consess{1}.tcon.convec = [1 -1];
matlabbatch{1}.spm.stats.con.consess{1}.tcon.sessrep = 'none';

matlabbatch{1}.spm.stats.con.consess{2}.tcon.name = 'TCon02';
matlabbatch{1}.spm.stats.con.consess{2}.tcon.convec = [-1 1];
matlabbatch{1}.spm.stats.con.consess{2}.tcon.sessrep = 'none';


spm_jobman('run',matlabbatch);
