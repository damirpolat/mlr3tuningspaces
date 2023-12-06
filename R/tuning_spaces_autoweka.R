#' @title AutoWEKA Tuning Spaces
#'
#' @name mlr_tuning_spaces_autoweka
#'
#' @description
#' Tuning spaces from the `r cite_bib("kotthoff_2017")` article.
#'
#' @source
#' `r format_bib("kotthoff_2017")`
#'
#' @aliases
#' mlr_tuning_spaces_classif.J48.autoweka
#' mlr_tuning_spaces_classif.DecisionTable.autoweka
#' mlr_tuning_spaces_classif.KStar.autoweka
#' mlr_tuning_spaces_classif.LMT.autoweka
#' mlr_tuning_spaces_classif.PART.autoweka
#' mlr_tuning_spaces_classif.SMO.autoweka
#' mlr_tuning_spaces_classif.BayesNet.autoweka
#' mlr_tuning_spaces_classif.JRip.autoweka
#' mlr_tuning_spaces_classif.SimpleLogistic.autoweka
#' mlr_tuning_spaces_classif.VotedPerceptron.autoweka
#' mlr_tuning_spaces_classif.SGD.autoweka
#' mlr_tuning_spaces_classif.Logistic.autoweka
#' mlr_tuning_spaces_classif.OneR.autoweka
#' mlr_tuning_spaces_classif.MultilayerPerceptron.autoweka
#' mlr_tuning_spaces_classif.REPTree.autoweka
#' mlr_tuning_spaces_classif.IBk.autoweka
#' mlr_tuning_spaces_classif.RandomForestWEKA.autoweka
#' mlr_tuning_spaces_classif.RandomTree.autoweka
#' mlr_tuning_spaces_regr.DecisionTable.autoweka
#' mlr_tuning_spaces_regr.GaussianProcesses.autoweka
#' mlr_tuning_spaces_regr.M5P.autoweka
#' mlr_tuning_spaces_regr.KStar.autoweka
#' mlr_tuning_spaces_regr.LinearRegression.autoweka
#' mlr_tuning_spaces_regr.SGD.autoweka
#' mlr_tuning_spaces_regr.MultilayerPerceptron.autoweka
#' mlr_tuning_spaces_regr.REPTree.autoweka
#' mlr_tuning_spaces_regr.IBk.autoweka
#' mlr_tuning_spaces_regr.M5Rules.autoweka
#' mlr_tuning_spaces_regr.RandomForestWEKA.autoweka
#' mlr_tuning_spaces_regr.RandomTree.autoweka
#' mlr_tuning_spaces_regr.SMOreg.autoweka
#'
#' @section J48 tuning space:
#' `r rd_info(lts("classif.J48.autoweka"))`
#' 
#' @section DecisionTable tuning space:
#' `r rd_info(lts("classif.DecisionTable.autoweka"))`
#' 
#' @section KStar tuning space:
#' `r rd_info(lts("classif.KStar.autoweka"))`
#' 
#' @section LMT tuning space:
#' `r rd_info(lts("classif.LMT.autoweka"))`
#' 
#' @section PART tuning space:
#' `r rd_info(lts("classif.PART.autoweka"))`
#' 
#' @section SMO tuning space:
#' `r rd_info(lts("classif.SMO.autoweka"))`
#' 
#' @section BayesNet tuning space:
#' `r rd_info(lts("classif.BayesNet.autoweka"))`
#' 
#' @section JRip tuning space:
#' `r rd_info(lts("classif.JRip.autoweka"))`
#' 
#' @section SimpleLogistic tuning space:
#' `r rd_info(lts("classif.SimpleLogistic.autoweka"))`
#' 
#' @section VotedPerceptron tuning space:
#' `r rd_info(lts("classif.VotedPerceptron.autoweka"))`
#' 
#' @section SGD tuning space:
#' `r rd_info(lts("classif.SGD.autoweka"))`
#' 
#' @section Logistic tuning space:
#' `r rd_info(lts("classif.Logistic.autoweka"))`
#' 
#' @section OneR tuning space:
#' `r rd_info(lts("classif.OneR.autoweka"))`
#' 
#' @section MultilayerPerceptron tuning space:
#' `r rd_info(lts("classif.MultilayerPerceptron.autoweka"))`
#' 
#' @section REPTree tuning space:
#' `r rd_info(lts("classif.REPTree.autoweka"))`
#' 
#' @section IBk tuning space:
#' `r rd_info(lts("classif.IBk.autoweka"))`
#' 
#' @section RandomForestWEKA tuning space:
#' `r rd_info(lts("classif.RandomForestWEKA.autoweka"))`
#' 
#' @section RandomTree tuning space:
#' `r rd_info(lts("classif.RandomTree.autoweka"))`
#' 
#' @section GaussianProcesses tuning space:
#' `r rd_info(lts("regr.GaussianProcesses.autoweka"))`
#' 
#' @section M5P tuning space:
#' `r rd_info(lts("regr.M5P.autoweka"))`
#' 
#' @section LinearRegression tuning space:
#' `r rd_info(lts("regr.LinearRegression.autoweka"))`
#' 
#' @section M5Rules tuning space:
#' `r rd_info(lts("regr.M5Rules.autoweka"))`
#' 
#' @section SMOreg tuning space:
#' `r rd_info(lts("regr.SMOreg.autoweka"))`
#' 
#' @include mlr_tuning_spaces.R
NULL

