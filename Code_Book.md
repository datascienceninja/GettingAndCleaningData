<h1> Codebook </h1>

<h2> The Variables </h2>
<ul>
<li>subject_test <- from test/subject_test.txt</li>
<li>subject_train <- from train/subject_train.txt</li>
<li>X_test <- from test/X_test.txt</li>
<li>X_train <- from train/X_train.txt</li>
<li>Y_test <- test/Y_test.txt</li>
<li>Y_train <- train/Y_train.txt</li>
<li>features <- features.txt</li>
<li>activity_labels <- activity_labels.txt</li>
<li>x_all - combination of x_train and x_test</li>
<li>y_all - combination of y_train and y_test</li>
<li>subject_all - combination of subject train and test</li>
<li>mean_std - greps only the mean and std data</li>
<li>x_all_mean_std - filters train test data for x by mean and std</li>
<li>y_all - filters train test data for y by activity</li>
<li>data_merge - combines the filtered data for x, y and subject</li>
<li>tidy_data - gives data from data_merge descriptive colnames</li>
</ul>

<h2> The Code </h2>
<ul>
<li>Load the data from files </li>
<li>Combine test and train for x</li>
<li>Give x_all descriptive names</li>
<li>Combine test and train for y</li>
<li>Combine test and train for subject</li>
<li>Extract mean and std for each measurement</li>
<li>Comine subject_all, Y_all, X_all_mean_std</li>
<li>Creates a second, independent tidy data set</li>
<li>Save the averagedata Data Table into "TidyData.txt".</li>
</ul>
