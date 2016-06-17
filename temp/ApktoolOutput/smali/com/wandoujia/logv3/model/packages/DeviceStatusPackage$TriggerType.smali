.class public final enum Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;
.super Ljava/lang/Enum;
.source "DeviceStatusPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

.field public static final enum LOCATION:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

.field public static final enum OPEN_APP:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

.field public static final enum TIMEOUT:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

.field public static final enum UNKNOWN:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 313
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    .line 317
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    const-string v1, "OPEN_APP"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->OPEN_APP:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    .line 321
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->LOCATION:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    .line 325
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->TIMEOUT:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    .line 311
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->OPEN_APP:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->LOCATION:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->TIMEOUT:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->$VALUES:[Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

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
    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 330
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->value:I

    .line 331
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;
    .locals 1
    .parameter

    .prologue
    .line 311
    const-class v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->$VALUES:[Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage$TriggerType;->value:I

    return v0
.end method
