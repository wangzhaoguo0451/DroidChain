.class public final enum Lcom/wandoujia/account/dto/Platform;
.super Ljava/lang/Enum;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/dto/Platform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/dto/Platform;

.field public static final enum ASUS:Lcom/wandoujia/account/dto/Platform;

.field public static final enum DOUBAN:Lcom/wandoujia/account/dto/Platform;

.field public static final enum FACEBOOK:Lcom/wandoujia/account/dto/Platform;

.field public static final enum GOOGLE:Lcom/wandoujia/account/dto/Platform;

.field public static final enum QQ:Lcom/wandoujia/account/dto/Platform;

.field public static final enum RENREN:Lcom/wandoujia/account/dto/Platform;

.field public static final enum SINA:Lcom/wandoujia/account/dto/Platform;

.field public static final enum TWITTER:Lcom/wandoujia/account/dto/Platform;

.field public static final enum UNKONWN:Lcom/wandoujia/account/dto/Platform;

.field public static final enum WANDOU:Lcom/wandoujia/account/dto/Platform;

.field public static final enum WECHAT:Lcom/wandoujia/account/dto/Platform;


# instance fields
.field private final platform:Ljava/lang/String;

.field private thirdParty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "WANDOU"

    const-string v2, "wandou"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->WANDOU:Lcom/wandoujia/account/dto/Platform;

    .line 5
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "SINA"

    const-string v2, "sina"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    .line 6
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "QQ"

    const-string v2, "qq"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    .line 7
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "RENREN"

    const-string v2, "renren"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    .line 8
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "DOUBAN"

    const-string v2, "douban"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->DOUBAN:Lcom/wandoujia/account/dto/Platform;

    .line 9
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "GOOGLE"

    const/4 v2, 0x5

    const-string v3, "google"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->GOOGLE:Lcom/wandoujia/account/dto/Platform;

    .line 10
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x6

    const-string v3, "facebook"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->FACEBOOK:Lcom/wandoujia/account/dto/Platform;

    .line 11
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "TWITTER"

    const/4 v2, 0x7

    const-string v3, "twitter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->TWITTER:Lcom/wandoujia/account/dto/Platform;

    .line 12
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "ASUS"

    const/16 v2, 0x8

    const-string v3, "asus"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->ASUS:Lcom/wandoujia/account/dto/Platform;

    .line 13
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "WECHAT"

    const/16 v2, 0x9

    const-string v3, "wechat"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->WECHAT:Lcom/wandoujia/account/dto/Platform;

    .line 14
    new-instance v0, Lcom/wandoujia/account/dto/Platform;

    const-string v1, "UNKONWN"

    const/16 v2, 0xa

    const-string v3, "unkonwn"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/wandoujia/account/dto/Platform;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->UNKONWN:Lcom/wandoujia/account/dto/Platform;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/wandoujia/account/dto/Platform;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->WANDOU:Lcom/wandoujia/account/dto/Platform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->DOUBAN:Lcom/wandoujia/account/dto/Platform;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->GOOGLE:Lcom/wandoujia/account/dto/Platform;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->FACEBOOK:Lcom/wandoujia/account/dto/Platform;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->TWITTER:Lcom/wandoujia/account/dto/Platform;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->ASUS:Lcom/wandoujia/account/dto/Platform;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->WECHAT:Lcom/wandoujia/account/dto/Platform;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->UNKONWN:Lcom/wandoujia/account/dto/Platform;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/account/dto/Platform;->$VALUES:[Lcom/wandoujia/account/dto/Platform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/wandoujia/account/dto/Platform;->platform:Ljava/lang/String;

    .line 20
    iput-boolean p4, p0, Lcom/wandoujia/account/dto/Platform;->thirdParty:Z

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/dto/Platform;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/wandoujia/account/dto/Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/Platform;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/dto/Platform;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/wandoujia/account/dto/Platform;->$VALUES:[Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v0}, [Lcom/wandoujia/account/dto/Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/dto/Platform;

    return-object v0
.end method


# virtual methods
.method public final getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/account/dto/Platform;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final isThirdParty()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/Platform;->thirdParty:Z

    return v0
.end method
