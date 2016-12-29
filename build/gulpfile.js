var gulp = require('gulp');

gulp.task('default', function() {
  return gulp
          .src('../root/**/*')
          .pipe(gulp.dest('../builtApp'));
});