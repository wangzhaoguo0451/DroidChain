.class public final enum Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;
.super Ljava/lang/Enum;
.source "UpdateInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

.field public static final enum EXTREME:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

.field public static final enum NORMAL:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

.field public static final enum STRONG:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

.field public static final enum WEAK:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->WEAK:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    new-instance v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->NORMAL:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    new-instance v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->STRONG:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    new-instance v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    const-string v1, "EXTREME"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->EXTREME:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    sget-object v1, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->WEAK:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->NORMAL:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->STRONG:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->EXTREME:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->$VALUES:[Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->$VALUES:[Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    invoke-virtual {v0}, [Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    return-object v0
.end method
