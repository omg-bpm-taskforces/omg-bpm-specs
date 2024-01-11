## Git Branching Strategy

We use branches for each issue/proposal and follow this naming convention:
`category/reference/description-in-kebab-case`

```sh
git switch release/sce-1.0
git pull
git switch --create bugfix/sce-79/capitalization-humanid-aliasid
```

You can use the following [commit message template](.github/commit-message-template-sce.md):
```sh
git commit --template=.github/commit-message-template-sce.md
gh pr create
```

Then add the linke to the tab "files changed" to the JIRA revised text, e.g. https://github.com/omg-bpm-taskforces/omg-bpm-specs/pull/20/files

Once issues are scheduled for a ballot, we create a release branch representing that ballot:

```sh
git switch main
git pull
git switch --create release/sce-1.0-ballot-3
```

Then merge each feature branch into it using, e.g.:

```sh
git switch SCE-7
git fetch origin
git merge origin/main
gh pr edit --base release/sce-1.0-ballot-3 # can also be done via Web UI
gh pr merge --squash # can also be done via Web UI
git switch release/sce-1.0-ballot-3
git merge --squash SCE-7
git commit
```

Add a line on top of the commit message with issue & proposal IDs, commit summary, and PR number but keep the squash summary below, e.g.:

```
SCE-7/SCE-8 Refactor to conceptReference + KindSet (#2)

Squashed commit of the following:
...
```

Publish the release branch:
```sh
git push --set-upstream origin release/sce-1.0-ballot-3
```

## Light-weight process without per-issue pull requests

Create a branch for the next ballot and
add a single commit per issue.
This safes the extra-overhead of creating and merging
separate branches & pull requests
and can be helpful for inter-dependent issues.
Larger issues can still be done as a pull request as described above.

The ballot branch can be rebased and force-pushed to until the ballot opens.
If commit ids change, the URLs MUST be updated in the JIRA proposals.

# Revised Text Template for JIRA

```jira
To review the changes in their original context, please refer to the *<SPEC> Ballot #<BALLOT NUMBER> Convenience Document (<OMG DOCUMENT NUMBER>)*:
https://www.omg.org/cgi-bin/doc?<OMG DOCUMENT NUMBER>
All text and figure modifications are annotated with the id of this issue, i.e. *<ISSUE ID (NOT PROPOSAL ID)>*
You can use your PDF reader to search for this issue id and locate all the improvements.

This issue changes the XML Schema Definition (XSD). You can see a graphical diff of the changes here:
<DIFF URL>
```