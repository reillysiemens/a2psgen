coffee = require 'gulp-coffee'
gulp = require 'gulp'
lint = require 'gulp-coffeelint'

gulp.task 'compile', ->
  gulp.src 'src/**/*.coffee'
    .pipe lint()
    .pipe lint.reporter()
    .pipe coffee()
    .pipe gulp.dest('lib')

gulp.task 'watch', ->
  gulp.watch 'src/**/*.coffee', ['compile']

gulp.task 'default', ['compile', 'watch']
