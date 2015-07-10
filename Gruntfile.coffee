'use strict'

module.exports = (grunt) ->

  # プラグインの読み込み
  grunt.loadNpmTasks 'grunt-bower-task'

  # グラントタスクの設定
  grunt.initConfig
    # config
    dir:
      src: 'src'
      dest: 'dist'
      pkg: grunt.file.readJSON "package.json"

    # Bower
    bower:
      install:
        options:
          targetDir: '<%= dir.src %>/vendor'
          layout: 'byComponent'
          install: true
          verbose: true
          cleanTargetDir: true
          cleanBowerDir: false

  # タスクコマンドの設定
  grunt.registerTask 'default', ['bower:install']
