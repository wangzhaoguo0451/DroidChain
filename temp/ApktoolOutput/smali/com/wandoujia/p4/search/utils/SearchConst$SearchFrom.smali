.class public final enum Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;
.super Ljava/lang/Enum;
.source "SearchConst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

.field public static final enum EBOOK_DETAIL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

.field public static final enum GAME_LAUNCHER:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

.field public static final enum HISTORY:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

.field public static final enum HOT:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

.field public static final enum MANUAL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

.field public static final enum MANUAL_REC:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

.field public static final enum RECOMMEND:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

.field public static final enum RELATED_TAB:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

.field public static final enum SUGGESTION:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;


# instance fields
.field private fromKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 181
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    const-string v1, "MANUAL"

    const-string v2, "MANUAL"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->MANUAL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    .line 182
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    const-string v1, "MANUAL_REC"

    const-string v2, "MANUAL_REC"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->MANUAL_REC:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    .line 183
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    const-string v1, "RECOMMEND"

    const-string v2, "RECOMMEND"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->RECOMMEND:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    .line 184
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    const-string v1, "HOT"

    const-string v2, "HOT"

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->HOT:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    .line 185
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    const-string v1, "SUGGESTION"

    const-string v2, "SUGGESTION"

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->SUGGESTION:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    .line 186
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    const-string v1, "HISTORY"

    const/4 v2, 0x5

    const-string v3, "HISTORY"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->HISTORY:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    .line 187
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    const-string v1, "EBOOK_DETAIL"

    const/4 v2, 0x6

    const-string v3, "EBOOK_DETAIL"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->EBOOK_DETAIL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    .line 188
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    const-string v1, "RELATED_TAB"

    const/4 v2, 0x7

    const-string v3, "RELATED_TAB"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->RELATED_TAB:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    .line 189
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    const-string v1, "GAME_LAUNCHER"

    const/16 v2, 0x8

    const-string v3, "GAME_LAUNCHER"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->GAME_LAUNCHER:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    .line 180
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->MANUAL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->MANUAL_REC:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->RECOMMEND:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->HOT:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->SUGGESTION:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->HISTORY:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->EBOOK_DETAIL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->RELATED_TAB:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->GAME_LAUNCHER:Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput-object p3, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->fromKey:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;
    .locals 1
    .parameter

    .prologue
    .line 180
    const-class v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;

    return-object v0
.end method


# virtual methods
.method public final getFromKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchFrom;->fromKey:Ljava/lang/String;

    return-object v0
.end method
