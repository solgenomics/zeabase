perl ~/code/code_perl/LoadScriptForTonyMetadata.pl -H localhost -D zea -i single_trial_3WHYB-2010-15-1.cvsmetadata
perl ~/code/loading_script/load_accessions_in_database_aimin.pl -H localhost -D zea -i single_trial_3WHYB-2010-15-1_accession.txt -e 3WHYB-2010-15-1 -c KIBOKO
perl ~/code/code_perl/load_pedigrees_in_database_4_VahidData.pl -H localhost -D zea -i single_trial_3WHYB-2010-15-1_pedigree.txt -e 3WHYB-2010-15-1 -c KIBOKO
perl ~/code/code_perl/LoadScriptForVahidPlotdata.pl -H localhost -D zea -i single_trial_3WHYB-2010-15-1.cvs
