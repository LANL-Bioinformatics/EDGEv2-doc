.. _sys_requirement:

System requirements
###################
NOTE: The web-based online version of EDGE, found on https://bioedge.lanl.gov/edge_ui/ is run on our own internal servers and is our recommended mode of usage for EDGE. It does not require any particular hardware or software other than a web browser. This segment and the installation segment only apply if you want to run EDGE through Python or Apache 2, or through the CLI. 

The current version of the EDGE pipeline has been extensively tested on a Linux Server with Ubuntu 14.04 and Centos 6.5 and 7.0 operating system and will work on 64bit Linux environments. Perl v5.8 or above is required. Python 2.7 is required. Due to the involvement of several memory/time consuming steps, it requires at least 16Gb memory and at least 8 computing CPUs. A higher computer spec is recommended: 128Gb memory and 16 computing CPUs.

Please ensure that your system has the essential software building packages installed properly before running the installing script.

The following are required installed by system administrator.

.. note:: If your system OS is neither Ubuntu 14.04 or Centos 6.5 or 7.0, it may have differnt packages/libraries name and the newer complier (gcc5) on newer OS (ex: Ubuntu 16.04) may fail on compling some of thirdparty bioinformatics tools. We would suggest to use EDGE `VMware image <installation.html#edge-vmware-ovf-image>`_ or `Docker container <installation.html#edge-docker-image>`_.  

Ubuntu 14.04 
============

.. image:: https://design.ubuntu.com/wp-content/uploads/ubuntu-logo14.png
    :width: 200px

1. Install build essential libraries and dependancies::
    
    sudo apt-get install build-essential
    sudo apt-get install libreadline-gplv2-dev
    sudo apt-get install libx11-dev
    sudo apt-get install libxt-dev libgsl0-dev
    sudo apt-get install libncurses5-dev 
    sudo apt-get install gfortran
    sudo apt-get install inkscape
    sudo apt-get install libwww-perl libxml-libxml-perl libperlio-gzip-perl 
    sudo apt-get install zlib1g-dev zip unzip libjson-perl
    sudo apt-get install libpng-dev
    sudo apt-get install cpanminus
    sudo apt-get install default-jre
    sudo apt-get install firefox
    sudo apt-get install wget curl csh

2. Install python packages for Metaphlan (Taxonomy assignment software)::
   
    sudo apt-get install python-numpy python-matplotlib python-scipy libpython2.7-stdlib 
    sudo apt-get install python-pip python-pandas python-sympy python-nose
  
3. Install BioPerl::
   
    sudo apt-get install bioperl  
        or
    sudo cpan -i -f CJFIELDS/BioPerl-1.6.923.tar.gz
    
4. Install packages for user management system::

    sudo apt-get install sendmail mysql-client mysql-server phpMyAdmin tomcat7

CentOS 6.7
==========

.. image:: https://scottlinux.com/wp-content/uploads/2011/07/centos6.png
    :width: 200px
    
1. Install dependancies using yum::

    # add epel reporsitory 
    sudo yum -y install epel-release
    su -c 'yum localinstall -y --nogpgcheck http://download1.rpmfusion.org/free/el/updates/6/i386/rpmfusion-free-release-6-1.noarch.rpm http://download1.rpmfusion.org/nonfree/el/updates/6/i386/rpmfusion-nonfree-release-6-1.noarch.rpm'
    sudo yum -y update
    
    sudo yum -y install\
     csh gcc gcc-c++ make curl binutils gd gsl-devel\
     libX11-devel readline-devel libXt-devel ncurses-devel inkscape\
     freetype freetype-devel zlib zlib-devel git\
     blas-devel atlas-devel lapack-devel libpng libpng-devel\
     expat expat-devel graphviz java-1.7.0-openjdk\
     perl-Archive-Zip perl-Archive-Tar perl-CGI perl-CGI-Session \
     perl-DBI perl-GD perl-JSON perl-Module-Build perl-CPAN-Meta-YAML\
     perl-XML-LibXML perl-XML-Parser perl-XML-SAX perl-XML-SAX-Writer\
     perl-XML-Simple perl-XML-Twig perl-XML-Writer perl-YAML\
     perl-Test-Most perl-PerlIO-gzip perl-SOAP-Lite perl-GraphViz

