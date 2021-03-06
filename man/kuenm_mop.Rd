% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kuenm_mop.R
\name{kuenm_mop}
\alias{kuenm_mop}
\title{Extrapolation risk analysis for single comparisons}
\usage{
kuenm_mop(M.stack, G.stack, percent = 10, normalized = TRUE)
}
\arguments{
\item{M.stack}{a RasterStack of variables representing the calibration area.}

\item{G.stack}{a RasterStack of variables representing the full area of interest, and areas
or scenarios to which models are transferred.}

\item{percent}{(numeric) percent of values sampled from te calibration region to calculate the MOP.}

\item{normalized}{(logical) if true values of similarity are presented from 0 to 1,
default = TRUE.}
}
\value{
A mobility-oriented parity RasterLayer.
}
\description{
kuenm_mop calculates a mobility-oriented parity layer by
comparing environmental values between the calibration area and the area or
scenario to which an ecological niche model is transferred.
}
\details{
The MOP is calculated following Owens et al.
(2013; \url{https://doi.org/10.1016/j.ecolmodel.2013.04.011}). This function is a modification
of the \code{\link[ENMGadgets]{MOP}} funcion, available at \url{https://github.com/narayanibarve/ENMGadgets}.
}
\examples{
mvars <- mvars_mop
gvars <- gvars_mop
perc <- 10
norm <- TRUE

mop <- kuenm_mop(M.stack = mvars, G.stack = gvars,
                  percent = perc, normalized = norm)
}
