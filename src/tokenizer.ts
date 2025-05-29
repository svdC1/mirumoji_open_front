import * as kuromoji from "kuromoji";
export type IpadicFeatures = kuromoji.IpadicFeatures;
export type KuromojiTokenizer = kuromoji.Tokenizer<IpadicFeatures>;

let tokPromise: Promise<KuromojiTokenizer> | null = null;

export function getTokenizer() {
    if (tokPromise) return tokPromise;

    tokPromise = new Promise((resolve, reject) => {
        kuromoji
            .builder({
                dicPath: "/dict/",
            })
            .build((err, tokenizer) => {
                if (err) reject(err);
                else resolve(tokenizer);
            });
    });
    return tokPromise;
}
