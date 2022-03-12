<template>
  <nav>
    <div id="icon" />
    <a href="">About</a>
    <a href="">Projects</a>
    <a href="">Achievements</a>
    <a href="">Experience</a>
    <a href="">Contact</a>
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
}

#icon {
  width: 64px;
  height: 64px;

  background-color: #c4c4c4;

  margin-right: auto;
}
</style>
