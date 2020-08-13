module.exports = {
  root: true,
  env: {
    browser: true,
    node: true,
    jest: true,
  },
  parserOptions: {
    parser: 'babel-eslint',
  },
  extends: [
    'eslint:recommended',
    'prettier',
    'prettier/vue',
    'plugin:vue/recommended',
  ],
  // required to lint *.vue files
  plugins: ['vue'],
  rules: {
    semi: [2, 'never'],
    'no-console': 'off',
  },
}
