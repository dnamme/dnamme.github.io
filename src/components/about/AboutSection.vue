<template>
  <div id="about" class="main">
    <h2 class="greeting" ref="greeting">Hello,</h2>
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
  data() {
    return {
      greeting_animation: null,
      greetings: [
        "Hello,",
        "Kamusta,",
        "안녕하세요,",
        "こんにちは、",
        "Bonjour,",
        "Guten Tag,",
        "Здравствуйте,",
        "你好，",
        "добры дзень,",
        "Hola,",
        "Salve,",
        "Olá,",
        "Goddag,",
      ],
      greeting_index: 0,
    };
  },
  mounted() {
    this.greeting_animation = setInterval(() => {
      this.$refs.greeting.classList.add("anim-disappear");

      setTimeout(() => {
        this.$refs.greeting.classList.remove("anim-disappear");

        this.greeting_index++;
        if (this.greeting_index >= this.greetings.length)
          this.greeting_index = 0;

        this.$refs.greeting.innerHTML = this.greetings[this.greeting_index];

        this.$refs.greeting.classList.add("anim-appear");

        setTimeout(() => {
          this.$refs.greeting.classList.remove("anim-appear");
        }, 500);
      }, 500);
    }, 3 * 1000);
  },
  unmounted() {
    clearInterval(this.greeting_animation);
  },
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

.greeting.anim-disappear {
  animation: disappear 0.5s;
}

.greeting.anim-appear {
  animation: appear 0.5s;
}

@keyframes disappear {
  0% {
    transform: translateY(0);
    opacity: 1;
  }

  100% {
    transform: translateY(-128px);
    opacity: 0;
  }
}

@keyframes appear {
  0% {
    transform: translateY(128px);
    opacity: 0;
  }

  100% {
    transform: translateY(0);
    opacity: 1;
  }
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
