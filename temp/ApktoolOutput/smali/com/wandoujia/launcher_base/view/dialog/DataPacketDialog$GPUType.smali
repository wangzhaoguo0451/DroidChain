.class public final enum Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;
.super Ljava/lang/Enum;
.source "DataPacketDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

.field public static final enum Common:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

.field public static final enum None:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

.field public static final enum Orion:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

.field public static final enum Qualcomm:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

.field public static final enum Samung:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

.field public static final enum Tegra:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

.field public static final enum TexasInstruments:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;


# instance fields
.field private final assignedNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 40
    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    const-string v1, "Tegra"

    invoke-direct {v0, v1, v7, v4}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Tegra:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    const-string v1, "Samung"

    invoke-direct {v0, v1, v4, v5}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Samung:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    const-string v1, "TexasInstruments"

    invoke-direct {v0, v1, v5, v6}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->TexasInstruments:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    const-string v1, "Qualcomm"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Qualcomm:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    const-string v1, "Orion"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Orion:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    const-string v1, "Common"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Common:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    new-instance v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    const-string v1, "None"

    const/4 v2, 0x6

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->None:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Tegra:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Samung:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->TexasInstruments:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Qualcomm:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Orion:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->Common:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->None:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->$VALUES:[Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->assignedNum:I

    .line 43
    return-void
.end method

.method static synthetic access$200(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->assignedNum:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->$VALUES:[Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;

    return-object v0
.end method


# virtual methods
.method public final getAssignedNum()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog$GPUType;->assignedNum:I

    return v0
.end method
