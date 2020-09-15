use utf8;
package DrWhoVid::Schema::Result::Video;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DrWhoVid::Schema::Result::Video

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<video>

=cut

__PACKAGE__->table("video");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 250

=head2 doctor

  data_type: 'integer'
  is_nullable: 0

=head2 release_date

  data_type: 'date'
  is_nullable: 1

=head2 dvd_asin

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 bluray_asin

  data_type: 'char'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "title",
  { data_type => "varchar", is_nullable => 0, size => 250 },
  "doctor",
  { data_type => "integer", is_nullable => 0 },
  "release_date",
  { data_type => "date", is_nullable => 1 },
  "dvd_asin",
  { data_type => "char", is_nullable => 1, size => 20 },
  "bluray_asin",
  { data_type => "char", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-09-14 15:01:53
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pcE2YnLRNiC+l6EyVcaqhg

use JSON ();

sub to_json {
  return JSON->new->encode({ shift->get_columns });
}

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
