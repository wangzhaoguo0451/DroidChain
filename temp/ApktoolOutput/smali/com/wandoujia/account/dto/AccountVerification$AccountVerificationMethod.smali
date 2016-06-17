.class public final enum Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;
.super Ljava/lang/Enum;
.source "AccountVerification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

.field public static final enum EMAIL:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

.field public static final enum PASSWORD:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

.field public static final enum SMS:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    const-string v1, "PASSWORD"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->PASSWORD:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    new-instance v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->SMS:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    new-instance v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->EMAIL:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->PASSWORD:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->SMS:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->EMAIL:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->$VALUES:[Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->$VALUES:[Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    invoke-virtual {v0}, [Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    return-object v0
.end method
