# bash_scripts

### Initial Script:
```
!ls -l /content/Basics/
!chmod +x /content/Basics/*
!sed -i 's/\r$//' /content/Basics/*

!chmod 777 "/content/Basics"
!ls -ld "/content/Basics"
```
---------------------------------
```
!bash /content/Basics/01_if.sh
```
---------------------------------
```
!bash /content/Basics/02_loop.sh
```
---------------------------------
```
!bash /content/Basics/03_file.sh
```
---------------------------------
```
!bash /content/Basics/04_input_output.sh

!cat /content/Basics/04_op.log
!cat /content/Basics/04_combined.log
!cat /content/Basics/04_error.log
```
---------------------------------
```
!bash /content/Basics/05_string.sh
```
---------------------------------
```
!bash /content/Basics/06_disk_usage_report.sh
```
---------------------------------
```
!bash /content/Basics/07_case.sh
```
---------------------------------
```
!bash /content/Basics/08_exit_status.sh
```
---------------------------------
```
!bash /content/Basics/09_posix_vs_bash.sh
```
---------------------------------
```
!bash /content/Basics/10_disk_monitor.sh
```
---------------------------------
```
!bash /content/Basics/11_colab_test.sh
```
---------------------------------
```
!bash /content/Basics/12_functions.sh
```
---------------------------------
```
!bash /content/Basics/13_arrays.sh
```
---------------------------------
```
!bash /content/Basics/14_arithmetic.sh
```
---------------------------------
```
!bash /content/Basics/15_parameters.sh one two three four
```
---------------------------------
```
!bash /content/Basics/16_heredoc.sh
```
---------------------------------
```
!bash /content/Basics/17_traps.sh
```
---------------------------------
```
!bash /content/Basics/18_cron_demo.sh
```
---------------------------------
```
!bash /content/Basics/19_save_to_file.sh
```
---------------------------------
```
!bash /content/Basics/20_save_with_flock.sh
```
---------------------------------
```
!bash /content/Basics/20_save_with_flock.sh
```
---------------------------------
```
!bash /content/Basics/21_redirection.sh
```
---------------------------------
```
!bash /content/Basics/22_variables.sh
```
---------------------------------
```
!bash /content/Basics/23_posargs.sh dog cat horse
```
---------------------------------
```
!bash /content/Basics/24_array.sh
```
---------------------------------
```
!bash /content/Basics/25_readpipe.sh
```
---------------------------------
```
!cat /etc/passwd |bash /content/Basics/25_readpipe.sh
```
---------------------------------
```
!bash /content/Basics/26_getopts.sh -a testarg dog cat horse
```
---------------------------------
```
!bash /content/Basics/26_getopts.sh -b
```
---------------------------------
```
!bash /content/Basics/26_getopts.sh -a hello
```
---------------------------------
```
!bash /content/Basics/26_getopts.sh -a -c test # triggers ":)"
```
---------------------------------
```
!bash /content/Basics/26_getopts.sh            # triggers \?
```
---------------------------------
```
!bash /content/Basics/99_best_practices.sh
```


---

### 🐚 **What is Bash?**

**Bash** (short for **Bourne Again SHell**) is a **command-line shell** and **scripting language** used in **Linux and Unix-based systems**.
Think of it as the tool you use to "talk" to your computer using typed commands instead of clicking.

* It's used to **run commands**, **automate tasks**, and **write scripts** (mini programs).
* Commonly used for:

  * Automating software installs
  * Moving and editing files
  * Monitoring system performance
  * Writing startup scripts or cron jobs

📁 Example command:

```bash
echo "Hello, world!"
```

---

### 💻 **What is an Operating System (OS)?**

An **Operating System (OS)** is the **core software** that manages your **computer’s hardware** and **runs applications**.

* It acts like a **bridge between you and the machine**.
* Examples:

  * **Windows** (by Microsoft)
  * **macOS** (by Apple)
  * **Linux** (used in servers, and comes in versions like Ubuntu, CentOS, Fedora)

