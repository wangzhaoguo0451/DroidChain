.class public final enum Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;
.super Ljava/lang/Enum;
.source "InstallInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

.field public static final enum INIT:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

.field public static final enum INSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

.field public static final enum INSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

.field public static final enum INSTALL_ERROR:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

.field public static final enum INSTALL_START:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

.field public static final enum UNINSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

.field public static final enum UNINSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

.field public static final enum UNZIPPING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

.field public static final enum UPGRADE:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INIT:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    .line 9
    new-instance v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    const-string v1, "INSTALL_START"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALL_START:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    .line 10
    new-instance v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    const-string v1, "INSTALLING"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    .line 11
    new-instance v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    const-string v1, "INSTALL_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALL_ERROR:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    .line 12
    new-instance v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    .line 13
    new-instance v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    const-string v1, "UNINSTALLING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNINSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    .line 14
    new-instance v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    const-string v1, "UNINSTALLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNINSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    .line 15
    new-instance v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    const-string v1, "UPGRADE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UPGRADE:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    .line 16
    new-instance v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    const-string v1, "UNZIPPING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNZIPPING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    .line 7
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INIT:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALL_START:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALL_ERROR:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNINSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNINSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UPGRADE:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNZIPPING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->$VALUES:[Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->$VALUES:[Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    return-object v0
.end method
