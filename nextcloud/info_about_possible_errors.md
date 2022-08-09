Error: You have not set or verified your email server configuration, yet.
       Please head over to the Basic settings in order to set them. Afterwards, use the "Send email" button below the form to verify your settings.

Solution: Go to basic settings and add mail-functionality.

Error: Your installation has no default phone region set.
       This is required to validate phone numbers in the profile settings without a country code.
       To allow numbers without a country code, please add "default_phone_region" with the respective ISO 3166-1 code ↗ of the region to your config file.

Open your config.php and add

```
'default_phone_region' => 'DE',
```
#Info 'about "external storage app':

Ensure, that smbclient is installed
