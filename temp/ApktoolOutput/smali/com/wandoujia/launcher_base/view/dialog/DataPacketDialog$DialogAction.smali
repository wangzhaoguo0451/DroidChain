.class final enum Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;
.super Ljava/lang/Enum;
.source "DataPacketDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

.field public static final enum CANCEL:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

.field public static final enum CONFIRM:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

.field public static final enum SHOW:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;->SHOW:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    const-string v1, "CONFIRM"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;->CONFIRM:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;->CANCEL:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;->SHOW:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;->CONFIRM:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;->CANCEL:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;->$VALUES:[Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;->$VALUES:[Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$DialogAction;

    return-object v0
.end method
