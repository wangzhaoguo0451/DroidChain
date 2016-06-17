.class public final enum Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;
.super Ljava/lang/Enum;
.source "PlayUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

.field public static final enum DIALOG_INSTALL:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

.field public static final enum DIALOG_INSTALLED:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

.field public static final enum DIALOG_UPGRADE:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    const-string v1, "DIALOG_UPGRADE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_UPGRADE:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    .line 86
    new-instance v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    const-string v1, "DIALOG_INSTALL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALL:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    .line 87
    new-instance v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    const-string v1, "DIALOG_INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALLED:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    sget-object v1, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_UPGRADE:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALL:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALLED:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->$VALUES:[Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;
    .locals 1
    .parameter

    .prologue
    .line 84
    const-class v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->$VALUES:[Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    return-object v0
.end method
