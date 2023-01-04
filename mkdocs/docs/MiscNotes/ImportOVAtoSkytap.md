# Import OVA to Skytap

>This work has **ALREADY BEEN DONE**.  You don't need to do this.  I just wanted to document the procedure for future reference.

Unfortunately, the OVA format provided has a VMware hardware version higher than what is supported in Skytap.  This means we 
need to "reduce" that number.  Here are the steps I took to do so.

## Modify the OVA file contents

1. It is possible this process will not work properly, think typo, leaving you to doing it again.  So, make a directory and copy the OVA file into that directory.

    `mkdir test`
    `cp <filename>.ova test`
    `cd test`

2. Extract the OVA.  The OVA file is just a tar file.  So `tar xvf <filename>` works fine.

3. Delete the source OVA file as it is no longer needed and will make the future re-tarring of the files more complicated with it being here.  `rm <filename>.ova`

4. The OVF file contains the configuration information (much like a VMX file for a normal VM).  Edit this file. `nano <filename>.ovf`

5. Find the reference to **vmx-**.  The number after this is what we are after.  Change that number to **10**.  **Save** the changes and exit your editor.

6. Delete the MF file as its SHA hashes, at least for the ovf file, are now wrong.  `rm *.mf`

7. Re-tar the files into a file.  `tar cvzf <filename>.ova zs*`


## Upload the OVA file to Skytap

1. Using the **VM Imports** tab in the **Environments** section of the Skytap interface click **Create VM Import Job**.

2. Provide an **Environment Name**, **Data Source** (probably sftp), and **Destination Region**.  Click **Save Import Job**.

3. Now use the provided **Data Source** you selected to upload the OVA file.

4. Once the upload is complete finish out the steps in the VM Import Job window.  Once the file has been verified by Skytap it will become available to you as an Asset.
