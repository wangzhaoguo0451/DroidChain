.class public final enum Lcom/wandoujia/p4/video/model/VideoType;
.super Ljava/lang/Enum;
.source "VideoType.java"

# interfaces
.implements Lcom/wandoujia/entities/app/TabCategory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video/model/VideoType;",
        ">;",
        "Lcom/wandoujia/entities/app/TabCategory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video/model/VideoType;

.field public static final enum COMIC:Lcom/wandoujia/p4/video/model/VideoType;

.field public static final enum MOVIE:Lcom/wandoujia/p4/video/model/VideoType;

.field public static final enum SHORT_VIDEO:Lcom/wandoujia/p4/video/model/VideoType;

.field public static final enum TV:Lcom/wandoujia/p4/video/model/VideoType;

.field public static final enum VARIETY:Lcom/wandoujia/p4/video/model/VideoType;


# instance fields
.field nameResId:I

.field optionFields:Lcom/wandoujia/p4/http/request/OptionFields;

.field tabId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/wandoujia/p4/video/model/VideoType;

    const-string v1, "TV"

    const v3, 0x7f0e064e

    const-string v4, "tv"

    sget-object v5, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_TV_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/video/model/VideoType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/wandoujia/p4/http/request/OptionFields;)V

    sput-object v0, Lcom/wandoujia/p4/video/model/VideoType;->TV:Lcom/wandoujia/p4/video/model/VideoType;

    .line 12
    new-instance v3, Lcom/wandoujia/p4/video/model/VideoType;

    const-string v4, "MOVIE"

    const v6, 0x7f0e064c

    const-string v7, "movie"

    sget-object v8, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_MOVIE_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/wandoujia/p4/video/model/VideoType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/wandoujia/p4/http/request/OptionFields;)V

    sput-object v3, Lcom/wandoujia/p4/video/model/VideoType;->MOVIE:Lcom/wandoujia/p4/video/model/VideoType;

    .line 13
    new-instance v3, Lcom/wandoujia/p4/video/model/VideoType;

    const-string v4, "VARIETY"

    const v6, 0x7f0e064f

    const-string v7, "variety"

    sget-object v8, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_VARIETY_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/wandoujia/p4/video/model/VideoType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/wandoujia/p4/http/request/OptionFields;)V

    sput-object v3, Lcom/wandoujia/p4/video/model/VideoType;->VARIETY:Lcom/wandoujia/p4/video/model/VideoType;

    .line 14
    new-instance v3, Lcom/wandoujia/p4/video/model/VideoType;

    const-string v4, "COMIC"

    const v6, 0x7f0e064b

    const-string v7, "comic"

    sget-object v8, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_COMIC_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/wandoujia/p4/video/model/VideoType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/wandoujia/p4/http/request/OptionFields;)V

    sput-object v3, Lcom/wandoujia/p4/video/model/VideoType;->COMIC:Lcom/wandoujia/p4/video/model/VideoType;

    .line 15
    new-instance v3, Lcom/wandoujia/p4/video/model/VideoType;

    const-string v4, "SHORT_VIDEO"

    const v6, 0x7f0e064d

    const-string v7, "short"

    sget-object v8, Lcom/wandoujia/p4/http/request/OptionFields;->VIDEO_SHORT_VIDEO_LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/wandoujia/p4/video/model/VideoType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/wandoujia/p4/http/request/OptionFields;)V

    sput-object v3, Lcom/wandoujia/p4/video/model/VideoType;->SHORT_VIDEO:Lcom/wandoujia/p4/video/model/VideoType;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/p4/video/model/VideoType;

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoType;->TV:Lcom/wandoujia/p4/video/model/VideoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoType;->MOVIE:Lcom/wandoujia/p4/video/model/VideoType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoType;->VARIETY:Lcom/wandoujia/p4/video/model/VideoType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoType;->COMIC:Lcom/wandoujia/p4/video/model/VideoType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoType;->SHORT_VIDEO:Lcom/wandoujia/p4/video/model/VideoType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/wandoujia/p4/video/model/VideoType;->$VALUES:[Lcom/wandoujia/p4/video/model/VideoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/wandoujia/p4/http/request/OptionFields;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/http/request/OptionFields;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/wandoujia/p4/video/model/VideoType;->nameResId:I

    .line 23
    iput-object p4, p0, Lcom/wandoujia/p4/video/model/VideoType;->tabId:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/wandoujia/p4/video/model/VideoType;->optionFields:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 25
    return-void
.end method

.method public static getVideoType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 33
    :try_start_0
    invoke-static {v1}, Lcom/wandoujia/p4/video/model/VideoType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getVideoTypeByTabId(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/video/model/VideoType;->values()[Lcom/wandoujia/p4/video/model/VideoType;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 45
    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->getTabId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 46
    goto :goto_0

    .line 44
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/wandoujia/p4/video/model/VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/VideoType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video/model/VideoType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/wandoujia/p4/video/model/VideoType;->$VALUES:[Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video/model/VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video/model/VideoType;

    return-object v0
.end method


# virtual methods
.method public final getNameResId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/wandoujia/p4/video/model/VideoType;->nameResId:I

    return v0
.end method

.method public final getOptionFields()Lcom/wandoujia/p4/http/request/OptionFields;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/VideoType;->optionFields:Lcom/wandoujia/p4/http/request/OptionFields;

    return-object v0
.end method

.method public final getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/VideoType;->tabId:Ljava/lang/String;

    return-object v0
.end method
