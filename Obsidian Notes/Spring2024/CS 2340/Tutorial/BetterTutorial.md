# Install Android Studio
**Step 1:** Install android studio from the following link: [Android Studio](https://developer.android.com/studio/)
- If using a Mac, make sure to select the correct chip between the Intel and Apple chip! See the following link if you don’t know which chip you have. [Intel vs Mac](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwifgbm2o_mDAxXOhu4BHQ3TAJgQFnoECBMQAQ&url=https%3A%2F%2Fwww.howtogeek.com%2F706226%2Fhow-to-check-if-your-mac-is-using-an-intel-or-apple-silicon-processor%2F&usg=AOvVaw2Wu_bHfpRxqgXFBodnyKTE&opi=89978449)

# Creating the New Project
**Step 2:** Create a new projects, being sure to select “Basic Views Activity” as your template and selecting *Java as your language* and *Groovy DSL as your build configuration language* 

![[BasicViews.png|500]]![[ProjectSettings.png|500]]
**Step 3:**  You should now see something similar to the following screen below, however it may take up to a couple minutes to load the project on the first open. Once it has loaded, click the run button (green right arrow) on the top right. Now, you a new Pixel device emulator will open up and you will see the following below. Feel free to explore around the basic application.
![[FirstLookImage.png|600]]![[FirstDeviceOpen.png|300]]

# Understanding the Folder Layout of Your Project
At first glance, the project structure may seem very convoluted and confusing. Below, we will explain what all the relevant (for this tutorial) folders are. 

***/app/manifests/AndroidManifest.xml***: This file contains metadata and important information about all the components in your application.
***/app/java/com.example.ProjectName***: This folder contains the source code for your application.
***/app/res/layout***: This folder contains the XML code for each view in your application. The XML code is how we layout and style our pages.
*add more as needed*

# Understanding the Layout Editor
In order to emulate having different screens in Android Studio, we create different **fragments**. If you run the project, you will see that the first screen is compose of the First Fragment. 