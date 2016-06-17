.class public final enum Lcom/wandoujia/p4/video/model/VideoSubType;
.super Ljava/lang/Enum;
.source "VideoSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video/model/VideoSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video/model/VideoSubType;

.field public static final enum ANIME:Lcom/wandoujia/p4/video/model/VideoSubType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/wandoujia/p4/video/model/VideoSubType;

    const-string v1, "ANIME"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video/model/VideoSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video/model/VideoSubType;->ANIME:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/wandoujia/p4/video/model/VideoSubType;

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoSubType;->ANIME:Lcom/wandoujia/p4/video/model/VideoSubType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/wandoujia/p4/video/model/VideoSubType;->$VALUES:[Lcom/wandoujia/p4/video/model/VideoSubType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getVideoSubType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSubType;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    :goto_0
    return-object v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 17
    :try_start_0
    invoke-static {v1}, Lcom/wandoujia/p4/video/model/VideoSubType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSubType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSubType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/p4/video/model/VideoSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/VideoSubType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video/model/VideoSubType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/p4/video/model/VideoSubType;->$VALUES:[Lcom/wandoujia/p4/video/model/VideoSubType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video/model/VideoSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video/model/VideoSubType;

    return-object v0
.end method
