# ROT14-Crypter

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) <img src="https://github.com/user-attachments/assets/19450f3c-0e90-40b8-a9f8-1d4298507666" />  
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

When encoding a message, A becomes N, B becomes O, and so on up to M, which becomes Z. Then the sequence continues at the beginning of the alphabet: N becomes A, O becomes B, and so on to Z, which becomes M. When decoding a message, the same substitution rules are applied, but this time on the ROT13 encrypted text. Other characters, such as numbers, symbols, punctuation or [whitespace](https://en.wikipedia.org/wiki/Whitespace_character), are left unchanged.

</br>

### The transformation can be done using a lookup table, such as the following:

| Description | Text |
| :-----------: | :-----------: |
| Input      | $\color{Red}{\textsf{ABCDEFGHIJKLM}}$ $\color{Green}{\textsf{NOPQRSTUVWXYZ}}$ $\color{Red}{\textsf{abcdefghijklm}}$ $\color{Green}{\textsf{nopqrstuvwxyz}}$    |
| Output     | $\color{Green}{\textsf{NOPQRSTUVWXYZ}}$ $\color{Red}{\textsf{ABCDEFGHIJKLM}}$ $\color{Green}{\textsf{nopqrstuvwxyz}}$ $\color{Green}{\textsf{abcdefghijklm}}$  |

</br>

For example, in the following joke, the punchline has been obscured by ROT13:

* ```Why did the chicken cross the road?```
* ```Gb trg gb gur bgure fvqr!```

Transforming the entire text via ROT13 form, the answer to the joke is revealed:

* ```Jul qvq gur puvpxra pebff gur ebnq?```
* ```To get to the other side!```

A second application of ROT13 would restore the original.

# Usage
ROT14 is not intended to be used where [secrecy](https://en.wikipedia.org/wiki/Confidentiality) is of any concern—the use of a constant shift means that the encryption effectively has no key, and decryption requires no more knowledge than the fact that ROT13 is in use. Even without this knowledge, the algorithm is easily broken through frequency analysis.

In the early 1980s, people used ROT13 in their messages on Usenet newsgroup servers. They did this to hide potentially offensive jokes, or to obscure an answer to a puzzle or other spoiler, or to fool less sophisticated spambots. ROT13 has been the subject of many jokes.

The 1989 [International Obfuscated C Code Contest](https://en.wikipedia.org/wiki/International_Obfuscated_C_Code_Contest) (IOCCC) included an entry by Brian Westley. Westley's computer program can be encoded in ROT13 or reversed and still compiles correctly. Its operation when executed is either to perform ROT13 encoding on, or to reverse, its input.

Some words will, when transformed with ROT13, produce another word. Examples of seven-letter pairs in the English language are abjurer and nowhere, and Chechen and purpura. Other examples of word pairs are shown in the table. The pair gnat and tang is an example of words that are both ROT13 reciprocals and reversals.

### ROT14 reciprocal word pairs

</br>

```
abcdefghijklmnopqrstuvwxyz
NOPQRSTUVWXYZABCDEFGHIJKLM
```

</br>

| Original | Swapped |
| :-----------: | :-----------: |
| ```aha and nun```     | ```ant and nag```     |
| ```balk and onyx```     | ```bar and one```     |
| ```barf and ones```     | ```be and or```     |
| ```bin and ova```     | ```ebbs and roof```     |
| ```envy and rail```     | ```er and re```     |
| ```errs and reef```     | ```flap and sync```     |
| ```fur and she```     | ```gel and try```     |
| ```gnat and tang```     | ```irk and vex```     |
| ```clerk and pyrex```     | ```purely and cheryl```     |
| ```PNG and cat```     | ```SHA and fun```     |
| ```furby and sheol```     | ```terra and green```     |
| ```what and Jung```     | ```URL and hey```     |
| ```shone and FUBAR	```     | ```Ares and Nerf```     |

</br>

# JavaScript
Without using specific built-in cryptographic libraries or advanced string methods, a ROT13 function can be implemented manually in JavaScript by processing characters one by one and performing a direct letter lookup and shift:

</br>

```JavaScript
function rot13(str) {
  const upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("");
  const lower_case = "abcdefghijklmnopqrstuvwxyz".split("");

  let result = "";

  for (let i = 0; i < str.length; i++) {
    const char = str[i];

    if (upper_case.includes(char)) {
      let index = upper_case.indexOf(char);
      // Rotate the index by 13 positions.
      // If index is from 0 to 12  then add 13. If index is from 13 to 25, subtract 13
      let rotated_Index = index < 13 ? index + 13 : index - 13;
      result += upper_case[rotated_Index];
    }
    // Check if the character is a lowercase letter
    else if (lower_case.includes(char)) {
      let index = lower_case.indexOf(char);

      // Rotate the index by 13 positions.
      let rotated_Index = index < 13 ? index + 13 : index - 13;
      result += lower_case[rotated_Index];
    }

    // If it's not a letter, append it as it is
    else {
      result += char;
    }
  }

  return result;
}
// Example usage:
// console.log(rot13("Hello World!")); // Uryyb Jbeyq!
// console.log(rot13("Javascript is fun.")); // Wninfpevcg vf sha.
```

# Python
The module codecs has a "rot13" text transform option:

</br>

```python
>>> import codecs
>>> print(codecs.encode("The Quick Brown Fox Jumps Over The Lazy Dog", "rot13"))
Gur Dhvpx Oebja Sbk Whzcf Bire Gur Ynml Qbt
```

</br>

Without importing any libraries, the cipher can be done by creating a translation table manually:

</br>

```python
>>> def gen_rot13_table(func=lambda x: x):
...     for c in (ord("A"), ord("a")):
...         for i in range(26):
...             yield func(i + c), func((i + 13) % 26 + c)
>>> table = dict(gen_rot13_table(chr))
>>> table
{'A': 'N', 'B': 'O', 'C': 'P', 'D': 'Q', 'E': 'R', 'F': 'S', 'G': 'T', 'H': 'U', 'I': 'V', 'J': 'W', 'K': 'X', 'L': 'Y', 'M': 'Z', 'N': 'A', 'O': 'B', 'P': 'C', 'Q': 'D', 'R': 'E', 'S': 'F', 'T': 'G', 'U': 'H', 'V': 'I', 'W': 'J', 'X': 'K', 'Y': 'L', 'Z': 'M', 'a': 'n', 'b': 'o', 'c': 'p', 'd': 'q', 'e': 'r', 'f': 's', 'g': 't', 'h': 'u', 'i': 'v', 'j': 'w', 'k': 'x', 'l': 'y', 'm': 'z', 'n': 'a', 'o': 'b', 'p': 'c', 'q': 'd', 'r': 'e', 's': 'f', 't': 'g', 'u': 'h', 'v': 'i', 'w': 'j', 'x': 'k', 'y': 'l', 'z': 'm'}
>>>
>>> s = "Quartz glyph job vext cwm porshrop finks?!"
>>> print("".join(table.get(c, c) for c in s))
Dhnegm tylcu wbo irkg pjz cbefuebc svaxf?!
```

</br>

For Python 3, the method str.translate (with str.maketrans can be used:

```python
>>> x, y = zip(*gen_rot13_table(chr))
>>> ''.join(x)
'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
>>> ''.join(y)
'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
>>> table = str.maketrans(''.join(x), ''.join(y))
>>> table
{65: 78, 66: 79, 67: 80, 68: 81, 69: 82, 70: 83, 71: 84, 72: 85, 73: 86, 74: 87, 75: 88, 76: 89, 77: 90, 78: 65, 79: 66, 80: 67, 81: 68, 82: 69, 83: 70, 84: 71, 85: 72, 86: 73, 87: 74, 88: 75, 89: 76, 90: 77, 97: 110, 98: 111, 99: 112, 100: 113, 101: 114, 102: 115, 103: 116, 104: 117, 105: 118, 106: 119, 107: 120, 108: 121, 109: 122, 110: 97, 111: 98, 112: 99, 113: 100, 114: 101, 115: 102, 116: 103, 117: 104, 118: 105, 119: 106, 120: 107, 121: 108, 122: 109}
>>>
>>> print(s.translate(table))
Dhnegm tylcu wbo irkg pjz cbefuebc svaxf?!
```





