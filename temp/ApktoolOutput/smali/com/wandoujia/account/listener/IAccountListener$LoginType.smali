.class public final enum Lcom/wandoujia/account/listener/IAccountListener$LoginType;
.super Ljava/lang/Enum;
.source "IAccountListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/listener/IAccountListener$LoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/listener/IAccountListener$LoginType;

.field public static final enum AUTO_LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

.field public static final enum LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/listener/IAccountListener$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    .line 26
    new-instance v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    const-string v1, "AUTO_LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/listener/IAccountListener$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->AUTO_LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    sget-object v1, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->AUTO_LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->$VALUES:[Lcom/wandoujia/account/listener/IAccountListener$LoginType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/listener/IAccountListener$LoginType;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/listener/IAccountListener$LoginType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->$VALUES:[Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-virtual {v0}, [Lcom/wandoujia/account/listener/IAccountListener$LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    return-object v0
.end method
