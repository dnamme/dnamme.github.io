<template>
  <div id="contact" class="main">
    <h3 class="heading">
      Wanna know more? <span class="h3 accented-heading">Let's connect!</span>
    </h3>

    <p class="desc">
      Got a burning idea? Need help with your project? Let's talk about that!
    </p>

    <div class="icons">
      <a href=""><div></div></a>
      <a href=""><div></div></a>
      <a href=""><div></div></a>
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

  padding: 64px 0 256px;

  display: flex;
  flex-flow: column nowrap;

  align-items: center;
}

.heading {
  margin: 0 0 64px;
}

.desc {
  margin: 0 0 32px;
}

.icons {
  display: flex;
  flex-flow: row nowrap;

  margin: 0 0 128px;
}

.icons > * > * {
  width: 64px;
  height: 64px;

  background-color: #c4c4c4;

  margin-right: 32px;
}

.icons > *:last-child > * {
  margin-right: 0;
}
</style>
