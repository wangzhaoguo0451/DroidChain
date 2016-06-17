.class public final enum Lcom/wandoujia/ripple_framework/log/Logger$Module;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/log/Logger$Module;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum ACCOUNT:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum ATTACHMENT:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum BOX:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum COMMENTS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum DOWNLOAD:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum FEEDBACK:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum FOLLOW:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum GALLERY:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum GAME_DETAIL:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum GLANCE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum ITEM:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum LOCKSCREEN:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum ME_APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum NOTIFICATION:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum SELF_UPGRADE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum SETTINGS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum VIDEOS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

.field public static final enum WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "BOX"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->BOX:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 44
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "APPS"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 45
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "VIDEOS"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->VIDEOS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 46
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "FOLLOW"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->FOLLOW:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 47
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "COMMENTS"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->COMMENTS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 48
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "SEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 49
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "DOWNLOAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->DOWNLOAD:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 50
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "SETTINGS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SETTINGS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 51
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "ACCOUNT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ACCOUNT:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 52
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "ATTACHMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ATTACHMENT:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 53
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "FEEDBACK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->FEEDBACK:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 54
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "UI"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 55
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "ITEM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ITEM:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 56
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "WELCOME"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 57
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "GALLERY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->GALLERY:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 58
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "SELF_UPGRADE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SELF_UPGRADE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 59
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->NOTIFICATION:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 60
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "ME_APPS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ME_APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 61
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "GAME_DETAIL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->GAME_DETAIL:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 62
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "LOCKSCREEN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->LOCKSCREEN:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 63
    new-instance v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    const-string v1, "GLANCE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->GLANCE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    .line 42
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v1, Lcom/wandoujia/ripple_framework/log/Logger$Module;->BOX:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/log/Logger$Module;->VIDEOS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/ripple_framework/log/Logger$Module;->FOLLOW:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/ripple_framework/log/Logger$Module;->COMMENTS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->DOWNLOAD:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SETTINGS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ACCOUNT:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ATTACHMENT:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->FEEDBACK:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ITEM:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->GALLERY:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SELF_UPGRADE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->NOTIFICATION:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ME_APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->GAME_DETAIL:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->LOCKSCREEN:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->GLANCE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->$VALUES:[Lcom/wandoujia/ripple_framework/log/Logger$Module;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger$Module;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/log/Logger$Module;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->$VALUES:[Lcom/wandoujia/ripple_framework/log/Logger$Module;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/log/Logger$Module;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/log/Logger$Module;

    return-object v0
.end method
