.class public final enum Lcom/wandoujia/account/AccountErrorType;
.super Ljava/lang/Enum;
.source "AccountErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/AccountErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/AccountErrorType;

.field public static final enum EMAIL_EMPTY:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum EMAIL_INVALID:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum NICK_EMPTY:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum OK:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum PASSWORD_EMPTY:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum PASSWORD_INVALID:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum PASSWORD_TOO_LONG:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum PASSWORD_TOO_SHORT:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum TEL_EMPTY:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum TEL_INVALID:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum USERNAME_EMPTY:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum USERNAME_INVALID:Lcom/wandoujia/account/AccountErrorType;

.field public static final enum USERNAME_TOO_LONG:Lcom/wandoujia/account/AccountErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->OK:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "USERNAME_EMPTY"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->USERNAME_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "PASSWORD_EMPTY"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "NICK_EMPTY"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->NICK_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "USERNAME_INVALID"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->USERNAME_INVALID:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "USERNAME_TOO_LONG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->USERNAME_TOO_LONG:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "PASSWORD_INVALID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_INVALID:Lcom/wandoujia/account/AccountErrorType;

    .line 5
    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "PASSWORD_TOO_SHORT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_TOO_SHORT:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "PASSWORD_TOO_LONG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_TOO_LONG:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "EMAIL_INVALID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->EMAIL_INVALID:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "EMAIL_EMPTY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->EMAIL_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "TEL_INVALID"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->TEL_INVALID:Lcom/wandoujia/account/AccountErrorType;

    new-instance v0, Lcom/wandoujia/account/AccountErrorType;

    const-string v1, "TEL_EMPTY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->TEL_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/wandoujia/account/AccountErrorType;

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->OK:Lcom/wandoujia/account/AccountErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->USERNAME_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->NICK_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->USERNAME_INVALID:Lcom/wandoujia/account/AccountErrorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/account/AccountErrorType;->USERNAME_TOO_LONG:Lcom/wandoujia/account/AccountErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_INVALID:Lcom/wandoujia/account/AccountErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_TOO_SHORT:Lcom/wandoujia/account/AccountErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/account/AccountErrorType;->PASSWORD_TOO_LONG:Lcom/wandoujia/account/AccountErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/account/AccountErrorType;->EMAIL_INVALID:Lcom/wandoujia/account/AccountErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/account/AccountErrorType;->EMAIL_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/account/AccountErrorType;->TEL_INVALID:Lcom/wandoujia/account/AccountErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/account/AccountErrorType;->TEL_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/account/AccountErrorType;->$VALUES:[Lcom/wandoujia/account/AccountErrorType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/wandoujia/account/AccountErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountErrorType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/AccountErrorType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->$VALUES:[Lcom/wandoujia/account/AccountErrorType;

    invoke-virtual {v0}, [Lcom/wandoujia/account/AccountErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/AccountErrorType;

    return-object v0
.end method