🧠 The OS manages:

* Memory
* Files and storage
* Programs
* Network connections
* User interfaces

---

### 🔗 In Context:

* **Bash** runs **inside** the **OS** (usually Linux or Unix).
* Bash is the **tool you use** within the **OS** to control and automate things.

### 🧱 What is a Unix-Based System?

A **Unix-based system** is any **operating system** that is either **derived from**, **inspired by**, or **compatible with** the original **UNIX OS** created in the 1970s at AT\&T's Bell Labs.

#### 🔑 Key Idea:

Unix introduced the idea of **small, powerful tools** that can be combined together, a **multi-user**, **multitasking** system with a **command-line interface** (shell). This philosophy still powers most modern systems.

---

### 🧑‍💻 Common Unix-Based Systems

| System          | Description                                             |
| --------------- | ------------------------------------------------------- |
| **Linux**       | Open-source Unix-like OS (e.g., Ubuntu, CentOS, Fedora) |
| **macOS**       | Apple’s OS, built on a Unix-certified base (Darwin)     |
| **BSD**         | True Unix descendant (e.g., FreeBSD, OpenBSD)           |
| **Solaris**     | Formerly from Sun Microsystems, Unix-certified          |
| **AIX / HP-UX** | Proprietary Unix systems used in enterprise servers     |

---

### ⚙️ Features of Unix-Based Systems

* **Multi-user**: Multiple people can use the same system at the same time
* **Multitasking**: Can run multiple programs/processes at once
* **Shell access**: Command-line interface like **Bash**, **Zsh**, or **sh**
* **File-based everything**: Devices, settings, and data are represented as files
* **Security & permissions**: Strong user-level access control

---

### 🧩 Unix vs. Unix-Like vs. Unix-Based

| Term           | What it Means                        | Example        |
| -------------- | ------------------------------------ | -------------- |
| **Unix**       | Original, certified Unix OS          | Solaris        |
| **Unix-based** | Derived from certified Unix code     | macOS          |
| **Unix-like**  | Not certified, but behaves like Unix | Linux, Android |

---

### ✅ Summary

A **Unix-based system** is a powerful, stable, and secure OS built on Unix principles. 
If you're using Linux or macOS, you're already using one!

---

### 🧠 The Key Difference

#### 🔹 **Linux Commands**

These are **standalone programs** installed on a Unix/Linux system.
Examples:

* `ls`, `cat`, `cp`, `mv`, `grep`, `awk`, `sed`, `find`, `top`, `chmod`, `mkdir`
  These live in directories like `/bin`, `/usr/bin`, etc.

#### 🔹 **Bash (Bourne Again Shell)**

Bash is a **command-line shell and scripting language** — it's a *program* that lets you run those Linux commands, write scripts, and automate workflows.

Think of Bash as your **interpreter** — it:

* Interprets your commands (like `ls`)
* Supports **scripting features**: loops (`for`, `while`), variables, conditionals (`if`, `case`), arrays, and functions

---

### 🧩 How They Work Together

* You **enter Linux commands** into a **Bash shell**.
* Bash then **finds and executes** those commands.
* When writing **Bash scripts**, you’re combining logic (`if`, `while`, `functions`) with those Linux commands.

For example:

```bash
#!/bin/bash

for file in *.txt; do
  echo "Processing $file"
  cat "$file"
done
```

* `for`, `do`, `echo` → Bash features
* `cat` → a Linux command

---

### 🧪 Analogy

Think of **Bash as your programming language**, and **Linux commands as the built-in tools** you can call from that language.

---

### ✅ Summary

| Concept           | Description                                              |
| ----------------- | -------------------------------------------------------- |
| **Linux command** | A system utility like `ls`, `grep`, etc.                 |
| **Bash**          | A shell that lets you run and script with those commands |

---
