#!/bin/bash

cat <<EOF | xargs docker-compose exec --user www-data nextcloud
php occ app:install $ldapNextcloud
php occ app:enable $ldapNextcloud
php occ ldap:create-empty-config
php occ ldap:set-config s01 hasMemberOfFilterSupport 0
php occ ldap:set-config s01 lastJpegPhotoLookup 0
php occ ldap:set-config s01 ldapAgentName "cn=$cnLDAP,dc=${dcLDAP1},dc=${dcLDAP2},dc=${dcLDAP3}"
php occ ldap:set-config s01 ldapAgentPassword $passwdLDAP
php occ ldap:set-config s01 ldapBase "dc=${dcLDAP1},dc=${dcLDAP2},dc=${dcLDAP3}"
php occ ldap:set-config s01 ldapCacheTTL 600
php occ ldap:set-config s01 ldapConfigurationActive 1
php occ ldap:set-config s01 ldapExperiencedAdmin 0
php occ ldap:set-config s01 ldapExpertUUIDUserAttr uid
php occ ldap:set-config s01 ldapGidNumber gidNumber
php occ ldap:set-config s01 ldapGroupDisplayName cn
php occ ldap:set-config s01 ldapGroupFilterMode 0
php occ ldap:set-config s01 ldapGroupMemberAssocAttr uniqueMember
php occ ldap:set-config s01 ldapHost $ldapHost
php occ ldap:set-config s01 ldapLoginFilter $loginFilterLDAP
php occ ldap:set-config s01 ldapLoginFilterEmail 0
php occ ldap:set-config s01 ldapLoginFilterMode 0
php occ ldap:set-config s01 ldapLoginFilterUsername 1
php occ ldap:set-config s01 ldapNestedGroups 0
php occ ldap:set-config s01 ldapPagingSize 500
php occ ldap:set-config s01 ldapPort 389
php occ ldap:set-config s01 ldapTLS 0
php occ ldap:set-config s01 ldapUserAvatarRule default
php occ ldap:set-config s01 ldapUserDisplayName cn
php occ ldap:set-config s01 ldapUserFilter $userFilterLDAP
php occ ldap:set-config s01 ldapUserFilterMode 0
php occ ldap:set-config s01 ldapUserFilterObjectclass posixAccount
php occ ldap:set-config s01 ldapUuidGroupAttribute auto
php occ ldap:set-config s01 ldapUuidUserAttribute auto
php occ ldap:set-config s01 turnOffCertCheck 0
php occ ldap:set-config s01 turnOnPasswordChange 0
php occ ldap:set-config s01 useMemberOfToDetectMembership 1
php occ config:app:set files cronjob_scan_files --value=500
php occ config:system:set ldapIgnoreNamingRules --value=false
php occ config:system:set ldapProviderFactory --value=OCA\\User_LDAP\\LDAPProviderFactory
php occ files:scan --all
EOF
