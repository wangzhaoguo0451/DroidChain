.class public final enum Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;
.super Ljava/lang/Enum;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum ACCOUNT_PAGE:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum ACCOUNT_PROFILE:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum ACTIONBAR:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum APPDETAIL_COMMENT:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum APPDETAIL_FRIENDS:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum APPDETAIL_LEADERBOARD:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum COMMUNITY:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum FRIENDS_MANAGE:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum MY_THING:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

.field public static final enum SUBSCRIBE_INTRO_CARD:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "FRIENDS_MANAGE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->FRIENDS_MANAGE:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "APPDETAIL_COMMENT"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->APPDETAIL_COMMENT:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "APPDETAIL_FRIENDS"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->APPDETAIL_FRIENDS:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "APPDETAIL_LEADERBOARD"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->APPDETAIL_LEADERBOARD:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "ACTIONBAR"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->ACTIONBAR:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    .line 43
    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "ACCOUNT_PROFILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->ACCOUNT_PROFILE:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "MY_THING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->MY_THING:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "ACCOUNT_PAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->ACCOUNT_PAGE:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "COMMUNITY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->COMMUNITY:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    new-instance v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    const-string v1, "SUBSCRIBE_INTRO_CARD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->SUBSCRIBE_INTRO_CARD:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    sget-object v1, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->FRIENDS_MANAGE:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->APPDETAIL_COMMENT:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->APPDETAIL_FRIENDS:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->APPDETAIL_LEADERBOARD:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->ACTIONBAR:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->ACCOUNT_PROFILE:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->MY_THING:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->ACCOUNT_PAGE:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->COMMUNITY:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->SUBSCRIBE_INTRO_CARD:Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->$VALUES:[Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->$VALUES:[Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/utils/LogUtil$UserHomePageEntrance;

    return-object v0
.end method
