# Pull base image.
FROM centos:6.9

# docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) --build-arg UNAME=$USER -f Dockerfile -t edatest .

ARG UNAME=developer
ARG UID=1000
ARG GID=1000
ARG UHOME=/home/$UNAME
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/tcsh $UNAME

# Install tcsh shell
RUN yum install -y tcsh 
# Install font
RUN yum install -y xorg-x11-fonts-100dpi.noarch xorg-x11-fonts-75dpi.noarch  xorg-x11-fonts-ISO8859-1-100dpi.noarch  xorg-x11-fonts-ISO8859-1-75dpi.noarch xorg-x11-fonts-ISO8859-14-100dpi.noarch xorg-x11-fonts-ISO8859-14-75dpi.noarch xorg-x11-fonts-ISO8859-15-100dpi.noarch xorg-x11-fonts-ISO8859-15-75dpi.noarch xorg-x11-fonts-ISO8859-2-100dpi.noarch xorg-x11-fonts-ISO8859-2-75dpi.noarch xorg-x11-fonts-ISO8859-9-100dpi.noarch xorg-x11-fonts-ISO8859-9-75dpi.noarch xorg-x11-fonts-Type1.noarch xorg-x11-fonts-cyrillic.noarch xorg-x11-fonts-ethiopic.noarch xorg-x11-fonts-misc.noarch
# for wv
RUN yum install -y fontconfig freetype libXmu libXi libXrandr libmng libtiff
# for icfb
RUN yum install -y glibc.i686 libXt.i686 libXext.i686 libXp.i686 ksh redhat-lsb-core
# for ic6
RUN yum install -y libGL libGLU
# for design vision
RUN yum install -y libXScrnSaver libXft libpng
# for innovus	
RUN yum install -y libXp
# for nLint	
RUN yum install -y openmotif
# for prime time	
RUN yum install -y libXcomposite pulseaudio-libs
# for lec	
RUN yum install -y compat-libtermcap

# Set environment variables.
ENV HOME $UHOME

# Add files.
#ADD home.tar $UHOME
#ADD csh.cshrc /etc/csh.cshrc


USER $UNAME

# Define working directory.
WORKDIR $UHOME

# Define default command.
CMD ["tcsh"]
