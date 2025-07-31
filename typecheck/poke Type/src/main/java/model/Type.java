package model;

import java.io.Serializable;

public class Type implements Serializable {
    private int you, opponent, check;
    private String checkResult;
    
 // タイプの番号と名前を対応させる配列
    private static final String[] TYPE_NAMES = {
        "", "ノーマル", "ほのお", "みず", "でんき", "くさ", "こおり", "かくとう", "どく", 
        "じめん", "ひこう", "エスパー", "むし", "いわ", "ゴースト", "ドラゴン", "あく",
        "はがね", "フェアリー"};

    // コンストラクタ
    public Type() {}

    public Type(int you, int opponent) {
        this.you = you;
        this.opponent = opponent;
    }

    // ゲッター・セッター
    public int getYou() {
        return you;
    }

    public void setYou(int you) {
        this.you = you;
    }

    public int getOpponent() {  
        return opponent;
    }

    public void setOpponent(int opponent) {
        this.opponent = opponent;
    }

    public int getCheck() { 
        return this.check;
    }

    public void setCheck(int check) {
        this.check = check;
    }

    public String getCheckResult() {
        return this.checkResult;
    }

    public void setCheckResult(String checkResult) { 
        this.checkResult = checkResult;
    }
    
    
    // タイプ番号から名前を取得するメソッド
    public String getYouTypeName() {
        return TYPE_NAMES[this.you];
    }

    public String getOpponentTypeName() {
        return TYPE_NAMES[this.opponent];
    }
}

