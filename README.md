# Change management for Aller Retour database

## Getting started

Install git, postgresql, perl, cpan, DBD::Pg, cpanminus and sqitch. Don't forget that you have to be root to do that. For installaton process on OS different from CentOS see [sqitch download page](https://sqitch.org/download/).

``` bash
yum install git perl-devel perl-CPAN postgresql perl-DBD-Pg
curl -L https://cpanmin.us | perl - --sudo App::cpanminus
cpanm --quiet --notest App::Sqitch
```

If there is problem installing cpan modules, check if gcc is installed.

``` bash
gcc -v
yum install gcc
```

Login as postges admin.

``` bash
su - postgres
psql
```

Create new database user with the same name as your Aller Retour OS user.

``` sql
CREATE USER aller_retour WITH PASSWORD "Your password goes here";
```

Create dev, test and prod databases.

``` sql
-- Make the same for ar_test and ar_prod databases
CREATE DATABASE ar_dev;
REVOKE ALL ON DATABASE ar_dev FROM public;
ALTER DATABASE ar_dev OWNER TO aller_retour;
```

Now you can login with peer authentication as aller_retour user with ar_* databases.

Login with aller_retour user in your command line and download git repo.

``` bash
su - aller_retour
mkdir dev
cd dev
git clone git@bitbucket.org:allerretour/db-plan.git

```

Add your name and email to sqitch user level config.

``` bash
sqitch config --user user.name 'Firstname Lastname'
sqitch config --user user.email 'example@gmail.com'
```

Copy example configuration file to sqitch.conf and add necessary data.

``` bash
cd db-plan
cp sqitch.example.conf sqitch.conf
vi sqitch.conf
```

Check if everything works.

``` bash
sqitch status
```

You should see something like that:

``` bash
# On database dev
No changes deployed
```

Hooray! You can now start working!

For different login methods see [sqitch auth manual](https://sqitch.org/docs/manual/sqitch-authentication/) or just change uri parameter in target section of config.

## Technologies used

* git
* sqitch
* postgresql

## References

* [repo](https://Reenuay@bitbucket.org/allerretour/db-plan.git)
* [sqitch.org](https://sqitch.org)