# J48
vals = list(
  O     = to_tune(p_lgl()),
  U     = to_tune(p_lgl()),
  B     = to_tune(p_lgl()),
  J     = to_tune(p_lgl()),
  A     = to_tune(p_lgl()),
  S     = to_tune(p_lgl()),
  M     = to_tune(1, 64),
  C     = to_tune(0, 1)
)

add_tuning_space(
  id = "classif.J48.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.J48",
  package = "mlr3extralearners",
  label = "Classification J48 with AutoWEKA"
)

# Decision Table
vals = list(
  E     = to_tune(levels = c("acc", "auc")),
  I     = to_tune(p_lgl()),
  S     = to_tune(levels = c("BestFirst", "GreedyStepwise")),
  X     = to_tune(1, 4)
)

add_tuning_space(
  id = "classif.DecisionTable.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.DecisionTable",
  package = "mlr3extralearners",
  label = "Classification Decision Table with AutoWEKA"
)

vals = list(
  E     = to_tune(levels = c("rmse", "mae")),
  I     = to_tune(p_lgl()),
  S     = to_tune(levels = c("BestFirst", "GreedyStepwise")),
  X     = to_tune(1, 4)
)

add_tuning_space(
  id = "regr.DecisionTable.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.DecisionTable",
  package = "mlr3extralearners",
  label = "Regression Decision Table with AutoWEKA"
)

# Gaussian Processes
vals = list(
  L       = to_tune(0.0001, 1),
  N       = to_tune(levels = c("0", "1", "2")),
  K       = to_tune(levels = c("NormalizedPolyKernel", "PolyKernel", "Puk", "RBFKernel")),
  E_poly  = to_tune(0.2, 5),
  L_poly  = to_tune(p_lgl()),
  S       = to_tune(1, 10)
)

add_tuning_space(
  id = "regr.GaussianProcesses.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.GaussianProcesses",
  package = "mlr3extralearners",
  label = "Regression Gaussian Processes with AutoWEKA"
)

# M5P
vals = list(
  N       = to_tune(p_lgl()),
  M       = to_tune(1, 64),
  U       = to_tune(p_lgl()),
  R       = to_tune(p_lgl())
)

add_tuning_space(
  id = "regr.M5P.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.M5P",
  package = "mlr3extralearners",
  label = "Regression M5 Model Trees and Rules with AutoWEKA"
)

# KStar
vals = list(
  B     = to_tune(1, 100),
  E     = to_tune(p_lgl()),
  M     = to_tune(levels = c("a", "d", "m", "n"))
)

add_tuning_space(
  id = "classif.KStar.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.KStar",
  package = "mlr3extralearners",
  label = "Classification KStar with AutoWEKA"
)

add_tuning_space(
  id = "regr.KStar.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.KStar",
  package = "mlr3extralearners",
  label = "Regression KStar with AutoWEKA"
)

# LMT
vals = list(
  B     = to_tune(p_lgl()),
  R     = to_tune(p_lgl()),
  C     = to_tune(p_lgl()),
  P     = to_tune(p_lgl()),
  M     = to_tune(1, 64),
  W     = to_tune(0, 1),
  A     = to_tune(p_lgl())
)

