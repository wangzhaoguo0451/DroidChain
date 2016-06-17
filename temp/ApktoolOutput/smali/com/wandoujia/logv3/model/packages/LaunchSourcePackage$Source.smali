.class public final enum Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;
.super Ljava/lang/Enum;
.source "LaunchSourcePackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum FLOAT_WALKMAN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum GAME_LAUNCHER:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum MARKET:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_APP:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_CLEAN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_DOWNLOAD:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_EBOOK:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_FREE_TRAFFIC:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_PUSH:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_PUSH_APP:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_SELF_UPGRADE:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_SYNC:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_VIDEO:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_WALKMAN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_WALLPAPER:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum NOTIFICATION_XIBAIBAI:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum RECEIVER_BLUETOOTH_HEADSET_CONNECT:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum RECEIVER_HEADSET_PLUG:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum SHORTCUT:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum START:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum UNKNOWN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum WELCOME:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

.field public static final enum WIDGET:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;


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

    .line 97
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 101
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "WELCOME"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->WELCOME:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 105
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "SHORTCUT"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->SHORTCUT:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 109
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "WIDGET"

    invoke-direct {v0, v1, v7, v7}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->WIDGET:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 113
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "MARKET"

    invoke-direct {v0, v1, v8, v8}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->MARKET:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 117
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "START"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->START:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 118
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_DOWNLOAD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_DOWNLOAD:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 119
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_SELF_UPGRADE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_SELF_UPGRADE:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 120
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_XIBAIBAI"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_XIBAIBAI:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 121
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_CLEAN"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_CLEAN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 122
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_PUSH"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_PUSH:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 123
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_PUSH_APP"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_PUSH_APP:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 124
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_APP"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_APP:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 125
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_VIDEO"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_VIDEO:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 126
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_EBOOK"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_EBOOK:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 127
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_WALLPAPER"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_WALLPAPER:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 128
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_FREE_TRAFFIC"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_FREE_TRAFFIC:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 129
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_SYNC"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_SYNC:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 130
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "GAME_LAUNCHER"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->GAME_LAUNCHER:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 131
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "NOTIFICATION_WALKMAN"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_WALKMAN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 132
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "FLOAT_WALKMAN"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->FLOAT_WALKMAN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 136
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "RECEIVER_HEADSET_PLUG"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->RECEIVER_HEADSET_PLUG:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 140
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    const-string v1, "RECEIVER_BLUETOOTH_HEADSET_CONNECT"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->RECEIVER_BLUETOOTH_HEADSET_CONNECT:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 95
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->WELCOME:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->SHORTCUT:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->WIDGET:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->MARKET:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->START:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_DOWNLOAD:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_SELF_UPGRADE:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_XIBAIBAI:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_CLEAN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_PUSH:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_PUSH_APP:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_APP:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_VIDEO:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_EBOOK:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_WALLPAPER:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_FREE_TRAFFIC:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_SYNC:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->GAME_LAUNCHER:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->NOTIFICATION_WALKMAN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->FLOAT_WALKMAN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->RECEIVER_HEADSET_PLUG:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->RECEIVER_BLUETOOTH_HEADSET_CONNECT:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->$VALUES:[Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

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
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->value:I

    .line 146
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;
    .locals 1
    .parameter

    .prologue
    .line 95
    const-class v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->$VALUES:[Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->value:I

    return v0
.end method