2. Install perl cpanm::

    curl -L http://cpanmin.us | perl - App::cpanminus
    
3. Install perl modules by cpanm::

    cpanm Graph Time::Piece Data::Dumper IO::Compress::Gzip Data::Stag IO::String
    cpanm Algorithm::Munkres Array::Compare Clone Convert::Binary::C XML::Parser::PerlSAX
    cpanm HTML::Template HTML::TableExtract List::MoreUtils PostScript::TextBlock
    cpanm SVG SVG::Graph Set::Scalar Sort::Naturally Spreadsheet::ParseExcel 
    cpanm -f Bio::Perl

4. Install dependent packages for Python:

EDGE requires several packages (NumPy, Matplotlib, SciPy, IPython, Pandas, SymPy and Nose) to work properly. 
These packages are available at PyPI (https://pypi.python.org/pypi) for downloading and installing respectively. 
Or you can install a Python distribution with dependent packages instead. We suggest users to use Anaconda Python distribution. 
You can download the installers and find more information at their website (`https://store.continuum.io/cshop/anaconda/ <https://store.continuum.io/cshop/anaconda/>`_). 
The installation is interactive. Type in /opt/apps/anaconda when the script asks for the location to install python.::
             
    bash Anaconda-2.x.x-Linux-x86.sh
    ln -s /opt/apps/anaconda/bin/python /path/to/edge_v1.x/bin/
    
Create symlink anaconda python to edge/bin. So system will use your python over the system’s. 

5. Install packages for user management system::

    sudo yum -y install sendmail mysql mysql-server phpmyadmin tomcat

CentOS 7
========

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Centos_full.svg/200px-Centos_full.svg.png
    :width: 200px

1. Install libraries and dependencies by yum::

    # add epel reporsitory 
    sudo yum -y install epel-release
    
    sudo yum install -y libX11-devel readline-devel libXt-devel ncurses-devel inkscape\ 
        scipy expat expat-devel freetype freetype-devel zlib zlib-devel perl-App-cpanminus\
        perl-Test-Most python-pip blas-devel atlas-devel lapack-devel numpy numpy-f2py\
        libpng12 libpng12-devel perl-XML-Simple perl-JSON csh gcc gcc-c++ make binutils\
        gd gsl-devel git graphviz java-1.7.0-openjdk perl-Archive-Zip perl-CGI\
        perl-CGI-Session perl-CPAN-Meta-YAML perl-DBI perl-Data-Dumper perl-GD perl-IO-Compress\
        perl-Module-Build perl-XML-LibXML perl-XML-Parser perl-XML-SAX perl-XML-SAX-Writer\
        perl-XML-Twig perl-XML-Writer perl-YAML perl-PerlIO-gzip python-matplotlib python-six

2. Update existing python and perl tools::
    
    sudo pip install --upgrade six scipy matplotlib
    sudo cpanm App::cpanoutdated
    sudo su -
    cpan-outdated -p | cpanm
    exit


3. Install perl modules by cpanm::
    
    cpanm Graph Time::Piece Bio::Perl
    cpanm Algorithm::Munkres Archive::Tar Array::Compare Clone Convert::Binary::C
    cpanm HTML::Template HTML::TableExtract List::MoreUtils PostScript::TextBlock
    cpanm SOAP::Lite SVG SVG::Graph Set::Scalar Sort::Naturally Spreadsheet::ParseExcel
    cpanm CGI CGI::Simple GD Graph GraphViz XML::Parser::PerlSAX XML::SAX XML::SAX::Writer XML::Simple XML::Twig XML::Writer

4. Install packages for user management system::
    
    sudo yum -y install sendmail mariadb-server mariadb phpMyAdmin tomcat

5. Configure firewall for ssh, http, https, and smtp::
    
    sudo firewall-cmd --permanent --add-service=ssh
    sudo firewall-cmd --permanent --add-service=http
    sudo firewall-cmd --permanent --add-service=https
    sudo firewall-cmd --permanent --add-service=smtp

.. note:: You may need to turn the SELinux into Permissive mode.

    sudo setenforce 0


