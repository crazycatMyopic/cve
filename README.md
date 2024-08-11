# CVE
----

## Problem statement: [Stackoverflow](https://stackoverflow.com/questions/78859050/common-vulnerabilities-and-exposures-during-docker-build/78859174?noredirect=1#comment139035998_78859174)

I'm trying to build by project in Docker, So i'm using Docker Desktop to build my project,
when i build the image i get this as one of my vulnerabilities
```
CVE-2024-26308
CWE-770
7.5
H
Allocation of Resources Without Limits or Throttling vulnerability in Apache Commons Compress. This issue affects Apache Commons Compress: from 1.21 before 1.26. Users are recommended to upgrade to version 1.26, which fixes the issue.
CVSS Score:	7.5
CVSS Vector:	CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
Affected range:	>=1.21,<1.26.0
Fix version:	1.26.0
Publish date:	2024-02-19
```

I would like to fix this, but when i read the bug it say it's due to `org.apache.commons`, but i don't have it in my dependency, i try running `mvn help:effective-pom` and ` mvn dependency:tree -Dverbose` and i still did not find it.
What could be the cause of it and how can i fix it?

---------------------------------------

### Requirement

- Java 17
- maven
- Docker Desktop

### RUN

command to run
```
 docker build --target run -t build_run .
```

### Snapshot


![snapsho](https://github.com/user-attachments/assets/237d6699-1594-4ceb-8726-c8c44a8602bb)
