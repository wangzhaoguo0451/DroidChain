.class public final enum Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;
.super Ljava/lang/Enum;
.source "GamePacketInstaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

.field public static final enum DOWNLOADING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

.field public static final enum INSTALLING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

.field public static final enum INSTALL_APK:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

.field public static final enum PENDING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->PENDING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    .line 52
    new-instance v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->DOWNLOADING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    .line 53
    new-instance v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    const-string v1, "INSTALLING"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->INSTALLING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    .line 54
    new-instance v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    const-string v1, "INSTALL_APK"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->INSTALL_APK:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    sget-object v1, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->PENDING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->DOWNLOADING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->INSTALLING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->INSTALL_APK:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->$VALUES:[Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->$VALUES:[Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    return-object v0
.end method
