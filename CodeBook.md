## Code Book

The following data files are produced from running the run_analysis.R file. See the README.md file for more information.

### tidy_mean_output.txt

This is a CSV file which contains the following columns:

| Column          | Description                                              | Type    |
| --------------- | -------------------------------------------------------- | ------- |
| subject_id      | Identifier of the subject                                | integer |
| activity_id     | Name of the activity                                     | factor  |
| mean            | Mean of data by subject_id and activity_id               | numeric |

### tidy_output.txt

This is a CSV file which contains the following columns:

| Column                                  | Description                                                                        | Type    |
|-----------------------------------------|------------------------------------------------------------------------------------|---------|
| activity_name                           | The name of the activity                                                           | Factor  |
| subject_id                              | The id of the subject/individual                                                   | Integer |
| time_body_acc_mean_x                    | time_body_acc_mean_x value for the subject id and activity name                    | Numeric |
| time_body_acc_mean_y                    | time_body_acc_mean_y value for the subject id and activity name                    | Numeric |
| time_body_acc_mean_z                    | time_body_acc_mean_z value for the subject id and activity name                    | Numeric |
| time_body_acc_std_x                     | time_body_acc_std_x value for the subject id and activity name                     | Numeric |
| time_body_acc_std_y                     | time_body_acc_std_y value for the subject id and activity name                     | Numeric |
| time_body_acc_std_z                     | time_body_acc_std_z value for the subject id and activity name                     | Numeric |
| time_gravity_acc_mean_x                 | time_gravity_acc_mean_x value for the subject id and activity name                 | Numeric |
| time_gravity_acc_mean_y                 | time_gravity_acc_mean_y value for the subject id and activity name                 | Numeric |
| time_gravity_acc_mean_z                 | time_gravity_acc_mean_z value for the subject id and activity name                 | Numeric |
| time_gravity_acc_std_x                  | time_gravity_acc_std_x value for the subject id and activity name                  | Numeric |
| time_gravity_acc_std_y                  | time_gravity_acc_std_y value for the subject id and activity name                  | Numeric |
| time_gravity_acc_std_z                  | time_gravity_acc_std_z value for the subject id and activity name                  | Numeric |
| time_body_accjerk_mean_x                | time_body_accjerk_mean_x value for the subject id and activity name                | Numeric |
| time_body_accjerk_mean_y                | time_body_accjerk_mean_y value for the subject id and activity name                | Numeric |
| time_body_accjerk_mean_z                | time_body_accjerk_mean_z value for the subject id and activity name                | Numeric |
| time_body_accjerk_std_x                 | time_body_accjerk_std_x value for the subject id and activity name                 | Numeric |
| time_body_accjerk_std_y                 | time_body_accjerk_std_y value for the subject id and activity name                 | Numeric |
| time_body_accjerk_std_z                 | time_body_accjerk_std_z value for the subject id and activity name                 | Numeric |
| time_body_gyro_mean_x                   | time_body_gyro_mean_x value for the subject id and activity name                   | Numeric |
| time_body_gyro_mean_y                   | time_body_gyro_mean_y value for the subject id and activity name                   | Numeric |
| time_body_gyro_mean_z                   | time_body_gyro_mean_z value for the subject id and activity name                   | Numeric |
| time_body_gyro_std_x                    | time_body_gyro_std_x value for the subject id and activity name                    | Numeric |
| time_body_gyro_std_y                    | time_body_gyro_std_y value for the subject id and activity name                    | Numeric |
| time_body_gyro_std_z                    | time_body_gyro_std_z value for the subject id and activity name                    | Numeric |
| time_body_gyrojerk_mean_x               | time_body_gyrojerk_mean_x value for the subject id and activity name               | Numeric |
| time_body_gyrojerk_mean_y               | time_body_gyrojerk_mean_y value for the subject id and activity name               | Numeric |
| time_body_gyrojerk_mean_z               | time_body_gyrojerk_mean_z value for the subject id and activity name               | Numeric |
| time_body_gyrojerk_std_x                | time_body_gyrojerk_std_x value for the subject id and activity name                | Numeric |
| time_body_gyrojerk_std_y                | time_body_gyrojerk_std_y value for the subject id and activity name                | Numeric |
| time_body_gyrojerk_std_z                | time_body_gyrojerk_std_z value for the subject id and activity name                | Numeric |
| time_body_accmag_mean                   | time_body_accmag_mean value for the subject id and activity name                   | Numeric |
| time_body_accmag_std                    | time_body_accmag_std value for the subject id and activity name                    | Numeric |
| time_gravity_accmag_mean                | time_gravity_accmag_mean value for the subject id and activity name                | Numeric |
| time_gravity_accmag_std                 | time_gravity_accmag_std value for the subject id and activity name                 | Numeric |
| time_body_accjerkmag_mean               | time_body_accjerkmag_mean value for the subject id and activity name               | Numeric |
| time_body_accjerkmag_std                | time_body_accjerkmag_std value for the subject id and activity name                | Numeric |
| time_body_gyromag_mean                  | time_body_gyromag_mean value for the subject id and activity name                  | Numeric |
| time_body_gyromag_std                   | time_body_gyromag_std value for the subject id and activity name                   | Numeric |
| time_body_gyrojerkmag_mean              | time_body_gyrojerkmag_mean value for the subject id and activity name              | Numeric |
| time_body_gyrojerkmag_std               | time_body_gyrojerkmag_std value for the subject id and activity name               | Numeric |
| fft_body_acc_mean_x                     | fft_body_acc_mean_x value for the subject id and activity name                     | Numeric |
| fft_body_acc_mean_y                     | fft_body_acc_mean_y value for the subject id and activity name                     | Numeric |
| fft_body_acc_mean_z                     | fft_body_acc_mean_z value for the subject id and activity name                     | Numeric |
| fft_body_acc_std_x                      | fft_body_acc_std_x value for the subject id and activity name                      | Numeric |
| fft_body_acc_std_y                      | fft_body_acc_std_y value for the subject id and activity name                      | Numeric |
| fft_body_acc_std_z                      | fft_body_acc_std_z value for the subject id and activity name                      | Numeric |
| fft_body_acc_meanfreq_x                 | fft_body_acc_meanfreq_x value for the subject id and activity name                 | Numeric |
| fft_body_acc_meanfreq_y                 | fft_body_acc_meanfreq_y value for the subject id and activity name                 | Numeric |
| fft_body_acc_meanfreq_z                 | fft_body_acc_meanfreq_z value for the subject id and activity name                 | Numeric |
| fft_body_accjerk_mean_x                 | fft_body_accjerk_mean_x value for the subject id and activity name                 | Numeric |
| fft_body_accjerk_mean_y                 | fft_body_accjerk_mean_y value for the subject id and activity name                 | Numeric |
| fft_body_accjerk_mean_z                 | fft_body_accjerk_mean_z value for the subject id and activity name                 | Numeric |
| fft_body_accjerk_std_x                  | fft_body_accjerk_std_x value for the subject id and activity name                  | Numeric |
| fft_body_accjerk_std_y                  | fft_body_accjerk_std_y value for the subject id and activity name                  | Numeric |
| fft_body_accjerk_std_z                  | fft_body_accjerk_std_z value for the subject id and activity name                  | Numeric |
| fft_body_accjerk_meanfreq_x             | fft_body_accjerk_meanfreq_x value for the subject id and activity name             | Numeric |
| fft_body_accjerk_meanfreq_y             | fft_body_accjerk_meanfreq_y value for the subject id and activity name             | Numeric |
| fft_body_accjerk_meanfreq_z             | fft_body_accjerk_meanfreq_z value for the subject id and activity name             | Numeric |
| fft_body_gyro_mean_x                    | fft_body_gyro_mean_x value for the subject id and activity name                    | Numeric |
| fft_body_gyro_mean_y                    | fft_body_gyro_mean_y value for the subject id and activity name                    | Numeric |
| fft_body_gyro_mean_z                    | fft_body_gyro_mean_z value for the subject id and activity name                    | Numeric |
| fft_body_gyro_std_x                     | fft_body_gyro_std_x value for the subject id and activity name                     | Numeric |
| fft_body_gyro_std_y                     | fft_body_gyro_std_y value for the subject id and activity name                     | Numeric |
| fft_body_gyro_std_z                     | fft_body_gyro_std_z value for the subject id and activity name                     | Numeric |
| fft_body_gyro_meanfreq_x                | fft_body_gyro_meanfreq_x value for the subject id and activity name                | Numeric |
| fft_body_gyro_meanfreq_y                | fft_body_gyro_meanfreq_y value for the subject id and activity name                | Numeric |
| fft_body_gyro_meanfreq_z                | fft_body_gyro_meanfreq_z value for the subject id and activity name                | Numeric |
| fft_body_accmag_mean                    | fft_body_accmag_mean value for the subject id and activity name                    | Numeric |
| fft_body_accmag_std                     | fft_body_accmag_std value for the subject id and activity name                     | Numeric |
| fft_body_accmag_meanfreq                | fft_body_accmag_meanfreq value for the subject id and activity name                | Numeric |
| fft_body_bodyaccjerkmag_mean            | fft_body_bodyaccjerkmag_mean value for the subject id and activity name            | Numeric |
| fft_body_bodyaccjerkmag_std             | fft_body_bodyaccjerkmag_std value for the subject id and activity name             | Numeric |
| fft_body_bodyaccjerkmag_meanfreq        | fft_body_bodyaccjerkmag_meanfreq value for the subject id and activity name        | Numeric |
| fft_body_bodygyromag_mean               | fft_body_bodygyromag_mean value for the subject id and activity name               | Numeric |
| fft_body_bodygyromag_std                | fft_body_bodygyromag_std value for the subject id and activity name                | Numeric |
| fft_body_bodygyromag_meanfreq           | fft_body_bodygyromag_meanfreq value for the subject id and activity name           | Numeric |
| fft_body_bodygyrojerkmag_mean           | fft_body_bodygyrojerkmag_mean value for the subject id and activity name           | Numeric |
| fft_body_bodygyrojerkmag_std            | fft_body_bodygyrojerkmag_std value for the subject id and activity name            | Numeric |
| fft_body_bodygyrojerkmag_meanfreq       | fft_body_bodygyrojerkmag_meanfreq value for the subject id and activity name       | Numeric |
| angletime_body_accmean_gravity          | angletime_body_accmean_gravity value for the subject id and activity name          | Numeric |
| angletime_body_accjerkmean_gravitymean  | angletime_body_accjerkmean_gravitymean value for the subject id and activity name  | Numeric |
| angletime_body_gyromean_gravitymean     | angletime_body_gyromean_gravitymean value for the subject id and activity name     | Numeric |
| angletime_body_gyrojerkmean_gravitymean | angletime_body_gyrojerkmean_gravitymean value for the subject id and activity name | Numeric |
| anglex_gravitymean                      | anglex_gravitymean value for the subject id and activity name                      | Numeric |
| angley_gravitymean                      | angley_gravitymean value for the subject id and activity name                      | Numeric |
| anglez_gravitymean                      | anglez_gravitymean value for the subject id and activity name                      | Numeric |

### Sources

Source data is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.