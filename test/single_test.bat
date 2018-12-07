SET ADDITIONAL_ARGS="1 -4"
SET CMP=tools\

..\bin\model0.exe TestStreams\titanic_horn.wav output\%%~nf_model_0_arg%ADDITIONAL_ARGS%.wav %ADDITIONAL_ARGS% 
..\bin\model1.exe TestStreams\titanic_horn.wav output\%%~nf_model_1_arg%ADDITIONAL_ARGS%.wav %ADDITIONAL_ARGS% 
..\bin\model2.exe TestStreams\titanic_horn.wav output\%%~nf_model_2_arg%ADDITIONAL_ARGS%.wav %ADDITIONAL_ARGS% 

%CMP%PCMCompare output\%%~nf_model_0_arg%ADDITIONAL_ARGS%.wav output\%%~nf_model_1_arg%ADDITIONAL_ARGS%.wav > logs/%%~nf_cmp_model_0_vs_1_arg%ADDITIONAL_ARGS%.txt
%CMP%PCMCompare output\%%~nf_model_1_arg%ADDITIONAL_ARGS%.wav output\%%~nf_model_2_arg%ADDITIONAL_ARGS%.wav > logs/%%~nf_cmp_model_1_vs_2_arg%ADDITIONAL_ARGS%.txt	

pause