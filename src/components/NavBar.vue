<template>
  <nav ref="nav">
    <a href="#about" id="icon"
      ><img src="@/assets/logo-white-border.png" ref="icon" alt="icon"
    /></a>
    <a href="#about">About</a>
    <a href="#projects">Projects</a>
    <a href="#achievements">Achievements</a>
    <a href="#experience">Experience</a>
    <a href="#contact">Contact</a>
  </nav>
</template>

<script>
export default {
  name: "NavBar",
  created() {
    window.addEventListener("scroll", this.handleScroll);
  },
  unmounted() {
    window.removeEventListener("scroll", this.handleScroll);
  },
  methods: {
    handleScroll() {
      if (window.scrollY <= window.innerHeight) {
        this.$refs.nav.style.right = "0";
        this.$refs.icon.style.opacity = "0";
      } else {
        this.$refs.nav.style.right = "calc(-100vw + 128px + 48px)";
        this.$refs.icon.style.opacity = "1";
      }
    },
  },
};
</script>

<style scoped>
nav {
  position: fixed;
  top: 0;
  right: 0;
  z-index: 10;

  width: 100%;
  height: 100px;

  padding: 0 64px;

  margin: 0 auto;
  display: flex;
  flex-flow: row nowrap;
  align-items: center;
  justify-content: flex-end;

  transition: right 0.5s, background-color 0.5s;
}

nav:hover {
  right: 0 !important;
  background-color: #fafafc;
}

nav:hover #icon > img {
  opacity: 0 !important;
}

nav > *:not(:nth-child(1)) {
  margin-left: 48px;

  font-weight: 500;
  text-decoration: none;
}

#icon {
  width: 64px;
  height: 64px;

  margin-right: auto;

  background-image: url("./../assets/logo-transparent.png");
  background-size: cover;
}

#icon > img {
  width: 100%;

  opacity: 0;
  transition: opacity 0.5s;
}
</style>
