# Q & A

How does tracking and adding changes make developers' lives easier?
  - Tracking and adding changes eases developers lives in the sense that things become much more organized. As developers, we need to see what our team has done to the files we worked on. It's very easy for us to get caught up as well and forget what we did ourselves so tracking our own changes helps us to remember what we did and continue where we left off or where someone else did.
What is a commit?
  - A commit is adding a timestamp basically with a message explaining what you have done to the files you're committing at the moment.
What are the best practices for commit messages?
  - In my opinion, I think a commit message needs to be short and clear. Not too short like "Readme.md update". It should read "Readme.md updated instructions for using blueberry js plugin"
What does the HEAD^ argument mean?
  -HEAD^ is the last commit you made
What are the 3 stages of a git change and how do you move a file from one stage to the other?
  - The first stage is to check the status of your files and folders. for this you use git status. Then you need to stage those files by saying git add (whatever files or use . for all because maybe you don't want to stage all files for a commit yet or maybe you do) Then you say git commit -m (whatever message you want to put) This will commit your changes in a message for git.
Write a handy cheatsheet of the commands you need to commit your changes.
  git status
  git add
  git commit -m
What is a pull request and how do you create and merge one?
  A pull request is done on GitHub when you go to your repo branch that you want to create a pull request for. Then you click compare & create pull request. What this does is compare your "feature-branch" to your master branch. GitHub will point out the differences between the two branches and then you can create the pull request and add a message. After that, you can see if there are any issues with merging it as GitHub will point it out to you. If all is good GitHub will tell you that you can merge automatically with no issues. Once you do that, your master branch will be up to date.
Why are pull requests preferred when working with teams?
  Pull requests are essential to make sure that everyone stays on top of things. If there is a mistake that conflicts with the code or files in the branch you want to merge to, then having it automatically merge into it isn't very good. You always want a second pair of eyes to look over it before you go ahead and mess it all up. When a team of people agrees on the merge, then it creates a happy and balanced developer environment that makes everyone feel included in the process too :)

#Reflection

  I have had a lot of fun working with GitHub. It's interesting how it works. I really hope to one day understand how the system was built. I could imagine hundreds of developers working on it to make our lives easier and that really builds on the appreciation I have in me for developers. I particularly enjoy being able to go back to a commit. It happens all the time that I make a mistake and then the next day I'm looking at it and I can't just hold down CMD + Z until I get all the way back to where I need to be anymore. Git to the rescue! Truly an incredible tool!