# This examples show how to create a simple static html page using argonR
library(argonR)
library(htmltools)
library(magrittr)

tabText1 <- "Raw denim you probably haven't heard of them jean shorts Austin.
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
butcher retro keffiyeh dreamcatcher synth. Raw denim you probably
haven't heard of them jean shorts Austin. Nesciunt tofu stumptown
aliqua, retro synth master cleanse"

tabText2 <- "Cosby sweater eu banh mi, qui irure terry richardson ex squid.
Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan
american apparel, butcher voluptate nisi qui."

tabText3 <- "Raw denim you probably haven't heard of them jean shorts Austin.
Nesciunt tofu stumptown aliqua, retro synth master cleanse.
Mustache cliche tempor, williamsburg carles vegan helvetica.
Reprehenderit butcher retro keffiyeh dreamcatcher synth"

example <- argonPage(
  title = "ArgonR Static Template",
  author = "Divad Nojnarg",
  description = "HTML Static Template",
  navbar = argonNavbar(
    id = "main-navbar",
    src = "https://picsum.photos/600/600?random=1",
    # left menu
    argonNavMenu(
      argonDropdown(
        name = "Components",
        size = "lg",
        argonDropdownItem(
          name = "Getting Started",
          description = "BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla",
          src = "test.html",
          icon = argonIcon(name = "spaceship", color = "primary")
        ),
        argonDropdownItem(
          name = "Foundation",
          description = "BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla",
          src = "",
          icon = argonIcon(name = "palette", color = "warning")
        ),
        argonDropdownItem(
          name = "Components",
          description = "BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla",
          src = "",
          icon = argonIcon(name = "ui-04", color = "success")
        )
      )
    ),
    # right menu
    argonNavMenu(
      side = "right",
      argonNavItem(
        name = "facebook",
        src = "https://www.facebook.com",
        icon = argonIcon("facebook-square"),
        tooltip = "Like us on Facebook"
      ),
      argonNavItem(
        name = "instagram",
        src = "https://www.instagram.com",
        icon = argonIcon("instagram"),
        tooltip = "Follow us on Instagram"
      ),
      argonNavItem(
        name = "twitter",
        src = "https://www.twitter.com",
        icon = argonIcon("twitter-square"),
        tooltip = "Follow us on Twitter"
      ),
      argonNavItem(
        name = "github",
        src = "https://www.github.com",
        icon = argonIcon("github"),
        tooltip = "Star us on Github"
      )
    )
  ),
  footer = argonFooter(
    has_card = FALSE,
    # status = "info",
    # gradient = TRUE,
    argonContainer(
      size = "lg",
      argonRow(
        argonColumn(
          width = 6,
          argonIconWrapper(
            iconTag = argonIcon("atom"),
            size = "lg",
            status = "success",
            shadow = TRUE,
            hover_shadow = TRUE
          ),
          argonH1(
            display = 3,
            "Insert anything in the footer"
          ),
          argonLead(
            "The Arctic Ocean freezes every winter and much of
            the sea-ice then thaws every summer, and that process
            will continue whatever"
          )
        ),
        argonColumn(
          width = 6,
          argonCarousel(
            width = 12,
            id = "carousel2",
            argonCarouselItem(
              src = "https://picsum.photos/600/600?random=2",
              active = TRUE
            ),
            argonCarouselItem(
              src = "https://picsum.photos/600/600?random=3",
              active = FALSE
            )
          ) %>% argonPersp(side = "right")
        )
      )
    )
  ) %>% argonMargin(orientation = "t", value = 20),
  # main content
  argonSection(
    size = "lg",
    status = "default",
    gradient = TRUE,
    separator = TRUE,
    separator_color = "white",
    shape = TRUE,
    argonColumn(
      argonRow(
        argonColumn(
          width = 6,
          argonH1(
            display = 3,
            "ArgonR, HTML static template for R",
            htmltools::span("completed with examples")
          ) %>% argonTextColor(color = "white"),
          argonLead(
            "Argon is a great free UI package based on Bootstrap
            4 that includes the most important components and features"
          ) %>% argonTextColor(color = "white")
        ),
        argonColumn(
          width = 6,
          argonImage(
            src = "inst/images/imac.svg",
            floating = TRUE
          ) %>% argonPersp(side = "right")
            %>% argonBlur()
        )
      )
    ) %>% argonPadding(orientation = "x", value = 0)
  ),
  argonSection(
    size = "lg",
    status = NULL,
    gradient = FALSE,
    separator = FALSE,
    separator_color = NULL,
    shape = FALSE,
    argonRow(
      argonColumn(
        width = 4,
        argonCard(
          status = "primary",
          width = 12,
          title = "Card 1",
          hover_lift = TRUE,
          shadow = TRUE,
          icon = argonIcon("check-bold"),
          src = "#",
          "Argon is a great free UI package based on Bootstrap 4
          that includes the most important components and features."
        ) %>% argonTooltip(position = "left", title = "I am a nice card")
      ),
      argonColumn(
        width = 4,
        argonCard(
          status = "success",
          width = 12,
          title = "Card 2",
          hover_lift = TRUE,
          shadow = TRUE,
          icon = argonIcon("istanbul"),
          src = "#",
          "Argon is a great free UI package based on Bootstrap 4
          that includes the most important components and features"
        ) %>% argonTooltip(position = "top", title = "I am a nice card")
      ),
      argonColumn(
        width = 4,
        argonCard(
          status = "warning",
          width = 12,
          title = "Card 3",
          hover_lift = TRUE,
          shadow = TRUE,
          icon = argonIcon("planet"),
          src = "#",
          "Argon is a great free UI package based on Bootstrap 4
          that includes the most important components and features"
        ) %>% argonTooltip(position = "bottom", title = "I am a nice card")
      )
    ),

    # badges
    argonH1(display = 3, "ArgonR elements") %>% argonPadding(orientation = "t", value = 5),
    argonLead("Badges") %>% argonMuted(),
    argonRow(
      argonColumn(
        width = 3,
        argonBadge(
          text = "My badge",
          src = "https://www.google.com",
          pill = TRUE,
          status = "danger"
        )
      ),
      argonColumn(
        width = 3,
        argonBadge(
          text = "My badge",
          src = "https://www.google.com",
          pill = TRUE,
          status = "primary"
        )
      ),
      argonColumn(
        width = 3,
        argonBadge(
          text = "My badge",
          pill = TRUE,
          status = "warning"
        )
      ),
      argonColumn(
        width = 3,
        argonBadge(
          text = "My badge",
          src = "https://www.google.com",
          pill = FALSE,
          status = "success"
        )
      )
    ),

    # progress
    argonLead("Progress") %>% argonMuted(),
    argonRow(
      argonColumn(
        width = 4,
        argonProgress(value = 10, status = "danger", text = "Custom Text")
      ),
      argonColumn(
        width = 4,
        argonProgress(value = 40, status = "info", text = NULL)
      ),
      argonColumn(
        width = 4,
        argonProgress(value = 90, status = "warning", text = argonIcon("atom"))
      )
    ),

    # alerts
    argonLead("Alerts") %>% argonMuted(),
    argonRow(
      argonColumn(
        width = 4,
        argonAlert(
          icon = argonIcon("basket"),
          status = "danger",
          "This is an alert",
          closable = TRUE
        )
      ),
      argonColumn(
        width = 4,
        argonAlert(
          icon = argonIcon("ui-02"),
          status = "success",
          "This is an alert",
          closable = TRUE
        )
      ),
      argonColumn(
        width = 4,
        argonAlert(
          icon = argonIcon("ui-03"),
          status = "info",
          "This is an alert",
          closable = TRUE
        )
      )
    ),

    # tabs
    argonLead("Tabs") %>% argonMuted(),
    argonRow(
      argonTabSet(
        id = "tab-1",
        card_wrapper = TRUE,
        horizontal = TRUE,
        circle = FALSE,
        size = "sm",
        width = 6,
        iconList = list(
          argonIcon("cloud-upload-96"),
          argonIcon("bell-55"),
          argonIcon("calendar-grid-58")
        ),
        argonTab(
          tabName = "Tab 1",
          active = FALSE,
          tabText1
        ),
        argonTab(
          tabName = "Tab 2",
          active = TRUE,
          tabText2
        ),
        argonTab(
          tabName = "Tab 3",
          active = FALSE,
          tabText3
        )
      ),
      argonTabSet(
        id = "tab-2",
        card_wrapper = TRUE,
        horizontal = FALSE,
        circle = TRUE,
        size = "sm",
        argonTab(
          tabName = "Tab 4",
          active = FALSE,
          tabText1
        ),
        argonTab(
          tabName = "Tab 5",
          active = TRUE,
          tabText2
        ),
        argonTab(
          tabName = "Tab 6",
          active = FALSE,
          tabText3
        )
      )
    )
  ) %>% argonMargin(orientation = "t", value = -200)
    %>% argonPadding(orientation = "t", value = 0),
  argonSection(
    size = "lg",
    status = "warning",
    gradient = TRUE,
    separator = TRUE,
    separator_color = "white",
    shape = FALSE,
    argonContainer(
      size = "lg",
      argonRow(
        argonColumn(
          width = 6,
          argonH1(
            display = 3,
            "Load modals",
            htmltools::span("by clicking on buttons")
          ) %>% argonTextColor(color = "white"),
          argonButton(
            name = "Click me!",
            status = "danger",
            icon = argonIcon("atom"),
            size = "lg",
            toggle_modal = TRUE,
            modal_id = "modal1"
          )
        ),
        argonColumn(
          width = 6,
          argonModal(
            id = "modal1",
            title = "This is a modal",
            status = "danger",
            gradient = TRUE,
            "YOU SHOULD READ THIS!",
            br(),
            "A small river named Duden flows by their place and supplies it with the necessary regelialia."
          ),
          argonImage(
            floating = TRUE,
            src = "https://picsum.photos/600/600?random=4",
            hover_lift = TRUE
          ) %>% argonTooltip(position = "right", title = "I am a nice floating image")
            %>% argonBlur(text = "Hi There!", text_color = "white")
        )
      ) %>% argonPadding(orientation = "y", value = 5),
      argonPagination(
        size = "lg",
        align = "center",
        argonPaginationItem(
          name = 1,
          src = "test.html"
        ),
        argonPaginationItem(
          name = 2,
          src = "https://www.google.com"
        )
      )
    )
  ),
  argonSection(
    size = "lg",
    status = "white",
    argonRow(
      argonIconWrapper(
        iconTag = argonIcon("atom"),
        size = "lg",
        status = "danger",
        shadow = TRUE,
        hover_shadow = TRUE
      ),
      argonH1(display = 3, "ArgonR social") %>% argonPadding(orientation = "l", value = 5)
    ),
    argonRow(
      argonColumn(
        width = 3,
        argonUser(
          title = "Ryan Tompson",
          subtitle = "Web Developer",
          src = "https://picsum.photos/600/600?random=5"
        ) %>% argonBlur(text = "Ryan Tompson", text_color = "default")
      ),
      argonColumn(
        width = 3,
        argonUser(
          title = "Romina Hadid",
          subtitle = "Marketing Strategist",
          src = "https://picsum.photos/600/600?random=6"
        ) %>% argonBlur(text = "Romina Hadid", text_color = "default")
      ),
      argonColumn(
        width = 3,
        argonUser(
          title = "Alexander Smith",
          subtitle = "UI/UX Designer",
          src = "https://picsum.photos/600/600?random=7"
        ) %>% argonBlur(text = "Alexander Smith", text_color = "default")
      ),
      argonColumn(
        width = 3,
        argonUser(
          title = "John Doe",
          subtitle = "Founder and CEO",
          src = "https://picsum.photos/600/600?random=8"
        ) %>% argonBlur(text = "John Doe", text_color = "default")
      )
    )
    # br(), br(),
    # argonContainer(
    #   argonProfile(
    #     title = "John",
    #     subtitle = "Japan, Kagoshima",
    #     src = "https://image.flaticon.com/icons/svg/1006/1006540.svg",
    #     url = "https://www.google.com",
    #     url_1 = "https://www.google.com",
    #     url_2 = "https://www.google.com",
    #     stats = argonProfileStats(
    #       argonProfileStat(
    #         value = 22,
    #         description = "Friends"
    #       ),
    #       argonProfileStat(
    #         value = 10,
    #         description = "Photos"
    #       ),
    #       argonProfileStat(
    #         value = 89,
    #         description = "Comments"
    #       )
    #     ),
    #     "An artist of considerable range, Ryan —
    #     the name taken by Melbourne-raised,
    #     Brooklyn-based Nick Murphy — writes,
    #     performs and records all of his own music,
    #     giving it a warm, intimate feel with a solid
    #     groove structure. An artist of considerable
    #     range."
    #   )
    # )
  ),
  argonSection(
    size = "lg",
    status = "default",
    cascade = TRUE,
    argonH1(display = 3, "ArgonR Cascade Effect") %>%
      argonPadding(orientation = "l", value = 5) %>%
      argonPadding(orientation = "b", value = 5) %>%
      argonTextColor(color = "white"),
    argonCascade(
      argonCascadeItem(name = "diamond", src = "https://www.google.com"),
      argonCascadeItem(name = "album-2", size = "sm"),
      argonCascadeItem(name = "app", size = "sm"),
      argonCascadeItem(name = "atom", size = "sm"),
      argonCascadeItem(name = "bag-17", src = "https://www.google.com"),
      argonCascadeItem(name = "bell-55"),
      argonCascadeItem(name = "credit-card"),
      argonCascadeItem(name = "briefcase-24", size = "sm", "https://www.google.com"),
      argonCascadeItem(name = "building", size = "sm"),
      argonCascadeItem(name = "button-play", size = "sm"),
      argonCascadeItem(name = "calendar-grid-58"),
      argonCascadeItem(name = "camera-compact"),
      argonCascadeItem(name = "chart-bar-32")
    )
  )
)

if(interactive()){
  # create dir
  dir_path = "inst/argon"

  if(!dir.exists(dir_path)){
    dir.create(dir_path)
    argonInstall(path = dir_path)
  }

  argonPageTemplate(filename = "example", path = dir_path, example)

}


