# Tasks

The best way to get good at using a tool is by doing. Your job is to get through the following 20 tasks, which are ordered by difficulty. 

[Note:] You should be showing a TA your check-offs (proof you did the task correctly) as you go along. You should show all commands you ran to complete the task.

### Basics
1. Print your current working directory.

2. Create a directory called `tmp1` in this repository.  
    **Bonus:** Create the following directory structure **with one command:**
    ```
    .
    └── These/
        └── are/
            └── a /
                └── lot/
                    └── of/
                        └── directories/
                            └── hippopotamus
    ```
    Show the output of `tree` to a TA for credit (you may need to install the `tree` package as it is not on some Linux installs by default).

3. **[Groups]** Create a group called `lonely` and add yourself as the only user to that group.

4. **[Permissions]** Create a file `test.txt`. It should have the following contents:
    ```
    abc123
    ```
    Change the permission of the file such that:  
    1. The creator of the file can read and write, but not execute it.
    2. The group owner of the file may write but not execute or read it.
    3. All other users may read, write, and execute it.

5. Determine the number of lines, characters, and words in `research`.  
    *Hint: use* `wc`

6. Install the package `cowsay` via `apt`.

7. Let's be honest with ourselves, whoever named a lot of these utilities like `cat` and `ls` could have done a better job. Create an alias for any 2 utilities and show to a TA that your aliases work.

### Turning up the heat

8. **[Scripting]** Create a bash script that does the following:
    1. Takes in a variable number of arguments.
    2. Outputs the number of arguments passed to the script.
    **Example:**
    ```bash
    > ./task6 a b c d e
    > 5
    ```
9. **[Scripting]** Take a look at `bang.py`. Modify the file so that I can run it **exactly** as such:
    ```
    ./bang.py
    ```

10. Write a bash script that takes the system's current `uptime` and:
    1. If the uptime is under 2 hours (120 minutes), the script outputs:
    ```
    <USER> touches grass
    ```
    2. Otherwise, the script outputs:
    ```
    <USER> is chronically online
    ```
    Where \<USER> is your username.  
    *Hint:* Use `awk '{print int($1/60)}' /proc/uptime` to get the uptime of the system in minutes.


11. I'm trying to find and install a package that lets me monitor my system usage, but I can't remember what it's called. I think the package name started with `"hto"`? And I remember the description talking about *processes*. Can you help me find this package?

12. Explain what `pushd` and `popd` do to a TA, and explain why they might be useful.

13. Take the most recent assignment you did for a class, put it in a directory called `assignment`, and send it to your home directory of a GT server (CS majors use the [PACE clusters](), ECE majors can use the [linlabs servers](https://help.ece.gatech.edu/labs/names)), using the `scp` command. The directory structure should remain as-is (i.e. )

14. Explain to a TA the meaning/purpose of `dev`, `etc`, `home`, and `boot` in the Unix filesystem standard. The filesystem standard is a recommended setup for filesystems on Unix machines, and each directory in the filesystem root `/` has a purpose. 

15. Demonstrate the following to a TA:  
    1. Begin downloading [this](https://ash-speed.hetzner.com/10GB.bin) file. (*Hint: Use* `wget`)
    2. This file is pretty big, so put it in the background.
    3. Open a `python` shell and print a list of even numbers in the range [1, 100].
    4. Exit the python shell.
    5. Check on the download. Foreground the download process so we can see how far it is.

16. Take a look at `broken.sh`. The intended behavior of the script is to store the Fibonacci sequence in full up to the `n`th item.
    1. Identify why the script is not behaving as intended.
    2. Fix the issue.
    3. Show the modified script to a TA and explain the reason for the issue.

### Time to cook

17. Run config files (typically text files that start with a `.` and end with a `rc`) are meant to serve as a "settings" file for a tool. The most common instance of these is `.bashrc` which allows you to change what happens when you open your shell.  
    Your task is to modify the "prompt" in your shell (i.e. the text that appears whenever you hit the `Enter` key) to include the following information, in any format you like:
    1. Current time + date
    2. Current directory
    3. Git branch (if you are in a Git repository)


    Present these 3 items with some coloring (look up "ANSI colors" if you aren't sure how to do this).\
    **Bonus:** Using a web API of your choice and the `cURL` tool (which you may need to install), include a short welcome message every time you log into a new shell. For example, pull from a [weather api](https://open-meteo.com/) and show the weather for tomorrow.

18. `ssh` (Secure SHell) is an extremely common tool for logging into other computers remotely. You may be logging into a machine for work or otherwise frequently which makes entering your password, the user you're logging into, and the hostname every time very annoying.  
    Create an `ssh` configuration for a GT server (see task 12) so that you can log in to the server like so, **without** having to enter your password:
    ```
    ssh gt-server
    ```
    Demonstrate a password-less login to a TA.
    **Bonus:** Sometimes we also want to use a GUI program across an SSH connection. Enable X-forwarding in the ssh config file and demonstrate a GUI program running on the GT server to a TA.

19. **[Cron jobs]** One of the reasons Linux systems are so useful is that they are highly configurable to do exactly what you want them to. One tool to get what we want are `cron jobs`, which let us schedule tasks either on a system reboot or with some periodicity (e.g. every `x` minutes/days/years/etc.)  
    This task is relatively open-ended. Get creative and create a cron job that does something interesting. Here are some ideas:  
    * Backup any sensitive files to a PC you might have upon every reboot.
    * Send a random YouTube video to a friend at a random time of day, everyday.
    * Check to see if your favorite podcast has any new episodes everyday.

    The best idea we see will get some recognition (and maybe a prize)!