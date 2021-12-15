#change build target
#
# Set and display project path
#

UNITY_PROJECT_PATH="$GITHUB_WORKSPACE/$PROJECT_PATH"
echo "Using project path \"$UNITY_PROJECT_PATH\"."

#
# Set and display the artifacts path
#

echo "Using artifacts path \"$ARTIFACTS_PATH\" to save test results."
FULL_ARTIFACTS_PATH=$GITHUB_WORKSPACE/$ARTIFACTS_PATH

# The following tests are 2019 mode (requires Unity 2019.2.11f1 or later)
# Reference: https://docs.unity3d.com/2019.3/Documentation/Manual/CommandLineArguments.html

#
# Display the unity version
#

echo "Using Unity version \"$UNITY_VERSION\" to test."

#
# Overall info
#

echo ""
echo "###########################"
echo "#    Artifacts folder     #"
echo "###########################"
echo ""
echo "Creating \"$FULL_ARTIFACTS_PATH\" if it does not exist."
mkdir -p $FULL_ARTIFACTS_PATH

echo ""
echo "###########################"
echo "#    Project directory    #"
echo "###########################"
echo ""
ls -alh $UNITY_PROJECT_PATH


echo ""
echo "###########################"
echo "#   Change Build Target   #"
echo "###########################"
echo ""
unity-editor \
  -buildTarget Android
