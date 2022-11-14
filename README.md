# robot-rpa-basic-vcode

Source: [Robocorp doc - Visual Studio Code](https://robocorp.com/docs/developer-tools/visual-studio-code/overview)
 
Robocorp basic tutorial using Visual Code, including the instructionsfor:
- installing Robocorp vcode extensions
- create a simple tasks
- deploy the task to Robocorp Control Room

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

- Customize vcode for 
  - From the top menu, select: File > Preferences > Settings
  - Search for "Format on Save" setting
  - If not already, check "Format a file on save"


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

- Checkout the "code completion"


## RUN the robot locally

- Run the robot locally using the Robocorp extension
  - From the top menu, select: View > Command Pallete, and enter "Robocorp"
  - From the list, select "Robocorp: Run Robot"

- When the robot runs, the vcode debug console will show the messages

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

