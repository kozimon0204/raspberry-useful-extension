# raspberry-useful-extension

# Settings

## Set ssh connection via public keys

1. Run

`sh ~/raspberry-useful-extension/settings/ssh_public_key.sh`

2. Overwrite

`sudo vim /etc/ssh/sshd_config`

3. Settings

    1. If you wanna change port num
    
    ```
    #Port 22
    Port 27890
    ```


    2. If you wanna forbid root login
    
    ```
    PermitRootLogin no
    ```

    3. Enable ssh login via public key
    
    ```
    RSAAuthentication    yes
    PubkeyAuthentication yes
    AuthorizedKeysFile   %h/.ssh/authorized_keys
    ```

    4. Disable ssh login via password

    **Confirm you had login via public key**

    ```
    PasswordAuthentication no
    ```

4. Refresh ssh settings

```
sudo /etc/init.d/ssh restart
```

# Boot