add_tuning_space(
  id = "classif.LMT.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.LMT",
  package = "mlr3extralearners",
  label = "Classification Logistic Model Trees with AutoWEKA"
)

# PART
vals = list(
  N     = to_tune(2, 5),
  M     = to_tune(1, 64),
  R     = to_tune(p_lgl()),
  B     = to_tune(p_lgl())
)

add_tuning_space(
  id = "classif.PART.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.PART",
  package = "mlr3extralearners",
  label = "Classification PART with AutoWEKA"
)

# SMO
vals = list(
  C       = to_tune(0.5, 1.5),
  N       = to_tune(levels = c("0", "1", "2")),
  M       = to_tune(p_lgl()),
  K       = to_tune(levels = c("NormalizedPolyKernel", "PolyKernel", "Puk", "RBFKernel")),
  E_poly  = to_tune(0.2, 5),
  L_poly  = to_tune(p_lgl())
)

add_tuning_space(
  id = "classif.SMO.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.SMO",
  package = "mlr3extralearners",
  label = "Classification SMO with AutoWEKA"
)

# BayesNet
vals = list(
  D   = to_tune(p_lgl()),
  Q   = to_tune(levels = c("K2", "HillClimber", "LAGDHillClimber", "SimulatedAnnealing", "TabuSearch", "TAN"))
)

add_tuning_space(
  id = "classif.BayesNet.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.BayesNet",
  package = "mlr3extralearners",
  label = "Classification BayesNet with AutoWEKA"
)

# JRip
vals = list(
  N   = to_tune(1, 5),
  E   = to_tune(p_lgl()),
  P   = to_tune(p_lgl()),
  O   = to_tune(1, 5)
)

add_tuning_space(
  id = "classif.JRip.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.JRip",
  package = "mlr3extralearners",
  label = "Classification JRip with AutoWEKA"
)

# SimpleLogistic
vals = list(
  S   = to_tune(p_lgl()),
  W   = to_tune(0, 1),
  A   = to_tune(p_lgl())
)

add_tuning_space(
  id = "classif.SimpleLogistic.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.SimpleLogistic",
  package = "mlr3extralearners",
  label = "Classification SimpleLogistic with AutoWEKA"
)

# LinearRegression
vals = list(
  S   = to_tune(levels = c("0", "1", "2")),
  C   = to_tune(p_lgl()),
  R   = to_tune(1e-7, 10)
)

add_tuning_space(
  id = "regr.LinearRegression.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.LinearRegression",
  package = "mlr3extralearners",
  label = "Regression LinearRegression with AutoWEKA"
)

# VotedPerceptron
vals = list(
  I   = to_tune(1, 10),
  M   = to_tune(5000, 50000),
  E   = to_tune(0.2, 5)
)

add_tuning_space(
  id = "classif.VotedPerceptron.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.VotedPerceptron",
  package = "mlr3extralearners",
  label = "Classification VotedPerceptron with AutoWEKA"
)

# SGD
vals = list(
  F   = to_tune(levels = c("0", "1")),
  L   = to_tune(0.00001, 0.1),
  R   = to_tune(1e-12, 10),
  N   = to_tune(p_lgl()),
  M   = to_tune(p_lgl())
)

add_tuning_space(
  id = "classif.SGD.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.SGD",
  package = "mlr3extralearners",
  label = "Classification SGD with AutoWEKA"
)

vals = list(
  F   = to_tune(levels = c("2", "3", "4")),
  L   = to_tune(0.00001, 0.1),
  R   = to_tune(1e-12, 10),
  N   = to_tune(p_lgl()),
  M   = to_tune(p_lgl())
)

add_tuning_space(
  id = "regr.SGD.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.SGD",
  package = "mlr3extralearners",
  label = "Regression SGD with AutoWEKA"
)

# Logistic
vals = list(
  R   = to_tune(1e-12, 10)
)

add_tuning_space(
  id = "classif.Logistic.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.Logistic",
  package = "mlr3extralearners",
  label = "Classification Logistic with AutoWEKA"
)

# OneR
vals = list(
  B   = to_tune(1, 32)
)

add_tuning_space(
  id = "classif.OneR.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.OneR",
  package = "mlr3extralearners",
  label = "Classification OneR with AutoWEKA"
)

