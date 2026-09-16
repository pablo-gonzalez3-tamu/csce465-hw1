I used ChatGPT as a support tool while completing this assignment. My main use of AI was for clarification, troubleshooting, and organization rather than having it complete the assignment for me.

I used ChatGPT to help me understand unfamiliar commands and concepts in the Ubuntu/OpenClaw environment. For example, I asked for explanations of shell commands, directory structures, script behavior, and reasons why certain commands were not working. I also used it to troubleshoot issues such as incorrect quotation marks or dashes in terminal commands and problems getting OpenClaw running again after returning to the virtual machine.

I also used ChatGPT to help explain security concepts related to the assignment. This included understanding prompt injection, identifying where untrusted data could be treated as instructions, understanding authorization boundaries, and reviewing my reasoning about the OpenClaw memory-tool security advisory. In these cases, I used the explanations to improve my own understanding and then wrote or revised the assignment material based on that understanding.

For the written deliverables, I used ChatGPT to help organize information I had already collected, identify which material belonged in files such as `injection-experiment.md`, and review drafts for clarity. I also asked it to summarize portions of our previous conversations so I could maintain an AI interaction log.

I verified commands and results in my own virtual machine and relied on the actual outputs from my OpenClaw experiments, scripts, logs, and evidence files for the conclusions in my submission. I remained responsible for running the experiments, checking the behavior of the system, interpreting the results, and deciding what to include in the final submission.


# AI Interaction Log

## Environment and OpenClaw Setup

**User Prompt:**
“If I closed it, how do I go back to where I was?”

**Assistant Response Summary:**
Explained how to reopen the Ubuntu terminal or VM environment, return to the CSCE465 homework directory, and verify the current working directory before continuing.

---

**User Prompt:**
“Why didn’t this work: `openclaw agent –-agent main -m “create a text file in this directory named ‘hello.txt’ that says hello in 15 languages.”`”

**Assistant Response Summary:**
Explained that the command contained typographic dashes and quotation marks that the shell may not interpret correctly. Provided a corrected command using standard `--` hyphens and straight quotation marks and explained why the original formatting failed.

---

**User Prompt:**
“Give me a list of public web pages, not loopback or private addresses.”

**Assistant Response Summary:**
Provided examples of normal public websites that could be used for harmless web-fetch testing instead of localhost, loopback, or private-network addresses.

---

**User Prompt:**
“I just got back into VMware from stepping away. Give me steps to get back into it.”

**Assistant Response Summary:**
Provided terminal commands for navigating back into the homework workspace, checking the current directory, and confirming which files and folders had already been created.

---

**User Prompt:**
“My OpenClaw isn’t running.”

**Assistant Response Summary:**
Provided troubleshooting commands and checks for verifying whether OpenClaw was installed, whether the command was available, and whether the expected service or configuration was active.

---

## Code and Shell-Script Assistance

**User Prompt:**
“Can you make this directory command easier?”

**Assistant Response Summary:**
Showed how the same directory structure could be created using simpler individual `mkdir` commands rather than brace expansion, and explained what each directory was for.

---

**User Prompt:**
“Can you explain each line?”

**Assistant Response Summary:**
Explained the shell script line by line, including the shebang, argument-count check, validation of the accepted argument, fixed output path, file creation, and exit behavior.

---

**User Prompt:**
“Do I have to use the `echo`?”

**Assistant Response Summary:**
Explained that `echo` was one way to write the marker text to a file but that alternatives such as `printf` could also be used. Compared the two approaches and explained why `printf` can be more predictable in shell scripts.

---

**User Prompt:**
“Can I brute force this?”

**Assistant Response Summary:**
Explained that brute force was not appropriate for the task and that the goal was to create deterministic input validation. Discussed using an explicit conditional to accept only the required argument and reject everything else.

---

**User Prompt:**
“Can you give me the command to test whether my script accepts the correct argument?”

**Assistant Response Summary:**
Provided an example shell command for running the script with the allowed argument and explained how to verify whether the expected marker file was created.

---

**User Prompt:**
“How do I test that it rejects a wrong argument?”

**Assistant Response Summary:**
Provided an example invocation using an invalid argument and explained how to check the script’s exit behavior and confirm that no unintended file was created.

---

**User Prompt:**
“Can you show me a small shell command to see what files are in this directory?”

**Assistant Response Summary:**
Provided basic commands such as `ls` and `ls -l` and explained how they could be used to inspect the homework directory and verify created files.

---

## Prompt-Injection Experiment Help

**User Prompt:**
“What makes the two trials structurally different?”

**Assistant Response Summary:**
Explained the distinction between a benign trial and an adversarial trial, focusing on whether untrusted web content contained text that could be interpreted as instructions by the agent.

---

**User Prompt:**
“Where does untrusted data become a possible instruction?”

**Assistant Response Summary:**
Explained that the trust-boundary problem occurs when retrieved external content is inserted into model context in a way that allows data to influence agent behavior as though it were an instruction.

---

**User Prompt:**
“Which control should decide whether a tool action is allowed?”

**Assistant Response Summary:**
Explained that authorization should be enforced by trusted execution-time policy or tool-control logic rather than by instructions contained in untrusted content or by the model alone.

---

**User Prompt:**
“What do I have in `injection-experiment.md`?”

**Assistant Response Summary:**
Helped organize the experiment material into raw notes, annotated transcripts, observed behavior, differences between trials, trust-boundary analysis, and conclusions about tool authorization.

---

**User Prompt:**
“Who is the attacker in this threat model?”

**Assistant Response Summary:**
Explained that the attacker could be represented as an untrusted user, external content source, or model-influencing input that causes a previously authorized memory tool to be invoked after authorization has changed.

---

**User Prompt:**
“What should I show in the data-flow diagram?”

**Assistant Response Summary:**
Suggested showing the user or untrusted input, agent/model, tool authorization boundary, memory tools, memory storage, and operator configuration change, along with the point where stale authorization could allow an otherwise prohibited access.

---

## Report Organization and Writing Assistance

**User Prompt:**
“Based on the rubric, tell me what I have to have.”

**Assistant Response Summary:**
Converted the expected submission structure into a checklist covering the report, README, AI-use documentation, experiment notes, threat model, advisory analysis, attack-surface map, scripts, skill file, web pages, version information, evidence, and optional bonus material.
