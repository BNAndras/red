Red [
	description: {Tests for "Bob" Exercism exercise}
	author: "loziniak"
]

#include %testlib.red

test-init/limit %bob.red 1
; test-init/limit %.meta/example.red 1						; test example solution

canonical-cases: [#[
    description: "stating something"
    input: #[
        heyBob: "Tom-ay-to, tom-aaaah-to."
    ]
    expected: "Whatever."
    function: "response"
    uuid: "e162fead-606f-437a-a166-d051915cea8e"
] #[
    description: "shouting"
    input: #[
        heyBob: "WATCH OUT!"
    ]
    expected: "Whoa, chill out!"
    function: "response"
    uuid: "73a966dc-8017-47d6-bb32-cf07d1a5fcd9"
] #[
    description: "shouting gibberish"
    input: #[
        heyBob: "FCECDFCAAB"
    ]
    expected: "Whoa, chill out!"
    function: "response"
    uuid: "d6c98afd-df35-4806-b55e-2c457c3ab748"
] #[
    description: "asking a question"
    input: #[
        heyBob: "Does this cryogenic chamber make me look fat?"
    ]
    expected: "Sure."
    function: "response"
    uuid: "8a2e771d-d6f1-4e3f-b6c6-b41495556e37"
] #[
    description: "asking a numeric question"
    input: #[
        heyBob: "You are, what, like 15?"
    ]
    expected: "Sure."
    function: "response"
    uuid: "81080c62-4e4d-4066-b30a-48d8d76920d9"
] #[
    description: "asking gibberish"
    input: #[
        heyBob: "fffbbcbeab?"
    ]
    expected: "Sure."
    function: "response"
    uuid: "2a02716d-685b-4e2e-a804-2adaf281c01e"
] #[
    description: "talking forcefully"
    input: #[
        heyBob: "Hi there!"
    ]
    expected: "Whatever."
    function: "response"
    uuid: "c02f9179-ab16-4aa7-a8dc-940145c385f7"
] #[
    description: "using acronyms in regular speech"
    input: #[
        heyBob: "It's OK if you don't want to go work for NASA."
    ]
    expected: "Whatever."
    function: "response"
    uuid: "153c0e25-9bb5-4ec5-966e-598463658bcd"
] #[
    description: "forceful question"
    input: #[
        heyBob: "WHAT'S GOING ON?"
    ]
    expected: "Calm down, I know what I'm doing!"
    function: "response"
    uuid: "a5193c61-4a92-4f68-93e2-f554eb385ec6"
] #[
    description: "shouting numbers"
    input: #[
        heyBob: "1, 2, 3 GO!"
    ]
    expected: "Whoa, chill out!"
    function: "response"
    uuid: "a20e0c54-2224-4dde-8b10-bd2cdd4f61bc"
] #[
    description: "no letters"
    input: #[
        heyBob: "1, 2, 3"
    ]
    expected: "Whatever."
    function: "response"
    uuid: "f7bc4b92-bdff-421e-a238-ae97f230ccac"
] #[
    description: "question with no letters"
    input: #[
        heyBob: "4?"
    ]
    expected: "Sure."
    function: "response"
    uuid: "bb0011c5-cd52-4a5b-8bfb-a87b6283b0e2"
] #[
    description: "shouting with special characters"
    input: #[
        heyBob: "ZOMG THE %^^*@#$(*^^ ZOMBIES ARE COMING!!11!!1!"
    ]
    expected: "Whoa, chill out!"
    function: "response"
    uuid: "496143c8-1c31-4c01-8a08-88427af85c66"
] #[
    description: "shouting with no exclamation mark"
    input: #[
        heyBob: "I HATE THE DENTIST"
    ]
    expected: "Whoa, chill out!"
    function: "response"
    uuid: "e6793c1c-43bd-4b8d-bc11-499aea73925f"
] #[
    description: "statement containing question mark"
    input: #[
        heyBob: "Ending with ? means a question."
    ]
    expected: "Whatever."
    function: "response"
    uuid: "aa8097cc-c548-4951-8856-14a404dd236a"
] #[
    description: "non-letters with question"
    input: #[
        heyBob: ":) ?"
    ]
    expected: "Sure."
    function: "response"
    uuid: "9bfc677d-ea3a-45f2-be44-35bc8fa3753e"
] #[
    description: "prattling on"
    input: #[
        heyBob: "Wait! Hang on. Are you going to be OK?"
    ]
    expected: "Sure."
    function: "response"
    uuid: "8608c508-f7de-4b17-985b-811878b3cf45"
] #[
    description: "silence"
    input: #[
        heyBob: ""
    ]
    expected: "Fine. Be that way!"
    function: "response"
    uuid: "bc39f7c6-f543-41be-9a43-fd1c2f753fc0"
] #[
    description: "prolonged silence"
    input: #[
        heyBob: "          "
    ]
    expected: "Fine. Be that way!"
    function: "response"
    uuid: "d6c47565-372b-4b09-b1dd-c40552b8378b"
] #[
    description: "alternate silence"
    input: #[
        heyBob: "^-^-^-^-^-^-^-^-^-^-"
    ]
    expected: "Fine. Be that way!"
    function: "response"
    uuid: "4428f28d-4100-4d85-a902-e5a78cb0ecd3"
] #[
    description: "multiple line question"
    input: #[
        heyBob: {^/Does this cryogenic chamber make me look fat?^/No.}
    ]
    expected: "Whatever."
    function: "response"
    uuid: "66953780-165b-4e7e-8ce3-4bcb80b6385a"
] #[
    description: "starting with whitespace"
    input: #[
        heyBob: "         hmmmmmmm..."
    ]
    expected: "Whatever."
    function: "response"
    uuid: "5371ef75-d9ea-4103-bcfa-2da973ddec1b"
] #[
    description: "ending with whitespace"
    input: #[
        heyBob: "Okay if like my  spacebar  quite a bit?   "
    ]
    expected: "Sure."
    function: "response"
    uuid: "05b304d6-f83b-46e7-81e0-4cd3ca647900"
] #[
    description: "other whitespace"
    input: #[
        heyBob: "^/^M ^-"
    ]
    expected: "Fine. Be that way!"
    function: "response"
    uuid: "72bd5ad3-9b2f-4931-a988-dce1f5771de2"
] #[
    description: "non-question ending with whitespace"
    input: #[
        heyBob: "This is a statement ending with whitespace      "
    ]
    expected: "Whatever."
    function: "response"
    uuid: "12983553-8601-46a8-92fa-fcaa3bc4a2a0"
]]


foreach c-case canonical-cases [
	case-code: reduce [
		'expect c-case/expected compose [
			(to word! c-case/function) (values-of c-case/input)
		] 
	]

	test c-case/description case-code
]

test-results/print