# MultilayerPerceptron
vals = list(
  L   = to_tune(0.1, 1),
  M   = to_tune(0.1, 1),
  B   = to_tune(p_lgl()),
  H   = to_tune(levels = c("a", "i", "o", "t")),
  C   = to_tune(p_lgl()),
  R   = to_tune(p_lgl()),
  D   = to_tune(p_lgl()),
  S   = to_tune(1, 1)
)

add_tuning_space(
  id = "classif.MultilayerPerceptron.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.MultilayerPerceptron",
  package = "mlr3extralearners",
  label = "Classification MultilayerPerceptron with AutoWEKA"
)

add_tuning_space(
  id = "regr.MultilayerPerceptron.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.MultilayerPerceptron",
  package = "mlr3extralearners",
  label = "Regression MultilayerPerceptron with AutoWEKA"
)

# REPTree
vals = list(
  M   = to_tune(1, 64),
  V   = to_tune(1e-5, 1e-1),
  #FIXME: how to add both?
  #L   = to_tune(1, 1)
  L   = to_tune(2, 20),
  P   = to_tune(p_lgl())
)

add_tuning_space(
  id = "classif.REPTree.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.REPTree",
  package = "mlr3extralearners",
  label = "Classification REPTree with AutoWEKA"
)

add_tuning_space(
  id = "regr.REPTree.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.REPTree",
  package = "mlr3extralearners",
  label = "Regression REPTree with AutoWEKA"
)

# IBk
vals = list(
  E   = to_tune(p_lgl()),
  K   = to_tune(1, 64),
  X   = to_tune(p_lgl()),
  F   = to_tune(p_lgl()),
  I   = to_tune(p_lgl())
)

add_tuning_space(
  id = "classif.IBk.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.IBk",
  package = "mlr3extralearners",
  label = "Classification IBk with AutoWEKA"
)

add_tuning_space(
  id = "regr.IBk.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.IBk",
  package = "mlr3extralearners",
  label = "Regression IBk with AutoWEKA"
)

# M5Rules
vals = list(
  N   = to_tune(p_lgl()),
  M   = to_tune(1, 64),
  U   = to_tune(p_lgl()),
  R   = to_tune(p_lgl())
)

add_tuning_space(
  id = "regr.M5Rules.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.M5Rules",
  package = "mlr3extralearners",
  label = "Regression M5Rules with AutoWEKA"
)

# RandomForestWEKA
vals = list(
  I       = to_tune(2, 256),
  K       = to_tune(0, 32),
  depth   = to_tune(0, 20)
)

add_tuning_space(
  id = "classif.RandomForestWEKA.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.RandomForestWEKA",
  package = "mlr3extralearners",
  label = "Classification RandomForestWEKA with AutoWEKA"
)

add_tuning_space(
  id = "regr.RandomForestWEKA.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.RandomForestWEKA",
  package = "mlr3extralearners",
  label = "Regression RandomForestWEKA with AutoWEKA"
)

# RandomTree
vals = list(
  M       = to_tune(1, 64),
  #FIXME: K is 0 and 2-32
  K       = to_tune(0, 32),
  depth   = to_tune(0, 20),
  #FIXME: N is 0 and 2-5
  N       = to_tune(0, 5),
  U       = to_tune(p_lgl())
)

add_tuning_space(
  id = "classif.RandomTree.autoweka",
  values = vals,
  tags = c("autoweka", "classification"),
  learner = "classif.RandomTree",
  package = "mlr3extralearners",
  label = "Classification RandomTree with AutoWEKA"
)

add_tuning_space(
  id = "regr.RandomTree.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.RandomTree",
  package = "mlr3extralearners",
  label = "Regression RandomTree with AutoWEKA"
)

# SMOreg
vals = list(
  C              = to_tune(0.5, 1.5),
  N              = to_tune(levels = c("0", "1", "2")),
  I              = to_tune(levels = c("RegSMOImproved")),
  V_improved     = to_tune(p_lgl()),
  K              = to_tune(levels = c("NormalizedPolyKernel", "PolyKernel", "Puk", "RBFKernel")),
  E_poly         = to_tune(0.2, 5),
  L_improved     = to_tune(p_lgl())
)

add_tuning_space(
  id = "regr.SMOreg.autoweka",
  values = vals,
  tags = c("autoweka", "regression"),
  learner = "regr.SMOreg",
  package = "mlr3extralearners",
  label = "Regression SMOreg with AutoWEKA"
)
