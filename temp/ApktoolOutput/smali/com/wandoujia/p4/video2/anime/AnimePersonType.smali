.class public final enum Lcom/wandoujia/p4/video2/anime/AnimePersonType;
.super Ljava/lang/Enum;
.source "AnimePersonType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/anime/AnimePersonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/anime/AnimePersonType;

.field public static final enum CHARACTER:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

.field public static final enum CREATIVE:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

.field public static final enum MUSIC_SUPERVISIONS:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

.field public static final enum ORIGINAL:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

.field public static final enum SEIYU:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

.field public static final enum SUPERVISOR:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

.field public static final enum THEME_SINGER:Lcom/wandoujia/p4/video2/anime/AnimePersonType;


# instance fields
.field private chineseName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    const-string v1, "ORIGINAL"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e05fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/video2/anime/AnimePersonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->ORIGINAL:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    .line 11
    new-instance v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    const-string v1, "SUPERVISOR"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0601

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/video2/anime/AnimePersonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->SUPERVISOR:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    .line 12
    new-instance v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    const-string v1, "CHARACTER"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e05fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/video2/anime/AnimePersonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->CHARACTER:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    .line 13
    new-instance v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    const-string v1, "MUSIC_SUPERVISIONS"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e05fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/video2/anime/AnimePersonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->MUSIC_SUPERVISIONS:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    .line 15
    new-instance v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    const-string v1, "THEME_SINGER"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0602

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lcom/wandoujia/p4/video2/anime/AnimePersonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->THEME_SINGER:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    .line 16
    new-instance v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    const-string v1, "CREATIVE"

    const/4 v2, 0x5

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e05fc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/anime/AnimePersonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->CREATIVE:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    .line 17
    new-instance v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    const-string v1, "SEIYU"

    const/4 v2, 0x6

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0600

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/anime/AnimePersonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->SEIYU:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    sget-object v1, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->ORIGINAL:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->SUPERVISOR:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->CHARACTER:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->MUSIC_SUPERVISIONS:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->THEME_SINGER:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->CREATIVE:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->SEIYU:Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->$VALUES:[Lcom/wandoujia/p4/video2/anime/AnimePersonType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->chineseName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/anime/AnimePersonType;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/anime/AnimePersonType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->$VALUES:[Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/anime/AnimePersonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/anime/AnimePersonType;

    return-object v0
.end method


# virtual methods
.method public final getChineseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->chineseName:Ljava/lang/String;

    return-object v0
.end method
