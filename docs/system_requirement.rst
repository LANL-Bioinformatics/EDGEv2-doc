.. _sys_requirement:

System requirements
###################
NOTE: There is an online version of EDGE, found on https://edgebioinformatics.org/ is hosted at Texas Advanced Computing Center (TACC) with 128G memory and 44 CPUs.

The current version of the EDGE pipeline has been extensively tested on a Linux Server with Ubuntu 18.04 and CentOS 6.5/7 operating system and will work on 64bit Linux environments.

Hardware Requirements
=====================
Due to the involvement of several high memory and high cpu consuming steps
Minimum requirement: 24GB memory, at least 8 computing CPUs and 1 TB disk space.
A higher computer spec is strongly recommended: 256GB memory, 64 computing CPUs and > 4 TB disk space.
Please ensure that your system has the essential software packages installed properly before running the installing script.
The following should be installed by a system administrator (requires sudo).

.. note:: If your system OS is neither Ubuntu 18.04 or CentOS 7.0, it may have differnt packages/libraries name and the newer complier on newer OS  may fail on compling some of thirdparty bioinformatics tools. We would suggest to use EDGE `Docker container <installation.html#edge-docker-image>`_.  

Ubuntu 18.04 
============

.. image:: https://assets.ubuntu.com/v1/8dd99b80-ubuntu-logo14.png
    :width: 200px

1. Install build essential libraries and dependancies::

    sudo apt-get update
    
    sudo apt-get install -y build-essential libreadline-gplv2-dev libx11-dev \
        libxt-dev libgsl-dev libfreetype6-dev libncurses5-dev gfortran \
        inkscape libwww-perl libxml-libxml-perl libperlio-gzip-perl  \
        zlib1g-dev zip unzip libjson-perl libpng-dev cpanminus default-jre \
        firefox wget curl csh liblapack-dev libblas-dev libatlas-base-dev \
        libcairo2-dev libssh2-1-dev libssl-dev libcurl4-openssl-dev bzip2 \
        bioperl rsync libbz2-dev liblzma-dev time libterm-readkey-perl \
        liblwp-protocol-https-perl gnuplot libjson-xs-perl libio-socket-ip-perl \
        vim php sendmail mysql-client mysql-server libgfortran3  texinfo \
        openssh-server openssh-client zlib1g-dev openjdk-11-jdk texlive \
        texlive-fonts-extra libboost-all-dev cron less libxml2-dev \
        libcgi-pm-perl libxml-simple-perl libxml-dom-perl locales \
        libspreadsheet-parseexcel-perl libspreadsheet-writeexcel-perl
    
2. Install Apache2 for EDGE UI::
    
    sudo apt-get install apache2
    sudo a2enmod cgid proxy proxy_http headers rewrite

3. Install packages for user management system::

    sudo apt-get install sendmail mysql-client mysql-server
    
    cd /usr/share
    wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
    tar xzf apache-tomcat-7.0.92.tar.gz
    rm apache-tomcat-7.0.92.tar.gz
    mv apache-tomcat-7.0.92 tomcat7
    echo "export CATALINA_HOME=\"/usr/share/tomcat7\"" >> /etc/profile

4. Change the image conversion policy::

    sed -i.bak 's/rights=\"none\" pattern=\"PDF\"/rights=\"read|write\" pattern=\"PDF\"/' /etc/ImageMagick-6/policy.xml


CentOS 7
========

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Centos_full.svg/200px-Centos_full.svg.png
    :width: 200px

1. Install libraries and dependencies by yum::

    # add epel reporsitory 
    sudo yum -y install epel-release
    
    sudo yum install -y libX11-devel readline-devel libXt-devel ncurses-devel inkscape \ 
        expat expat-devel freetype freetype-devel zlib zlib-devel perl-App-cpanminus \
        perl-Test-Most blas-devel atlas-devel lapack-devel libpng12 libpng12-devel \
        perl-XML-Simple perl-JSON csh gcc gcc-c++ make binutils gd gsl-devel git graphviz \
        java-1.7.0-openjdk perl-Archive-Zip perl-CGI curl perl-CGI-Session \
        perl-CPAN-Meta-YAML perl-DBI perl-Data-Dumper perl-GD perl-IO-Compress \
        perl-Module-Build perl-XML-LibXML perl-XML-Parser perl-XML-SAX perl-XML-SAX-Writer \
        perl-XML-Twig perl-XML-Writer perl-YAML perl-PerlIO-gzip libstdc++-static \
        cairo-devel openssl-devel openssl-static libssh2-devel libcurl-devel \
        wget rsync bzip2 bzip2-devel xz-devel time zip unzip which perl-CPAN \
        perl-LWP-Protocol-https cronie gnuplot gdb perl-JSON-XS perl-IO-Socket-IP \
        texlive texinfo libgfortran.x86_64 java-1.7.0-openjdk-devel boost-devel \
        libxml2-devel libXScrnSaver gtk3 perl-XML-DOM

2. Update perl tools::
    
    sudo cpanm App::cpanoutdated
    cpan-outdated -p | sudo cpanm

3. Install perl modules by cpanm::
    
    sudo cpanm -f Bio::Perl Bio::SearchIO::hmmer3 Net::Ping File::Which
    sudo cpanm Graph Time::Piece Hash::Merge PerlIO::gzip Heap::Simple::XS File::Next
    sudo cpanm Algorithm::Munkres Archive::Tar Array::Compare Clone Convert::Binary::C
    sudo cpanm HTML::Template HTML::TableExtract List::MoreUtils PostScript::TextBlock
    sudo cpanm SOAP::Lite SVG SVG::Graph Set::Scalar Sort::Naturally Spreadsheet::ParseExcel
    sudo cpanm CGI::Simple GraphViz XML::Parser::PerlSAX XML::Simple Term::ReadKey
    sudo cpanm Spreadsheet::WriteExcel

4. Install package for httpd for EDGE UI::
    
    sudo yum -y install httpd
    sudo systemctl enable httpd && sudo systemctl start httpd
  
5. Install packages for user management system::
    
    sudo yum -y install sendmail mariadb-server mariadb php phpMyAdmin tomcat
    sudo systemctl enable tomcat && sudo systemctl start tomcat

6. Configure firewall for ssh, http, https, and smtp::
    
    sudo firewall-cmd --permanent --add-service=ssh
    sudo firewall-cmd --permanent --add-service=http
    sudo firewall-cmd --permanent --add-service=https
    sudo firewall-cmd --permanent --add-service=smtp
    sudo firewall-cmd --reload

7. Disable SELinux::

    As root edit /etc/selinux/config and set SELINUX=disabled
	
	Restart the server to make the change


