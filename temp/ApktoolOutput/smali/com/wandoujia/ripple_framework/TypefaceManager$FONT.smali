.class public final enum Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;
.super Ljava/lang/Enum;
.source "TypefaceManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

.field public static final enum BLACK:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

.field public static final enum BOLD:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

.field public static final enum NORMAL:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

.field public static final enum ROBOT:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;


# instance fields
.field public defaultTypeface:Landroid/graphics/Typeface;

.field public md5:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    const-string v1, "NORMAL"

    const-string v3, "fonts/FZLTXIHK.TTF"

    const-string v4, "http://static.wdjimg.com/misc/images/fonts/FZLTXIHK.TTF"

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v5, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    const-string v6, "89ddd357c57f8dc4b573f37fc81dd9b3"

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->NORMAL:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    .line 23
    new-instance v3, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    const-string v4, "ROBOT"

    const-string v6, "fonts/FZLTXIHK.TTF"

    const-string v7, "http://static.wdjimg.com/misc/images/fonts/FZLTXIHK.TTF"

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    const-string v9, "89ddd357c57f8dc4b573f37fc81dd9b3"

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v3, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->ROBOT:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    .line 25
    new-instance v3, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    const-string v4, "BLACK"

    const-string v6, "fonts/FZLTZHK.TTF"

    const-string v7, "http://static.wdjimg.com/misc/images/fonts/FZLTZHK.TTF"

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    const-string v9, "d18cb36bf3662a9b86f165e39cf48f80"

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v3, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->BLACK:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    .line 27
    new-instance v3, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    const-string v4, "BOLD"

    const-string v6, "fonts/FZLTZHK.TTF"

    const-string v7, "http://static.wdjimg.com/misc/images/fonts/FZLTZHK.TTF"

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    const-string v9, "d18cb36bf3662a9b86f165e39cf48f80"

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v3, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->BOLD:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    sget-object v1, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->NORMAL:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->ROBOT:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    aput-object v1, v0, v10

    sget-object v1, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->BLACK:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    aput-object v1, v0, v11

    sget-object v1, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->BOLD:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    aput-object v1, v0, v12

    sput-object v0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->$VALUES:[Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->path:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->url:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->defaultTypeface:Landroid/graphics/Typeface;

    .line 39
    iput-object p6, p0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->md5:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static getFont(I)Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;
    .locals 1
    .parameter

    .prologue
    .line 43
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->values()[Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    invoke-static {}, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->values()[Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    move-result-object v0

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->$VALUES:[Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    return-object v0
.end method
