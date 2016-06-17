.class public final enum Lcom/wandoujia/account/AccountParams$Page;
.super Ljava/lang/Enum;
.source "AccountParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/AccountParams$Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/AccountParams$Page;

.field public static final enum EMAIL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

.field public static final enum FORGET_PASSWORD:Lcom/wandoujia/account/AccountParams$Page;

.field public static final enum LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

.field public static final enum TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

.field public static final enum USER_TERMS:Lcom/wandoujia/account/AccountParams$Page;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/wandoujia/account/AccountParams$Page;

    const-string v1, "LOG_IN"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    .line 14
    new-instance v0, Lcom/wandoujia/account/AccountParams$Page;

    const-string v1, "TEL_REGISTER"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/AccountParams$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    .line 15
    new-instance v0, Lcom/wandoujia/account/AccountParams$Page;

    const-string v1, "EMAIL_REGISTER"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/account/AccountParams$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountParams$Page;->EMAIL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    .line 16
    new-instance v0, Lcom/wandoujia/account/AccountParams$Page;

    const-string v1, "FORGET_PASSWORD"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/account/AccountParams$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountParams$Page;->FORGET_PASSWORD:Lcom/wandoujia/account/AccountParams$Page;

    .line 17
    new-instance v0, Lcom/wandoujia/account/AccountParams$Page;

    const-string v1, "USER_TERMS"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/account/AccountParams$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountParams$Page;->USER_TERMS:Lcom/wandoujia/account/AccountParams$Page;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/account/AccountParams$Page;

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->EMAIL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->FORGET_PASSWORD:Lcom/wandoujia/account/AccountParams$Page;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->USER_TERMS:Lcom/wandoujia/account/AccountParams$Page;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/account/AccountParams$Page;->$VALUES:[Lcom/wandoujia/account/AccountParams$Page;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/AccountParams$Page;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/wandoujia/account/AccountParams$Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountParams$Page;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/AccountParams$Page;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/wandoujia/account/AccountParams$Page;->$VALUES:[Lcom/wandoujia/account/AccountParams$Page;

    invoke-virtual {v0}, [Lcom/wandoujia/account/AccountParams$Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/AccountParams$Page;

    return-object v0
.end method
