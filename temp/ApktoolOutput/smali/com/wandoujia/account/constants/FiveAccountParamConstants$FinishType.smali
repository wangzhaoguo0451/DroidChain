.class public final enum Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;
.super Ljava/lang/Enum;
.source "FiveAccountParamConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

.field public static final enum AUTO_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

.field public static final enum CANCEL:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

.field public static final enum EMAIL_REGISTER:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

.field public static final enum LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

.field public static final enum QQ_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

.field public static final enum RENREN_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

.field public static final enum SINA_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

.field public static final enum TEL_REGISTER:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    const-string v1, "AUTO_LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->AUTO_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    .line 101
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    .line 102
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    const-string v1, "TEL_REGISTER"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->TEL_REGISTER:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    .line 103
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    const-string v1, "EMAIL_REGISTER"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->EMAIL_REGISTER:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    .line 104
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    const-string v1, "QQ_LOGIN"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->QQ_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    .line 105
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    const-string v1, "SINA_LOGIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->SINA_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    .line 106
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    const-string v1, "RENREN_LOGIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->RENREN_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    .line 107
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    const-string v1, "CANCEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->CANCEL:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    sget-object v1, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->AUTO_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->TEL_REGISTER:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->EMAIL_REGISTER:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->QQ_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->SINA_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->RENREN_LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->CANCEL:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->$VALUES:[Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;
    .locals 1
    .parameter

    .prologue
    .line 99
    const-class v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->$VALUES:[Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    invoke-virtual {v0}, [Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/constants/FiveAccountParamConstants$FinishType;

    return-object v0
.end method
