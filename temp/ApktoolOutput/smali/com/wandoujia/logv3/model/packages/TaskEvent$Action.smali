.class public final enum Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;
.super Ljava/lang/Enum;
.source "TaskEvent.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum BACKGROUND_DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CLEAR:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_ADB_IS_ONLINE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_CHECK_PROXY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_DOWNLOAD_DRIVER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_FORWARD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_GET_DEVICE_INFO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_GET_UDID:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_INSTALL_DRIVER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_INSTALL_PROXY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_OPEN_DEBUG_VIEW:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_SCAN_ADB:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum CONNECTION_UPGRADE_PROXY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum ERROR_REPORT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum INSTALL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum INTENT_EXECUTE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum LAUNCH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum LOCK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum LOGIN_IN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum MATCH_APPS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum NOTIFICATION_CLICK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum ORDER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum PAY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum PLAY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum PREFETCH_BOX:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum PREFETCH_VIDEO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum PUSH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum READ:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SEARCH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SELF_UPGRADE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SETTING_PASSWORD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SET_AS_WALLPAPER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SHARE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SIGN_UP:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SNAPLOCK_SETTINGS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SSO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum STORY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum STORY_LIFECYCLE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SUGGESTION:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SUGGESTION_NOTIFICATION:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum SYNC:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum TRANSFER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum TRIGGER_EVENT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum UNINSTALL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum UNLOCK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum UPDATE_DEVICE_STATUS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum UPGRADE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum USER_STAT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public static final enum VIEW_EVENT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 282
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 286
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 290
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "PAY"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PAY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 294
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "TRANSFER"

    invoke-direct {v0, v1, v7, v7}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->TRANSFER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 298
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v8, v8}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PLAY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 302
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "READ"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->READ:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 306
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "OPEN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 310
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SEARCH"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SEARCH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 314
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "LOGIN_IN"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LOGIN_IN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 318
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SIGN_UP"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SIGN_UP:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 322
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CLEAR"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CLEAR:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 326
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "UPGRADE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->UPGRADE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 330
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SYNC"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SYNC:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 334
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SHARE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SHARE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 338
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SELF_UPGRADE"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SELF_UPGRADE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 342
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "ORDER"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->ORDER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 346
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "UPDATE_DEVICE_STATUS"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->UPDATE_DEVICE_STATUS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 350
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_SCAN_ADB"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_SCAN_ADB:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 354
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_GET_DEVICE_INFO"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_GET_DEVICE_INFO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 358
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_DOWNLOAD_DRIVER"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_DOWNLOAD_DRIVER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 362
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_INSTALL_DRIVER"

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_INSTALL_DRIVER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 366
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_ADB_IS_ONLINE"

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_ADB_IS_ONLINE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 370
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_GET_UDID"

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_GET_UDID:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 374
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_CHECK_PROXY"

    const/16 v2, 0x17

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_CHECK_PROXY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 378
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_INSTALL_PROXY"

    const/16 v2, 0x18

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_INSTALL_PROXY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 382
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_UPGRADE_PROXY"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_UPGRADE_PROXY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 386
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_FORWARD"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_FORWARD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 390
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SET_AS_WALLPAPER"

    const/16 v2, 0x1b

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SET_AS_WALLPAPER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 394
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "CONNECTION_OPEN_DEBUG_VIEW"

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_OPEN_DEBUG_VIEW:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 398
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "INSTALL"

    const/16 v2, 0x1d

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->INSTALL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 402
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "UNINSTALL"

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->UNINSTALL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 406
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "BACKGROUND_DOWNLOAD"

    const/16 v2, 0x1f

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->BACKGROUND_DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 410
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "PUSH"

    const/16 v2, 0x20

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PUSH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 414
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "PREFETCH_BOX"

    const/16 v2, 0x21

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PREFETCH_BOX:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 418
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "PREFETCH_VIDEO"

    const/16 v2, 0x22

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PREFETCH_VIDEO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 422
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "MATCH_APPS"

    const/16 v2, 0x23

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->MATCH_APPS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 426
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "VIEW_EVENT"

    const/16 v2, 0x24

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->VIEW_EVENT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 430
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "TRIGGER_EVENT"

    const/16 v2, 0x25

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->TRIGGER_EVENT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 434
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "STORY"

    const/16 v2, 0x26

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->STORY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 438
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SUGGESTION"

    const/16 v2, 0x27

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SUGGESTION:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 442
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SUGGESTION_NOTIFICATION"

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SUGGESTION_NOTIFICATION:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 446
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "NOTIFICATION_CLICK"

    const/16 v2, 0x29

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 450
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "LOCK"

    const/16 v2, 0x2a

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LOCK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 454
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "UNLOCK"

    const/16 v2, 0x2b

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->UNLOCK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 458
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "LAUNCH"

    const/16 v2, 0x2c

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LAUNCH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 462
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "USER_STAT"

    const/16 v2, 0x2d

    const/16 v3, 0x2e

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->USER_STAT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 466
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SSO"

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SSO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 467
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SNAPLOCK_SETTINGS"

    const/16 v2, 0x2f

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SNAPLOCK_SETTINGS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 471
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "SETTING_PASSWORD"

    const/16 v2, 0x30

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SETTING_PASSWORD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 475
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "ERROR_REPORT"

    const/16 v2, 0x31

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->ERROR_REPORT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 479
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "INTENT_EXECUTE"

    const/16 v2, 0x32

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->INTENT_EXECUTE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 483
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v1, "STORY_LIFECYCLE"

    const/16 v2, 0x33

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->STORY_LIFECYCLE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 280
    const/16 v0, 0x34

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PAY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->TRANSFER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PLAY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->READ:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SEARCH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LOGIN_IN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SIGN_UP:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CLEAR:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->UPGRADE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SYNC:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SHARE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SELF_UPGRADE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->ORDER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->UPDATE_DEVICE_STATUS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_SCAN_ADB:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_GET_DEVICE_INFO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_DOWNLOAD_DRIVER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_INSTALL_DRIVER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_ADB_IS_ONLINE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_GET_UDID:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_CHECK_PROXY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_INSTALL_PROXY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_UPGRADE_PROXY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_FORWARD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SET_AS_WALLPAPER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->CONNECTION_OPEN_DEBUG_VIEW:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->INSTALL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->UNINSTALL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->BACKGROUND_DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PUSH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PREFETCH_BOX:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PREFETCH_VIDEO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->MATCH_APPS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->VIEW_EVENT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->TRIGGER_EVENT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->STORY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SUGGESTION:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SUGGESTION_NOTIFICATION:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LOCK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->UNLOCK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LAUNCH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->USER_STAT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SSO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SNAPLOCK_SETTINGS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SETTING_PASSWORD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->ERROR_REPORT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->INTENT_EXECUTE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->STORY_LIFECYCLE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->$VALUES:[Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 488
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->value:I

    .line 489
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;
    .locals 1
    .parameter

    .prologue
    .line 280
    const-class v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->$VALUES:[Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->value:I

    return v0
.end method
