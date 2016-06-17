.class public final enum Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;
.super Ljava/lang/Enum;
.source "InstallTaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum DOWNLOADING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum DOWNLOAD_CANCELED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum DOWNLOAD_FAILED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum DOWNLOAD_PAUSED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum DOWNLOAD_PENDING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum DOWNLOAD_SUCCESS:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum GAME_PACKET_PENDING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum INIT:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum INSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum INSTALLING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum INSTALL_ERROR:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum INSTALL_START:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum UNINSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum UNINSTALLING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum UNZIPPING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

.field public static final enum UPGRADE:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INIT:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 14
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOADING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 15
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "DOWNLOAD_PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_PAUSED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 16
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "DOWNLOAD_CANCELED"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_CANCELED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 17
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "DOWNLOAD_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_FAILED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 18
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "DOWNLOAD_PENDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_PENDING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 19
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "DOWNLOAD_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_SUCCESS:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 20
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "INSTALL_START"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALL_START:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 21
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "INSTALLING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALLING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 22
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "INSTALL_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALL_ERROR:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 23
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "INSTALLED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 24
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "UNINSTALLING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNINSTALLING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 25
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "UNINSTALLED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNINSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 26
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "UPGRADE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UPGRADE:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 27
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "GAME_PACKET_PENDING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->GAME_PACKET_PENDING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 28
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    const-string v1, "UNZIPPING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNZIPPING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INIT:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOADING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_PAUSED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_CANCELED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_FAILED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_PENDING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->DOWNLOAD_SUCCESS:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALL_START:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALLING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALL_ERROR:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNINSTALLING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNINSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UPGRADE:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->GAME_PACKET_PENDING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNZIPPING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->$VALUES:[Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->$VALUES:[Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    return-object v0
.end method
