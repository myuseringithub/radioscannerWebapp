var gulp = require('gulp');

gulp.task('default', function() {
  return gulp
          .src('../../source/clientSide/**/*')
          .pipe(gulp.dest('../../distribution'));
});