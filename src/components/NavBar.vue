<template>
  <nav>
    <div id="icon" />
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
};
</script>

<style scoped>
nav {
  position: fixed;
  top: 0;
  right: 0;

  width: 100%;
  height: 100px;

  padding: 0 64px;

  margin: 0 auto;
  display: flex;
  flex-flow: row nowrap;
  align-items: center;
  justify-content: flex-end;
}

nav > *:not(:nth-child(1)) {
  margin-left: 48px;

  font-weight: 500;
  text-decoration: none;
}

#icon {
  width: 64px;
  height: 64px;

  background-color: #c4c4c4;

  margin-right: auto;
}
</style>
