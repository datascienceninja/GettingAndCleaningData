<h1>run_analysis.r</h1>
==============

Course Project for Getting and Cleaning Data Coursera Course

<h2>Introduction</h2>

<p>This README readme describes the script run_analysis.r</p>

<h2> Packages Used </h2>

<p>reshape2</p>

<h2>Code Summary</h2>

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
<li>Row Bind all the test and train data into single data table </li>
<li>Rename xtrain.test column names with data recieve in features datatable.</li>
<li>Subset xtrain.test to contain column name having "mean" and "std" into new data table </li>
<li>Merge ytrain.test with activity lables to use the Activity Label names instead of Activity ID in ytrain.test</li>
<li>Merge xtrain.test.mean.std, ytrain.test.activity and strain.test into mergedata</li>
<li>Create new datatable averagedata by grouping them into Subject/Activity and taking average of each feature variable.</li>
<li>Save the averagedata Data Table into "TidyData.txt".</li>
</ul>

