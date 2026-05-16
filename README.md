# ROT14-Crypter

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) ![10 Seattle](https://github.com/user-attachments/assets/c70b7f21-688a-4239-87c9-9a03a8ff25ab) ![10 1 Berlin](https://github.com/user-attachments/assets/bdcd48fc-9f09-4830-b82e-d38c20492362) ![10 2 Tokyo](https://github.com/user-attachments/assets/5bdb9f86-7f44-4f7e-aed2-dd08de170bd5) ![10 3 Rio](https://github.com/user-attachments/assets/e7d09817-54b6-4d71-a373-22ee179cd49c)  ![10 4 Sydney](https://github.com/user-attachments/assets/e75342ca-1e24-4a7e-8fe3-ce22f307d881) ![11 Alexandria](https://github.com/user-attachments/assets/64f150d0-286a-4edd-acab-9f77f92d68ad) ![12 Athens](https://github.com/user-attachments/assets/59700807-6abf-4e6d-9439-5dc70fc0ceca)  
![Components](https://github.com/user-attachments/assets/d6a7a7a4-f10e-4df1-9c4f-b4a1a8db7f0e) ![None](https://github.com/user-attachments/assets/30ebe930-c928-4aaf-a8e1-5f68ec1ff349)  
![Description](https://github.com/user-attachments/assets/dbf330e0-633c-4b31-a0ef-b1edb9ed5aa7) <img src="https://github.com/user-attachments/assets/58bec7f2-dec5-43be-953f-f65e04d290c2" />  
![Last Update](https://github.com/user-attachments/assets/e1d05f21-2a01-4ecf-94f3-b7bdff4d44dd) <img src="https://github.com/user-attachments/assets/f28c0710-1ca1-4803-8763-145df276db7b" />  
![License](https://github.com/user-attachments/assets/ff71a38b-8813-4a79-8774-09a2f3893b48) ![Freeware](https://github.com/user-attachments/assets/1fea2bbf-b296-4152-badd-e1cdae115c43)  

</br>

ROT14 is one of the [twenty-ish lesser-known](https://en.wikipedia.org/wiki/Substitution_cipher) cousins of ROT13. Part of the families of rotational ciphers, [Caesar-shift ciphers](https://en.wikipedia.org/wiki/Caesar_cipher), and monoalphabetic substitution ciphers, ROT14 is, by today's standards, a weak cryptosystem. It is easily spotted (though maybe not quite as easily as ROT13), and has a known algorithm with the same key used every time. In contrast to ROT13, though, the encryption algorithm and decryption algorithm differ slightly.

* To encrypt plaintext, first convert every letter to a number (using ```A=0, B=1, C=2```, ..., ```Z=25``` is the best way to do it if you're mathematically- or computer-science-minded). For each number, add 14, then if the resulting number is above 25, subtract 26 until you get a result between 0 and 25 (inclusive). Then convert the resulting number back to a letter using the same A=0, B=1... system above.
* To decrypt ciphertext, follow the above steps except swap addition operations for subtraction operations and vice versa.

All of this is just a fancy way of saying "to encode your message in ROT14, shift every letter forwards 14 places in the alphabet, wrapping around to A if you reach Z".

</br>

<img src="https://github.com/user-attachments/assets/d3c3c958-effb-4d99-93d8-49f105c7b711" />

</br>
</br>

The uses of ROT14 are more-or-less the same as ROT13 - it has uses in cipher-based puzzles, censorship, word games, and concealing information such as fiction spoilers that aren't military-grade secrets but still should be hidden away from accidental gazes - y'know, because it's polite. However, the drawback of ROT14 is that one must use two different algorithms if one is writing computer code to encrypt or decrypt, whereas with ROT13 the same algorithm can be used to encrypt and decrypt. It is necessary, therefore, to know whether your message is currently in a state of [plaintext](https://en.wikipedia.org/wiki/Plaintext) or ciphertext. (In saying that, if you get it wrong the first time, you haven't spent much time on it and you can easily regain that time.)

ROT14 could be considered an inverse, or "sister", rotation cipher to ROT12. Since shifting letters 14 places forward in the alphabet is equivalent to shifting them backwards 12 letters (with the alphabet being used in a cyclical manner as opposed to linear), the encryption algorithm for ROT14 is the decryption algorithm for ROT12 and vice versa. In this way, every rotation cipher has a "sister" cipher except ROT13 (which is its own inverse. Interestingly, though, if a ciphertext has been encrypted using ROT14, then repeatedly applying the encryption algorithm will eventually yield the plaintext - though after twelve applications (and again at 25, and every thirteen steps thereafter). The reason why this is true is left as an exercise for the reader.

</br>











