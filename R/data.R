#' simulated data for demonstrating the features of roben
#'
#' Simulated gene expression data for demonstrating the features of roben.
#'
#' @docType data
#' @keywords datasets
#' @name data
#' @aliases GxE_small GxE_large X Y E clin coeff X2 Y2 E2 clin2 coeff2
#' @usage data("GxE_small")
#' data("GxE_large")
#' @format GxE_small consists of five components: X, Y, E, clin and coeff. coeff contains the true values of parameters used for generating Y.
#'
#' GxE_large contains larger datasets: X2, Y2, E2 and clin2
#'
#' @details
#'
#' \strong{The data model for generating Y}
#'
#' Use subscript \eqn{i} to denote the \eqn{i}th subject. Let \eqn{(X_{i}, Y_{i}, E_{i}, Clin_{i})}, (\eqn{i=1,\ldots,n}) be
#' independent and identically distributed random vectors. \eqn{Y_{i}} is a continuous response variable representing the
#' disease phenotype. \eqn{X_{i}} is the \eqn{p}--dimensional vector of G factors. The environmental factors and clinical covariates
#' are denoted as the \eqn{k}-dimensional vector \eqn{E_{i}} and the \eqn{q}-dimensional vector \eqn{Clin_{i}}, respectively.
#' The \eqn{\epsilon} follows some heavy-tailed distribution.
#' Considering the following model:
#'
#' \deqn{Y_{i} = \alpha_{0} + \sum_{t=1}^{q}\alpha_{t}Clin_{it} + \sum_{m=1}^{k}\theta_{m}E_{im}  + \sum_{j=1}^{p}\gamma_{j}X_{ij} + \sum_{j=1}^{p}\sum_{m=1}^{k}\zeta_{jm}E_{im}X_{ij} +\epsilon_{i},}
#' where \eqn{\alpha_{0}} is the intercept; \eqn{\alpha_{t}}'s, \eqn{\theta_{m}}'s, \eqn{\gamma_{j}}'s and \eqn{\zeta_{jm}}'s are
#' the regression coefficients for the clinical covariates, environmental factors, genetic factors and G\eqn{\times}E interactions, respectively.
#'
#' Define \eqn{\beta_{j}=(\gamma_{j}, \zeta_{j1},\ldots,\zeta_{jk})^\top \equiv (\beta_{j1},\ldots,\beta_{jL})^\top} and
#' \eqn{U_{ij}=(X_{ij},X_{ij}E_{i1}\ldots,X_{ij}E_{ik})^\top \equiv (U_{ij1},\dots,U_{ijL})^\top}, where \eqn{L=k+1}.
#' The model can be written as
#' \deqn{Y_{i} = \alpha_{0} + \sum_{t=1}^{q}\alpha_{t}Clin_{it} + \sum_{m=1}^{k}\theta_{m}E_{im}  + \sum_{j=1}^{p} \big(U_{ij}^\top\beta_{j}\big) +\epsilon_{i},}
#' where the coefficient vector \eqn{\beta_{j}} represents all the main and interaction effects corresponding to the \eqn{j}th genetic measurement.
#'
#' The object \strong{coeff} in GxE_small is a list of four components, corresponding to \eqn{\alpha_{0}}, \eqn{\alpha_{t}}'s, \eqn{\theta_{m}}'s and \eqn{\beta_{j}}'s.
#'
#'
#' @examples
#' data(GxE_small)
#' dim(X)
#' print(coeff)
#'
#' data(GxE_large)
#' dim(X)
#' print(coeff)
#'
#' @seealso \code{\link{roben}}
NULL
