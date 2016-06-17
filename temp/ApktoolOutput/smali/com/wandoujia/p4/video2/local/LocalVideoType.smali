.class public final enum Lcom/wandoujia/p4/video2/local/LocalVideoType;
.super Ljava/lang/Enum;
.source "LocalVideoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/local/LocalVideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/local/LocalVideoType;

.field public static final enum COMMON:Lcom/wandoujia/p4/video2/local/LocalVideoType;

.field public static final enum PLAY_EXP:Lcom/wandoujia/p4/video2/local/LocalVideoType;

.field public static final enum PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/local/LocalVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;->COMMON:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    .line 14
    new-instance v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video2/local/LocalVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    .line 16
    new-instance v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;

    const-string v1, "PLAY_EXP"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/video2/local/LocalVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PLAY_EXP:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/video2/local/LocalVideoType;

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->COMMON:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PLAY_EXP:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;->$VALUES:[Lcom/wandoujia/p4/video2/local/LocalVideoType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getLocalVideoType(Ljava/lang/String;)Lcom/wandoujia/p4/video2/local/LocalVideoType;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    :goto_0
    return-object v0

    .line 24
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/wandoujia/p4/video2/local/LocalVideoType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/local/LocalVideoType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/local/LocalVideoType;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/local/LocalVideoType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;->$VALUES:[Lcom/wandoujia/p4/video2/local/LocalVideoType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/local/LocalVideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/local/LocalVideoType;

    return-object v0
.end method
