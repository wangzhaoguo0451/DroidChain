.class public final enum Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;
.super Ljava/lang/Enum;
.source "SharePlatformEnum.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

.field public static final enum OTHERS:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

.field public static final enum QQ:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

.field public static final enum WECHAT_MOMENT:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

.field public static final enum WECHAT_SESSION:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

.field public static final enum WEIBO:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 41
    new-instance v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    const-string v1, "WECHAT_MOMENT"

    invoke-direct {v0, v1, v7, v3}, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->WECHAT_MOMENT:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 42
    new-instance v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    const-string v1, "WECHAT_SESSION"

    invoke-direct {v0, v1, v3, v4}, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->WECHAT_SESSION:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 43
    new-instance v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    const-string v1, "QQ"

    invoke-direct {v0, v1, v4, v5}, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->QQ:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 44
    new-instance v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    const-string v1, "WEIBO"

    invoke-direct {v0, v1, v5, v6}, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->WEIBO:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 45
    new-instance v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    const-string v1, "OTHERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->OTHERS:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    sget-object v1, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->WECHAT_MOMENT:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->WECHAT_SESSION:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->QQ:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->WEIBO:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->OTHERS:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->$VALUES:[Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->value:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->$VALUES:[Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    invoke-virtual {v0}, [Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->value:I

    return v0
.end method
