#!/bin/bash

echo "Welcome to the Beginner Level Challenge!"
echo "Task: Fix the Dragon's Tale."
echo "Hint: You need to edit the file quests/dragon_slaying.md and then stage and commit your changes."

# Step 1: Checkout to the beginner branch
echo "Step 1: Checkout to the beginner branch using 'git checkout beginner-your name'"
cd "$(basename "$repo_url" .git)"
read -p "Type the command: " checkout_cmd

# Step 2: Edit the file
echo "Step 2: Edit the file markdown/dragon-tale.md to fix the typos."
echo "Hint: Use a text editor like nano or vim to edit the file."
nano --softwrap markdown/dragon-tale.md

# Step 3: Stage the changes
echo "Step 3: Stage the changes using 'git add markdown/dragon-tale.md'"
read -p "Type the command: " stage_cmd
if [ "$stage_cmd" != "git add markdown/dragon-tale.md" ]; then
  echo "Incorrect command. Please try again."
  exit 1
fi
$stage_cmd
if [ $? -ne 0 ]; then
  echo "Failed to stage the changes. Please try again."
  exit 1
fi

echo "Step 5: Commit the changes using 'git commit -m \"Fix-typos\"'"
read -p "Type the command: " commit_cmd
if [ "$commit_cmd" != 'git commit -m "Fix-typos"' ]; then
  echo "Incorrect command. Please try again."
  exit 1
fi
eval $commit_cmd
if [ $? -ne 0 ]; then
  echo "Failed to commit the changes. Please try again."
  exit 1
fi

# Step 6: Create a new branch and push the changes
echo "Step 6: Create a new branch and push the changes using 'git checkout -b fix-typos' and 'git push origin fix-typos'"
read -p "Type the command to create a new branch: " branch_cmd
if [ "$branch_cmd" != "git checkout -b fix-typos" ]; then
  echo "Incorrect command. Please try again."
  exit 1
fi
$branch_cmd
if [ $? -ne 0 ]; then
  echo "Failed to create the branch. Please try again."
  exit 1
fi

read -p "Type the command to push the changes: " push_cmd
if [ "$push_cmd" != "git push origin fix-typos" ]; then
  echo "Incorrect command. Please try again."
  exit 1
fi
$push_cmd
if [ $? -ne 0 ]; then
  echo "Failed to push the changes. Please try again."
  exit 1
fi

# Step 7: Return to the original branch and reset the state
echo "Step 7: Return to the original branch and reset the state using 'git checkout main' and 'git reset --hard origin/main'"
read -p "Type the command to return to the original branch: " checkout_cmd
if [ "$checkout_cmd" != "git checkout main" ]; then
  echo "Incorrect command. Please try again."
  exit 1
fi
$checkout_cmd
if [ $? -ne 0 ]; then
  echo "Failed to checkout the main branch. Please try again."
  exit 1
fi

read -p "Type the command to reset the state: " reset_cmd
if [ "$reset_cmd" != "git reset --hard origin/main" ]; then
  echo "Incorrect command. Please try again."
  exit 1
fi
$reset_cmd
if [ $? -ne 0 ]; then
  echo "Failed to reset the state. Please try again."
  exit 1
fi

echo "Congratulations! You have successfully completed the Beginner Level Challenge!"
echo "To get your completion badge execute the following command: Rscript ./quests/get-beginner-badge.R "YOUR FIRST AND LAST NAME"

