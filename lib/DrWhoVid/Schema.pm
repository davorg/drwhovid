use utf8;
package DrWhoVid::Schema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces;


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-09-14 15:01:53
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0CztSKBrLtu2Q323JUev3A

sub get_schema {
  my $dbfile = $ENV{DRWHO_VIDEO_DB_FILE} // 'drwhovideo';

  return shift->connect("dbi:SQLite:$dbfile");
}

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
