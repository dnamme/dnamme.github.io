<template>
  <NavBar />
  <AboutSection />
  <ProjectsSection />
  <AchievementsSection />
  <ExperienceSection />
  <ContactSection />
</template>

<script>
import NavBar from "./components/NavBar.vue";
import AboutSection from "./components/about/AboutSection.vue";
import ProjectsSection from "./components/projects/ProjectsSection.vue";
import AchievementsSection from "./components/achievements/AchievementsSection.vue";
import ExperienceSection from "./components/experience/ExperienceSection.vue";
import ContactSection from "./components/contact/ContactSection.vue";

export default {
  name: "App",
  components: {
    NavBar,
    AboutSection,
    ProjectsSection,
    AchievementsSection,
    ExperienceSection,
    ContactSection,
  },
};
</script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,500;0,700;0,800;0,900;1,400;1,500&display=swap");

html,
body {
  margin: 0;
}

body {
  background-image: url("~@/assets/background.jpg");
  background-repeat: repeat;
}

:root {
  --lighter-blue: #ebf8ff;
  --light-blue: #d0efff;
  --primary-blue: #2a9df4;
  --dark-blue: #187bcd;
  --darker-blue: #1167b1;
  --navy-blue: #03254c;
}

.main {
  min-height: 100vh;
  margin: 0 auto;
}

*,
.bodyText {
  color: var(--navy-blue);
  font-family: "Montserrat", Arial, sans-serif;
  font-size: 24px;
  box-sizing: border-box;
}

h1,
.h1 {
  font-size: 91.55px;
}
h2,
.h2 {
  font-size: 73.24px;
}
h3,
.h3 {
  font-size: 58.59px;
}
h4,
.h4 {
  font-size: 46.88px;
}
h5,
.h5 {
  font-size: 37.5px;
}
h6,
.h6 {
  font-size: 30px;
}
.captionText {
  font-size: 19.2px;
}

.bg-text-outline {
  z-index: -1;
  position: absolute;

  color: white;
  font-size: 192px;
  text-shadow: 1px 1px 0 #aaa, -1px 1px 0 #aaa, -1px -1px 0 #aaa,
    1px -1px 0 #aaa;
}

.accented-heading {
  color: transparent;

  background: linear-gradient(
    to right,
    var(--darker-blue),
    var(--primary-blue)
  );
  background-clip: text;
}

.sticky-title {
  position: sticky;
  top: 0;

  padding: 0 0 32px 64px;

  background: linear-gradient(to bottom, #fafafc50 50%, transparent);
}

@media screen and (max-width: 1200px) {
}

@media screen and (max-width: 992px) {
}

@media screen and (max-width: 768px) {
}

@media screen and (max-width: 576px) {
  *,
  .bodyText {
    font-size: 16px;
  }
  h1,
  .h1 {
    font-size: 61.04px;
  }
  h2,
  .h2 {
    font-size: 48.83px;
  }
  h3,
  .h3 {
    font-size: 39.06px;
  }
  h4,
  .h4 {
    font-size: 31.25px;
  }
  h5,
  .h5 {
    font-size: 25px;
  }
  h6,
  .h6 {
    font-size: 20px;
  }
  .captionText {
    font-size: 12.8px;
  }
}
</style>
