const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
      colors: {
        gold: {
          500: "#FFD700", // Replace with your gold color code
        },
        blueblack: {
          900: "#203354", // Replace with your blue-black color code
        },
        cyan: {
          600: "#00FFFF", // Replace with your cyan color code
        },
        black: {
          DEFAULT: "#000000", // Replace with your black color code
        },
        gray: {
          300: "#D3D3D3", // Replace with your desired gray color code
        },
        teal: {
          500: "#008080", // Adjust this color code to your preference
          600: "#006666",
        },
        pink: {
          300: "#FFB6C1",
          900: "#FF1493",
        },
        purple: {
          700: "#800080",
        },
        yellow: {
          300: "#FFFF00",
        },
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
};
