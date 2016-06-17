.class public final enum Lcom/wandoujia/p4/video/model/VideoSharpness;
.super Ljava/lang/Enum;
.source "VideoSharpness.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video/model/VideoSharpness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video/model/VideoSharpness;

.field public static final enum HIGH:Lcom/wandoujia/p4/video/model/VideoSharpness;

.field public static final enum NORMAL:Lcom/wandoujia/p4/video/model/VideoSharpness;

.field public static final enum SUPER:Lcom/wandoujia/p4/video/model/VideoSharpness;


# instance fields
.field private chineseName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/wandoujia/p4/video/model/VideoSharpness;

    const-string v1, "NORMAL"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0563

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/video/model/VideoSharpness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/model/VideoSharpness;->NORMAL:Lcom/wandoujia/p4/video/model/VideoSharpness;

    .line 11
    new-instance v0, Lcom/wandoujia/p4/video/model/VideoSharpness;

    const-string v1, "HIGH"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0562

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/video/model/VideoSharpness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/model/VideoSharpness;->HIGH:Lcom/wandoujia/p4/video/model/VideoSharpness;

    .line 12
    new-instance v0, Lcom/wandoujia/p4/video/model/VideoSharpness;

    const-string v1, "SUPER"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0564

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/video/model/VideoSharpness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/model/VideoSharpness;->SUPER:Lcom/wandoujia/p4/video/model/VideoSharpness;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/video/model/VideoSharpness;

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoSharpness;->NORMAL:Lcom/wandoujia/p4/video/model/VideoSharpness;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoSharpness;->HIGH:Lcom/wandoujia/p4/video/model/VideoSharpness;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoSharpness;->SUPER:Lcom/wandoujia/p4/video/model/VideoSharpness;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/p4/video/model/VideoSharpness;->$VALUES:[Lcom/wandoujia/p4/video/model/VideoSharpness;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/wandoujia/p4/video/model/VideoSharpness;->chineseName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static getVideoSharpness(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSharpness;
    .locals 1
    .parameter

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoSharpness;->valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSharpness;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSharpness;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/wandoujia/p4/video/model/VideoSharpness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/VideoSharpness;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video/model/VideoSharpness;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/wandoujia/p4/video/model/VideoSharpness;->$VALUES:[Lcom/wandoujia/p4/video/model/VideoSharpness;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video/model/VideoSharpness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video/model/VideoSharpness;

    return-object v0
.end method


# virtual methods
.method public final getChineseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/VideoSharpness;->chineseName:Ljava/lang/String;

    return-object v0
.end method
