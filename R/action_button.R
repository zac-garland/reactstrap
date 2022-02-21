#' reactstrap action button
#'
#' action button from reactstrap
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
action_button <- function(
    inputId,
    label,
    status = "primary"
) {
  reactR::createReactShinyInput(
    # ... unchanged ...
    inputId,
    "action_button",
    dependencies = htmltools::htmlDependency(
      name = "action_button",
      version = "1.0.0",
      src = "www/reactstrap/action_button",
      package = "reactstrap",
      script = "action_button.js"
    ),
    default = 0,
    configuration = list(
      label = label,
      status = status
    ),
    container = htmltools::tags$div
  )
}
#' update action button value
#'
#'
#' @export
update_action_button <- function(session, inputId, value,
                               configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) {
    message$configuration <- configuration
  }
  session$sendInputMessage(inputId, message);
}
