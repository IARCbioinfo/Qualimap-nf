################## BASE IMAGE ######################
FROM nfcore/base

################## METADATA ######################

LABEL base_image="nfcore/base"
LABEL version="1.0"
LABEL software="qualimap-nf"
LABEL software.version="1.0"
LABEL about.summary="Container image containing all requirements for qualimap-nf"
LABEL about.home="http://github.com/IARCbioinfo/qualimap-nf"
LABEL about.documentation="http://github.com/IARCbioinfo/qualimap-nf/README.md"
LABEL about.license_file="http://github.com/IARCbioinfo/qualimap-nf/LICENSE.txt"
LABEL about.license="GNU-3.0"

################## MAINTAINER ######################
MAINTAINER Tiffany Delhomme <delhommet@students.iarc.fr>

################## INSTALLATION ######################

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/Qualimap/bin:$PATH
