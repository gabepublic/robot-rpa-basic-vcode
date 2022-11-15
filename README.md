# robot-rpa-basic-vcode

Source: [Robocorp doc - Visual Studio Code](https://robocorp.com/docs/developer-tools/visual-studio-code/overview)
 
Robocorp basic tutorial using Visual Code, including the instructionsfor:
- installing Robocorp vcode extensions
- create a simple tasks
- deploy the task to Robocorp Control Room


**NOTES:**
The Robocorp extension for Visual Studio Code enables:
- create, run, and debug robots, 
- publish to the Robocorp cloud Control Room, 
- read secrets from a Control Room vault (local or cloud);
  [Use a vault for secrets](https://robocorp.com/docs/development-guide/variables-and-secrets/vault) 
- use work items; [Using work items](https://robocorp.com/docs/development-guide/control-room/work-items)
- locate UI elements in browsers and desktop applications using a 
  visual inspector; [Locating and targeting user interface elements in Visual Studio Code](https://robocorp.com/docs/developer-tools/visual-studio-code/locating-and-targeting-UI-elements)
- other powerful features.


## SETUP

- Install Visual Studio Code (vcode)

- Then, install vcode extensions: `Robocorp Code`, and 
  `Robot Framework Language Server`
  - For details, [Visual Studio Code](https://robocorp.com/docs/developer-tools/visual-studio-code/overview)

- Customize vcode for 
  - From the top menu, select: File > Preferences > Settings
  - Search for "Format on Save" setting
  - If not already, check "Format a file on save"

- Checkout the Robocorp code extension UI in vcode 

## CREATE A NEW ROBOT PROJECT

- In vcode, open a new empty Folder
  - From the top menu, select: File > Open Folder
  - NOTE: it's necessary to close an existing folder, and open an `EMPTY`
    folder, otherwise the next step will fail

- Create a new Robot project template using the Robocorp extension
  - From the top menu, select: View > Command Pallete, and enter "Robocorp"
  - From the list, select "Robocorp: Create Robot"
  - Next, select the template "Standard Robot Framework Template"
  - Last, give a name to the robot project

- Review the files: `robot.yaml` and `conda.yaml`, which is the config
  files for the robot, and the environment

- The `output` folder will contain the generated artifacts after 
  running the robot task(s) 


## CREATE Robot Task

- The `task.robot` file specifies the instructions for the robot;
  in this tutorial, it will be very simple steps:
  - Open a browser
  - take a screenshot
  - Finally, close the browser

- The `task.robot` file has been completed

- Also CHECKOUT: "code completion", "Robot Framework Interactive Console",


## RUN the robot locally

- We will use the Robocorp extension to run the robot. The extension
  is configured with the `robot.yaml` file. There are two tasks defined
  in the `robot.yaml` file as shown below. The difference is in the 
  robot task file, `*.robot` vs `tasks.robot`. The former will execute
  all the `.robot` files, versus only the `tasks.robot` file for the 
  latter. The purpose is to demonstrate the ability to define multiple
  tasks in the `robot.yaml` file, and when calling the 
  "Robocorp: Run Robot" below, there is an extra step to choose the task.
```
tasks:
  Run all tasks:
    shell: python -m robot --report NONE --outputdir output --logtitle "All Task log" *.robot

  Run a single task:
    shell: python -m robot --report NONE --outputdir output --logtitle "Single Task log" tasks.robot
[...]
```  

- Run the robot locally using the Robocorp extension
  - From the top menu, select: View > Command Pallete, and enter "Robocorp"
  - From the list, select "Robocorp: Run Robot"
  - From the task list, select a task.

- When the robot runs, the vcode debug console will show the messages
```
Microsoft Windows [Version 10.0.19044.2193]
(c) Microsoft Corporation. All rights reserved.

C:\zCodes\robot-rpa-basic-vcode> cmd /C "c:\Users\<username>\AppData\Local\robocorp\temp\4d65822107fce832\rf-ls-run\run_env_00_x36t4_5d.bat c:\Users\<username>\.vscode\extensions\robocorp.robocorp-code-0.39.0\bin\rcc.exe task run --robot c:\zCodes\robot-rpa-basic-vcode\robot.yaml --space vscode-01 --task "Run all tasks" --controller RobocorpCode "
"c:\\zCodes\\robot-rpa-basic-vcode\\robot.yaml" as robot.yaml is:
# For more details on the format and content:
# https://github.com/robocorp/rcc/blob/master/docs/recipes.md#what-is-in-robotyaml

tasks:
  # Task names here are used when executing the bots, so renaming these is recommended.      
  Run all tasks:
    shell: python -m robot --report NONE --outputdir output --logtitle "Task log" tasks.robot

condaConfigFile: conda.yaml

environmentConfigs:
  - environment_windows_amd64_freeze.yaml
  - environment_linux_amd64_freeze.yaml
  - environment_darwin_amd64_freeze.yaml
  - conda.yaml

artifactsDir: output

PATH:
  - .
PYTHONPATH:
  - .

ignoreFiles:
  - .gitignore

####  Progress: 01/13  v11.30.0     0.033s  Fresh [shared mode] holotree environment a00e12d3-9b74-42bb-058b-538d0767ae47.
####  Progress: 02/13  v11.30.0     0.006s  Holotree blueprint is "2fabf9c4e4a82ae7" [windows_amd64].
####  Progress: 12/13  v11.30.0     0.669s  Restore space from library [with 3 workers].
Installation plan is: c:\ProgramData\robocorp\ht\e98a75f_b1f3c24_1c0bc041\rcc_plan.log
Environment configuration descriptor is: c:\ProgramData\robocorp\ht\e98a75f_b1f3c24_1c0bc041\identity.yaml
####  Progress: 13/13  v11.30.0     0.734s  Fresh holotree done [with 3 workers].
Wanted  Version  Origin  |  No.  |  Available                           Version       Origin       |  Status
------  -------  ------  +  ---  +  ---------                           -------       ------       +  ------
-       -        -       |    1  |  Authlib                             1.1.0         pypi         |  N/A
-       -        -       |    2  |  Pillow                              9.3.0         pypi         |  N/A
-       -        -       |    3  |  PyPDF2                              1.28.6        pypi         |  N/A
-       -        -       |    4  |  PySocks                             1.7.1         pypi         |  N/A
-       -        -       |    5  |  PyYAML                              5.4.1         pypi         |  N/A
-       -        -       |    6  |  Pygments                            2.13.0        pypi         |  N/A
-       -        -       |    7  |  async-generator                     1.10          pypi         |  N/A
-       -        -       |    8  |  attrs                               22.1.0        pypi         |  N/A
-       -        -       |    9  |  beautifulsoup4                      4.11.1        pypi         |  N/A
-       -        -       |   10  |  bzip2                               1.0.8         conda-forge  |  N/A
-       -        -       |   11  |  ca-certificates                     2022.9.24     conda-forge  |  N/A
-       -        -       |   12  |  cached-property                     1.5.2         pypi         |  N/A
-       -        -       |   13  |  certifi                             2022.9.24     pypi         |  N/A
-       -        -       |   14  |  cffi                                1.15.1        pypi         |  N/A
-       -        -       |   15  |  chardet                             3.0.4         pypi         |  N/A
-       -        -       |   16  |  charset-normalizer                  2.1.1         pypi         |  N/A
-       -        -       |   17  |  click                               8.1.3         pypi         |  N/A
-       -        -       |   18  |  colorama                            0.4.6         pypi         |  N/A
-       -        -       |   19  |  comtypes                            1.1.11        pypi         |  N/A
-       -        -       |   20  |  cryptography                        37.0.4        pypi         |  N/A
-       -        -       |   21  |  decorator                           5.1.1         pypi         |  N/A
-       -        -       |   22  |  defusedxml                          0.7.1         pypi         |  N/A
-       -        -       |   23  |  dnspython                           2.2.1         pypi         |  N/A
-       -        -       |   24  |  docutils                            0.19          pypi         |  N/A
-       -        -       |   25  |  et-xmlfile                          1.1.0         pypi         |  N/A
-       -        -       |   26  |  exceptiongroup                      1.0.1         pypi         |  N/A
-       -        -       |   27  |  exchangelib                         4.8.0         pypi         |  N/A
-       -        -       |   28  |  fire                                0.4.0         pypi         |  N/A
-       -        -       |   29  |  fonttools                           4.38.0        pypi         |  N/A
-       -        -       |   30  |  fpdf2                               2.5.7         pypi         |  N/A
-       -        -       |   31  |  furl                                2.1.3         pypi         |  N/A
-       -        -       |   32  |  graphviz                            0.13.2        pypi         |  N/A
-       -        -       |   33  |  h11                                 0.14.0        pypi         |  N/A
-       -        -       |   34  |  htmldocx                            0.0.6         pypi         |  N/A
-       -        -       |   35  |  hubspot-api-client                  4.0.6         pypi         |  N/A
-       -        -       |   36  |  idna                                3.4           pypi         |  N/A
-       -        -       |   37  |  importlib-metadata                  4.13.0        pypi         |  N/A
-       -        -       |   38  |  isodate                             0.6.1         pypi         |  N/A
-       -        -       |   39  |  java-access-bridge-wrapper          0.9.5         pypi         |  N/A
-       -        -       |   40  |  jsonpath-ng                         1.5.3         pypi         |  N/A
-       -        -       |   41  |  jsonschema                          4.17.0        pypi         |  N/A
-       -        -       |   42  |  libffi                              3.4.2         conda-forge  |  N/A
-       -        -       |   43  |  libsqlite                           3.39.4        conda-forge  |  N/A
-       -        -       |   44  |  libzlib                             1.2.13        conda-forge  |  N/A
-       -        -       |   45  |  lxml                                4.9.1         pypi         |  N/A
-       -        -       |   46  |  mss                                 6.1.0         pypi         |  N/A
-       -        -       |   47  |  netsuitesdk                         1.24.0        pypi         |  N/A
-       -        -       |   48  |  notifiers                           1.3.3         pypi         |  N/A
-       -        -       |   49  |  ntlm-auth                           1.5.0         pypi         |  N/A
-       -        -       |   50  |  oauthlib                            3.2.2         pypi         |  N/A
-       -        -       |   51  |  openpyxl                            3.0.10        pypi         |  N/A
-       -        -       |   52  |  openssl                             3.0.7         conda-forge  |  N/A
-       -        -       |   53  |  orderedmultidict                    1.0.1         pypi         |  N/A
-       -        -       |   54  |  outcome                             1.2.0         pypi         |  N/A
-       -        -       |   55  |  packaging                           21.3          pypi         |  N/A
-       -        -       |   56  |  pdfminer.six                        20201018      pypi         |  N/A
-       -        -       |   57  |  pip                                 22.1.2        conda-forge  |  N/A
-       -        -       |   58  |  platformdirs                        2.5.3         pypi         |  N/A
-       -        -       |   59  |  ply                                 3.11          pypi         |  N/A
-       -        -       |   60  |  psutil                              5.9.4         pypi         |  N/A
-       -        -       |   61  |  pycparser                           2.21          pypi         |  N/A
-       -        -       |   62  |  pynput-robocorp-fork                4.0.0         pypi         |  N/A
-       -        -       |   63  |  pyotp                               2.7.0         pypi         |  N/A
-       -        -       |   64  |  pyparsing                           3.0.9         pypi         |  N/A
-       -        -       |   65  |  pyperclip                           1.8.2         pypi         |  N/A
-       -        -       |   66  |  pyrsistent                          0.19.2        pypi         |  N/A
-       -        -       |   67  |  python                              3.9.13        conda-forge  |  N/A
-       -        -       |   68  |  python-dateutil                     2.8.2         pypi         |  N/A
-       -        -       |   69  |  python-docx                         0.8.11        pypi         |  N/A
-       -        -       |   70  |  python-dotenv                       0.21.0        pypi         |  N/A
-       -        -       |   71  |  pytz                                2022.6        pypi         |  N/A
-       -        -       |   72  |  pywin32                             303           pypi         |  N/A
-       -        -       |   73  |  pywinauto                           0.6.8         pypi         |  N/A
-       -        -       |   74  |  requests                            2.28.1        pypi         |  N/A
-       -        -       |   75  |  requests-file                       1.5.1         pypi         |  N/A
-       -        -       |   76  |  requests-ntlm                       1.1.0         pypi         |  N/A
-       -        -       |   77  |  requests-oauthlib                   1.3.1         pypi         |  N/A
-       -        -       |   78  |  requests-toolbelt                   0.10.1        pypi         |  N/A
-       -        -       |   79  |  robocorp-dialog                     0.5.3         pypi         |  N/A
-       -        -       |   80  |  robotframework                      5.0.1         pypi         |  N/A
-       -        -       |   81  |  robotframework-pythonlibcore        3.0.0         pypi         |  N/A
-       -        -       |   82  |  robotframework-requests             0.9.4         pypi         |  N/A
-       -        -       |   83  |  robotframework-sapguilibrary        1.1           pypi         |  N/A
-       -        -       |   84  |  robotframework-seleniumlibrary      6.0.0         pypi         |  N/A
-       -        -       |   85  |  robotframework-seleniumtestability  2.0.0         pypi         |  N/A
-       -        -       |   86  |  rpaframework                        17.4.0        pypi         |  N/A
-       -        -       |   87  |  rpaframework-core                   10.0.1        pypi         |  N/A
-       -        -       |   88  |  rpaframework-dialogs                4.0.0         pypi         |  N/A
-       -        -       |   89  |  rpaframework-pdf                    5.0.0         pypi         |  N/A
-       -        -       |   90  |  rpaframework-windows                6.1.0         pypi         |  N/A
-       -        -       |   91  |  selenium                            4.6.0         pypi         |  N/A
-       -        -       |   92  |  setuptools                          65.5.1        conda-forge  |  N/A
-       -        -       |   93  |  simple-salesforce                   1.12.2        pypi         |  N/A
-       -        -       |   94  |  six                                 1.16.0        pypi         |  N/A
-       -        -       |   95  |  sniffio                             1.3.0         pypi         |  N/A
-       -        -       |   96  |  sortedcontainers                    2.4.0         pypi         |  N/A
-       -        -       |   97  |  soupsieve                           2.3.2.post1   pypi         |  N/A
-       -        -       |   98  |  sqlite                              3.39.4        conda-forge  |  N/A
-       -        -       |   99  |  svg.path                            6.2           pypi         |  N/A
-       -        -       |  100  |  tenacity                            8.1.0         pypi         |  N/A
-       -        -       |  101  |  termcolor                           2.1.0         pypi         |  N/A
-       -        -       |  102  |  tk                                  8.6.12        conda-forge  |  N/A
-       -        -       |  103  |  tqdm                                4.64.1        pypi         |  N/A
-       -        -       |  104  |  trio                                0.22.0        pypi         |  N/A
-       -        -       |  105  |  trio-websocket                      0.9.2         pypi         |  N/A
-       -        -       |  106  |  tweepy                              3.10.0        pypi         |  N/A
-       -        -       |  107  |  tzdata                              2022f         conda-forge  |  N/A
-       -        -       |  108  |  tzdata                              2022.6        pypi         |  N/A
-       -        -       |  109  |  tzlocal                             2.1           pypi         |  N/A
-       -        -       |  110  |  ucrt                                10.0.22621.0  conda-forge  |  N/A
-       -        -       |  111  |  uiautomation                        2.0.17        pypi         |  N/A
-       -        -       |  112  |  urllib3                             1.26.12       pypi         |  N/A
-       -        -       |  113  |  vc                                  14.3          conda-forge  |  N/A
-       -        -       |  114  |  vs2015_runtime                      14.32.31332   conda-forge  |  N/A
-       -        -       |  115  |  webdriver-manager                   3.8.4         pypi         |  N/A
-       -        -       |  116  |  wheel                               0.38.4        conda-forge  |  N/A
-       -        -       |  117  |  wrapt                               1.14.1        pypi         |  N/A
-       -        -       |  118  |  wsproto                             1.2.0         pypi         |  N/A
-       -        -       |  119  |  xlrd                                2.0.1         pypi         |  N/A
-       -        -       |  120  |  xlutils                             2.0.0         pypi         |  N/A
-       -        -       |  121  |  xlwt                                1.3.0         pypi         |  N/A
-       -        -       |  122  |  xz                                  5.2.6         conda-forge  |  N/A
-       -        -       |  123  |  zeep                                4.2.0         pypi         |  N/A
-       -        -       |  124  |  zipp                                3.10.0        pypi         |  N/A
------  -------  ------  +  ---  +  ---------                           -------       ------       +  ------
Wanted  Version  Origin  |  No.  |  Available                           Version       Origin       |  Status

--
[ WARN ] This is a deprecated import that will be removed in favor of RPA.Browser.Selenium
==============================================================================
Tasks :: Template robot main suite.
==============================================================================
Open browser and take a screenshot                                    | PASS |
------------------------------------------------------------------------------
Tasks :: Template robot main suite.                                   | PASS |
1 task, 1 passed, 0 failed
==============================================================================
Output:  c:\zCodes\robot-rpa-basic-vcode\output\output.xml
Log:     c:\zCodes\robot-rpa-basic-vcode\output\log.html
OK.
```

- After the robot process ends, the `output` folder will contain the
  generated artifacts: `log.html`, `output.xml`, and log files
  - Open the `log.html` file using a browser

- The screenshot `png` image file can be found on the root folder   


## RUN the robot in the Robocorp cloud Control Room

- If not already, create a Robocorp account - [signup](https://id.robocorp.com/signup)

- Open a browser, and Login into the account

- Then, go back to vcode, and link to Robocorp cloud Control Room
  - From the top menu, select: View > Command Pallete, and enter "Robocorp"
  - From the list, select "Robocorp: Link to Control Room"
  - Next, just press enter to be routed to the browser robocorp page
    "Access Credential" 
  - On the "Access Credential" page, either select a credential, or
    add a new credential
  - From the selected credential, copy the credential. The credential
    is made up of numbers & letters
  - Copy the credential to the vcode, and press enter
  - Vcode is now linked to Robocorp cloud control room

- Next, upload the robot tasks to the control room
  - From the top menu, select: View > Command Pallete, and enter "Robocorp"
  - From the list, select "Robocorp: Upload Robot to the Control Room"
  - Next, select from the available workspace 
  - Next, select "Create a new robot", and provide a name

- Go back to the browser, Robocorp control room.

- The robot task was uploadd to the control room > Workspace > Robots

- To run the robot task, it needs to be added as a Step into the Process
  - Create a new Process, or modify existing process
  - Add the step, and select the uploaded robot

- Next, Run the process

- Review the results

