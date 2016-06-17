.class public final enum Lcom/wandoujia/account/dto/RegisterSource;
.super Ljava/lang/Enum;
.source "RegisterSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/dto/RegisterSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/dto/RegisterSource;

.field public static final enum ASUS:Lcom/wandoujia/account/dto/RegisterSource;

.field public static final enum EMAIL:Lcom/wandoujia/account/dto/RegisterSource;

.field public static final enum QQ:Lcom/wandoujia/account/dto/RegisterSource;

.field public static final enum RENREN:Lcom/wandoujia/account/dto/RegisterSource;

.field public static final enum SINA:Lcom/wandoujia/account/dto/RegisterSource;

.field public static final enum TELEPHONE:Lcom/wandoujia/account/dto/RegisterSource;

.field public static final enum UNKONWN:Lcom/wandoujia/account/dto/RegisterSource;

.field public static final enum WECHAT:Lcom/wandoujia/account/dto/RegisterSource;


# instance fields
.field private platform:Lcom/wandoujia/account/dto/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/wandoujia/account/dto/RegisterSource;

    const-string v1, "EMAIL"

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->WANDOU:Lcom/wandoujia/account/dto/Platform;

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/account/dto/RegisterSource;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Platform;)V

    sput-object v0, Lcom/wandoujia/account/dto/RegisterSource;->EMAIL:Lcom/wandoujia/account/dto/RegisterSource;

    .line 5
    new-instance v0, Lcom/wandoujia/account/dto/RegisterSource;

    const-string v1, "TELEPHONE"

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->WANDOU:Lcom/wandoujia/account/dto/Platform;

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/account/dto/RegisterSource;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Platform;)V

    sput-object v0, Lcom/wandoujia/account/dto/RegisterSource;->TELEPHONE:Lcom/wandoujia/account/dto/RegisterSource;

    .line 6
    new-instance v0, Lcom/wandoujia/account/dto/RegisterSource;

    const-string v1, "SINA"

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/account/dto/RegisterSource;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Platform;)V

    sput-object v0, Lcom/wandoujia/account/dto/RegisterSource;->SINA:Lcom/wandoujia/account/dto/RegisterSource;

    .line 7
    new-instance v0, Lcom/wandoujia/account/dto/RegisterSource;

    const-string v1, "QQ"

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/account/dto/RegisterSource;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Platform;)V

    sput-object v0, Lcom/wandoujia/account/dto/RegisterSource;->QQ:Lcom/wandoujia/account/dto/RegisterSource;

    .line 8
    new-instance v0, Lcom/wandoujia/account/dto/RegisterSource;

    const-string v1, "RENREN"

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/account/dto/RegisterSource;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Platform;)V

    sput-object v0, Lcom/wandoujia/account/dto/RegisterSource;->RENREN:Lcom/wandoujia/account/dto/RegisterSource;

    .line 9
    new-instance v0, Lcom/wandoujia/account/dto/RegisterSource;

    const-string v1, "ASUS"

    const/4 v2, 0x5

    sget-object v3, Lcom/wandoujia/account/dto/Platform;->ASUS:Lcom/wandoujia/account/dto/Platform;

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/account/dto/RegisterSource;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Platform;)V

    sput-object v0, Lcom/wandoujia/account/dto/RegisterSource;->ASUS:Lcom/wandoujia/account/dto/RegisterSource;

    .line 10
    new-instance v0, Lcom/wandoujia/account/dto/RegisterSource;

    const-string v1, "WECHAT"

    const/4 v2, 0x6

    sget-object v3, Lcom/wandoujia/account/dto/Platform;->WECHAT:Lcom/wandoujia/account/dto/Platform;

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/account/dto/RegisterSource;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Platform;)V

    sput-object v0, Lcom/wandoujia/account/dto/RegisterSource;->WECHAT:Lcom/wandoujia/account/dto/RegisterSource;

    .line 11
    new-instance v0, Lcom/wandoujia/account/dto/RegisterSource;

    const-string v1, "UNKONWN"

    const/4 v2, 0x7

    sget-object v3, Lcom/wandoujia/account/dto/Platform;->UNKONWN:Lcom/wandoujia/account/dto/Platform;

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/account/dto/RegisterSource;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Platform;)V

    sput-object v0, Lcom/wandoujia/account/dto/RegisterSource;->UNKONWN:Lcom/wandoujia/account/dto/RegisterSource;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/wandoujia/account/dto/RegisterSource;

    sget-object v1, Lcom/wandoujia/account/dto/RegisterSource;->EMAIL:Lcom/wandoujia/account/dto/RegisterSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/account/dto/RegisterSource;->TELEPHONE:Lcom/wandoujia/account/dto/RegisterSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/account/dto/RegisterSource;->SINA:Lcom/wandoujia/account/dto/RegisterSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/account/dto/RegisterSource;->QQ:Lcom/wandoujia/account/dto/RegisterSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/account/dto/RegisterSource;->RENREN:Lcom/wandoujia/account/dto/RegisterSource;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/account/dto/RegisterSource;->ASUS:Lcom/wandoujia/account/dto/RegisterSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/account/dto/RegisterSource;->WECHAT:Lcom/wandoujia/account/dto/RegisterSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/account/dto/RegisterSource;->UNKONWN:Lcom/wandoujia/account/dto/RegisterSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/account/dto/RegisterSource;->$VALUES:[Lcom/wandoujia/account/dto/RegisterSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Platform;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/account/dto/Platform;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/wandoujia/account/dto/RegisterSource;->platform:Lcom/wandoujia/account/dto/Platform;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/dto/RegisterSource;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/wandoujia/account/dto/RegisterSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/RegisterSource;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/dto/RegisterSource;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/wandoujia/account/dto/RegisterSource;->$VALUES:[Lcom/wandoujia/account/dto/RegisterSource;

    invoke-virtual {v0}, [Lcom/wandoujia/account/dto/RegisterSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/dto/RegisterSource;

    return-object v0
.end method


# virtual methods
.method public final getPlatform()Lcom/wandoujia/account/dto/Platform;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/account/dto/RegisterSource;->platform:Lcom/wandoujia/account/dto/Platform;

    return-object v0
.end method
