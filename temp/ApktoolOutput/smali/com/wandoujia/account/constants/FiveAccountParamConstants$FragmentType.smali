.class public final enum Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;
.super Ljava/lang/Enum;
.source "FiveAccountParamConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

.field public static final enum FORGET_PASSWORD:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

.field public static final enum LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

.field public static final enum REGISTER:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

.field public static final enum USER_LEGAL:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    .line 112
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->REGISTER:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    .line 113
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    const-string v1, "FORGET_PASSWORD"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->FORGET_PASSWORD:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    .line 114
    new-instance v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    const-string v1, "USER_LEGAL"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->USER_LEGAL:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    sget-object v1, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->LOGIN:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->REGISTER:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->FORGET_PASSWORD:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->USER_LEGAL:Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->$VALUES:[Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;
    .locals 1
    .parameter

    .prologue
    .line 110
    const-class v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->$VALUES:[Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    invoke-virtual {v0}, [Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/constants/FiveAccountParamConstants$FragmentType;

    return-object v0
.end method
