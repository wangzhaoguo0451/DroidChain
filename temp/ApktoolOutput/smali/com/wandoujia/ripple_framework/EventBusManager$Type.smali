.class public final enum Lcom/wandoujia/ripple_framework/EventBusManager$Type;
.super Ljava/lang/Enum;
.source "EventBusManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/EventBusManager$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum APP_IN_FOREGROUND:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum DOWNLOADING_APP_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum DOWNLOAD_CLEAR_TASKS_ACTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum DROP_ALL_SUBSCRIPTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum FAVORITE_SYNC_FAIL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum FAVORITE_SYNC_SUCCESS:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum FOLLOW_DATA_CHANGE:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum FOLLOW_DATA_READY:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum FOLLOW_SYNC_SUCCESS:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum HOMEPAGE_REFRESH:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum LOCAL_APP_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum MULTI_UNINSTALL_SELECT:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum NEW_FOLLOW_USER:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum OFFLINE_CAN_BACKGROUND_OFFLINE_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum OFFLINE_CAN_OFFLINE_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum OFFLINE_STATUS_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum PACKET_UNZIPPING:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum REFRESH_TO_LOAD_NEW_FEED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum SUBSCRIBE_STATUS_CHANGE:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum UNINSTALL_ALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum UNINSTALL_APP:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum USER_DATA_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

.field public static final enum WECHAT_SHARE_SUCCESS:Lcom/wandoujia/ripple_framework/EventBusManager$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "DOWNLOADING_APP_CHANGED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DOWNLOADING_APP_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 21
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "LOCAL_APP_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->LOCAL_APP_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 24
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "SUBSCRIBE_STATUS_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->SUBSCRIBE_STATUS_CHANGE:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 27
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "FOLLOW_SYNC_SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FOLLOW_SYNC_SUCCESS:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 28
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "FOLLOW_DATA_READY"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FOLLOW_DATA_READY:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 29
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "FOLLOW_DATA_CHANGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FOLLOW_DATA_CHANGE:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 32
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "FAVORITE_SYNC_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FAVORITE_SYNC_SUCCESS:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 33
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "FAVORITE_SYNC_FAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FAVORITE_SYNC_FAIL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 35
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "WECHAT_SHARE_SUCCESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->WECHAT_SHARE_SUCCESS:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 36
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "USER_DATA_CHANGED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->USER_DATA_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 38
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "APP_IN_FOREGROUND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->APP_IN_FOREGROUND:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 41
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "DOWNLOAD_CLEAR_TASKS_ACTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DOWNLOAD_CLEAR_TASKS_ACTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 44
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "MULTI_UNINSTALL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 45
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "UNINSTALL_ALL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_ALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 46
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "MULTI_UNINSTALL_SELECT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL_SELECT:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 47
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "UNINSTALL_APP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_APP:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 48
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "PACKET_UNZIPPING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->PACKET_UNZIPPING:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 51
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "HOMEPAGE_REFRESH"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->HOMEPAGE_REFRESH:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 54
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "DROP_ALL_SUBSCRIPTION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DROP_ALL_SUBSCRIPTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 56
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "NEW_FOLLOW_USER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->NEW_FOLLOW_USER:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 59
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "OFFLINE_STATUS_CHANGED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->OFFLINE_STATUS_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 60
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "OFFLINE_CAN_OFFLINE_CHANGED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->OFFLINE_CAN_OFFLINE_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 61
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "OFFLINE_CAN_BACKGROUND_OFFLINE_CHANGED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->OFFLINE_CAN_BACKGROUND_OFFLINE_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 64
    new-instance v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const-string v1, "REFRESH_TO_LOAD_NEW_FEED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->REFRESH_TO_LOAD_NEW_FEED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    .line 19
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DOWNLOADING_APP_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->LOCAL_APP_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->SUBSCRIBE_STATUS_CHANGE:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FOLLOW_SYNC_SUCCESS:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FOLLOW_DATA_READY:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FOLLOW_DATA_CHANGE:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FAVORITE_SYNC_SUCCESS:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->FAVORITE_SYNC_FAIL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->WECHAT_SHARE_SUCCESS:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->USER_DATA_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->APP_IN_FOREGROUND:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DOWNLOAD_CLEAR_TASKS_ACTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_ALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL_SELECT:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_APP:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->PACKET_UNZIPPING:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->HOMEPAGE_REFRESH:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DROP_ALL_SUBSCRIPTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->NEW_FOLLOW_USER:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->OFFLINE_STATUS_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->OFFLINE_CAN_OFFLINE_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->OFFLINE_CAN_BACKGROUND_OFFLINE_CHANGED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->REFRESH_TO_LOAD_NEW_FEED:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->$VALUES:[Lcom/wandoujia/ripple_framework/EventBusManager$Type;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/EventBusManager$Type;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/EventBusManager$Type;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->$VALUES:[Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/EventBusManager$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    return-object v0
.end method
