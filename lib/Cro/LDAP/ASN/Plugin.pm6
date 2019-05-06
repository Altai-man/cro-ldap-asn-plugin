use ASN::Types;

class Cro::LDAP::ASN::Plugin {
    method check($symbol-name) {
        if $symbol-name eq 'SearchResultReference' {
            my $type = Metamodel::ClassHOW.new_type(name => 'SearchResultReference'); # class SearchResultReference
            $type.^add_role(Positional[ASN::Types::OctetString]); # does Positional[ASN::Types::OctetString] {
            $type.^add_attribute(Attribute.new(name => '@!seq', type => Any, package => $type, :has_accessor)); # has @.urls;
            $type.^add_method('ASN-tag-value', method { 19 }); # method ASN-tag-value { 19 }
            $type.^compose; # }
            return ('SEQUENCE OF' => $type);
        }
        Nil;
    }
}
