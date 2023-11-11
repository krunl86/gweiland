# gweiland

Demo application for listing crypto list from open api. this project is only for interview preparation

# Tasks

In this perticular Interview task I have done Functionality like

- Fetching Crypto List from Open API
- Filtering Crypto List based on Price and Value Change in 24 hr.
- List if sorted by Market cap
- On Tap on Crypto List update Card

# Additional Feature

In extra add ons on this single page are :

- Added Internationalization for 4 languages (English, German, Arabic, Hindi)
- Added Light/Dark theme integration
- Added Search Feature on Existing List
- Added Basic simple Animation On bottombar Globe.

# How to change Language ?

To Perform this action user has to tap on notification icon

- due to time constraint and design unavaibility have added this feature on setting button😬

- user will get language option bellow Appbar from where he can change language. - To dismiss or hide language selector user can tap notification icon again.

# How to change Theme ?

To Perform this action user hase to tap on setting icon

- As Again due time constraint and design unavaibility have added this feature on setting button😬

# Video Link Of App Recording

https://drive.google.com/file/d/1yiq7TQHVF45oiGTUvcWfnS_e9fdEly-O/view?usp=sharing

# Project Setup

- I have used project setup for MVP structure. along with use of riverpod.
- Have feature sentric approch for folder structure. where all new feature have their separate MVP folder structure.
- As of now we have only one screen cum feature of CryptoList so folder structure is simple

# Exra Information

- I have created separate packages for internationlization for common use for centralized language support for multiple sub app
- I have created network request separte from main app to provide same apis for other or sub apps if any we include in feature
- I have made common widgets as well for separate package along with theme data and AssetManagement for icons and common images.
- Also for routing management i have integrated GoROuter but have not done much user in this demo app as i have only one page to work on.

# In Last

- do let me know your feedback for this setup. love to hear from expert to evoluate my knowledge an understanding
