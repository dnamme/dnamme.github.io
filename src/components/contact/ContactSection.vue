<template>
  <div id="contact" class="main">
    <h3 class="heading">
      Wanna know more? <span class="h3 accented-heading">Let's connect!</span>
    </h3>

    <p class="desc">
      Got a burning idea? Need help with your project? Let's talk about that!
    </p>

    <div class="icons">
      <a href="https://linkedin.com/in/devnamme" target="_blank"
        ><img src="@/assets/icons/linkedin.png"
      /></a>
      <a href="https://github.com/dnamme" target="_blank"
        ><img src="@/assets/icons/github.png"
      /></a>
      <a href="mailto:e.emman129@gmail.com" target="_blank"
        ><img src="@/assets/icons/email.png"
      /></a>
    </div>

    <ContactForm />
  </div>
</template>

<script>
import ContactForm from "./ContactForm.vue";

export default {
  name: "ContactSection",
  components: { ContactForm },
};
</script>

<style scoped>
#contact {
  max-width: 1440px;

  padding: 64px 0 128px;

  display: flex;
  flex-flow: column nowrap;

  align-items: center;
}

.heading {
  margin: 0 0 64px;

  text-align: center;
}

.desc {
  margin: 0 0 32px;

  text-align: center;
}

.icons {
  display: flex;
  flex-flow: row nowrap;

  margin: 0 0 128px;
}

.icons > * > * {
  width: 64px;
  height: 64px;

  margin-right: 32px;
}

.icons > *:last-child > * {
  margin-right: 0;
}

@media screen and (max-width: 1200px) {
  #contact {
    padding: 64px;
  }

  .icons {
    margin-bottom: 100px;
  }
}

@media screen and (max-width: 992px) {
  #contact {
    padding: 48px 48px 64px;
  }

  .icons {
    margin-bottom: 80px;
  }
}

@media screen and (max-width: 768px) {
  #contact {
    padding: 32px 32px 64px;
  }

  .icons {
    margin-bottom: 72px;
  }

  .icons > * > * {
    width: 48px;
    height: 48px;
  }
}

@media screen and (max-width: 576px) {
  #contact {
    padding: 24px 24px 48px;
  }

  .icons {
    margin-bottom: 64px;
  }
}
</style>
