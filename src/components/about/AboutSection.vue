<template>
  <div id="about">
    <h2>Hello,</h2>
    <h1 class="title">I am Emman</h1>
    <h4>
      I am a Manila-based software developer who mainly focuses on front-end web
      development.
    </h4>
  </div>
</template>

<script>
export default {
  name: "AboutSection",
};
</script>

<style scoped>
#about {
  max-width: 1080px;
  min-height: 100vh;

  margin: 0 auto;

  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
}

#about > * {
  margin: 0;
}

.title {
  margin-bottom: 64px !important;

  font-size: 114.44px;
}
</style>
