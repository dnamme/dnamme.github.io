<template>
  <div id="about" class="main">
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

  padding: 32px 0;

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

@media screen and (max-width: 1200px) {
  #about {
    max-width: unset;
    padding: 32px 64px;
  }
}

@media screen and (max-width: 992px) {
  #about {
    padding: 32px 48px;
  }
}

@media screen and (max-width: 768px) {
  #about {
    padding: 32px 32px;
  }
}

@media screen and (max-width: 576px) {
  #about {
    padding: 32px 24px;
  }

  .title {
    font-size: 76.29px;
    word-break: break-all;
  }
}
</style>
