<template>
  <NavBar />
  <AboutSection />
</template>

<script>
import NavBar from "./components/NavBar.vue";
import AboutSection from "./components/about/AboutSection.vue";

export default {
  name: "App",
  components: { NavBar, AboutSection },
};
</script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,500;0,700;0,800;0,900;1,400&display=swap");

html,
body {
  margin: 0;
}

*,
.bodyText {
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
</style>
