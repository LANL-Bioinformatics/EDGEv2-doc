Troubleshooting
###############

* In the GUI, if you are trying to enter information into a specific field and it is grayed out or won’t let you, try refreshing the page by clicking the icon in the right top of the browser window.
* Process.log and error.log files may help on the troubleshooting.

Coverage Issues
---------------
* Average Fold Coverage reported in the HTML output and by the output tables generated in {output directory}/AssemblyBasedAnalysis/ReadsMappingToContigs/ are calculated with mpileup using the default options for metagenomes.  These settings discount reads that are unpaired within a contig or with an insert size out of the expected bounds.  This will result in an underreporting of the average fold coverage based on the generated BAM file, but one that the team feels is more accurate given the intended use of this environment.

Data Migration
--------------
* The preferred method of transferring data to the EDGE appliance is via SFTP.  Using an SFTP client such as FileZilla, connect to port 22 using your system's username and password.
* In the case of very large transfers, you may wish to use a USB hard drive or thumb drive.
* If the data is being transferred from another LINUX machine, the server will recognize partitions that use the FAT, ext2, ext3, or ext4 filesystems.
* If the data is being transferred from a Windows machine, the partition may use the NTFS filesystem.  If this is the case, the drive will not be recognized until you follow these instructions:
	* Open the command line interface by clicking the Applications menu in the top left corner (or use SSH to connect to the system).
	* Enter the command: ''sudo yum install ntfs-3g ntfs-3g-devel -y''
	* Enter your password if required.
* After a reboot, you should be able to connect your Windows hard drive to the system, and it will mount like a normal disk.

Known Issues
------------
* Installations on CentOS 6.4 with Apache 2.2 are known to have difficulty executing jobs that have ".real" anywhere in the name.  This is due to a CGI execution issue.  The recommended resolution is to use an underscore in place of the period, or simply name your job something else.



Discussions / Bugs Reporting
----------------------------

* We have created a mailing list for EDGE users. If you would like to recieve notifications about the updates and join the discussion, please join the mailing list by becoming the member of edge-users groups.

    `EDGE user's google group <https://groups.google.com/d/forum/edge-users>`_

* We appreciate any feedback or concerns you may have about EDGE. If you encounter any bugs, you can report them to our GitHub issue tracker.

    `Github issue tracker <https://github.com/LANL-Bioinformatics/EDGE/issues>`_

* Any other questions? You are welcome to :doc:`contact`
