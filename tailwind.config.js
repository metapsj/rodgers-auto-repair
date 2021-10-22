const colors = require("tailwindcss/colors");

module.exports = {
  purge: {},
  theme: {
    extend: {
      colors: {
        teal: colors.teal,
        cyan: color.cyan,
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
  ],
};
