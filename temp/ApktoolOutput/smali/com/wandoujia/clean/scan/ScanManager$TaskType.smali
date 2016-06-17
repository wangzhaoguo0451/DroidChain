.class public final enum Lcom/wandoujia/clean/scan/ScanManager$TaskType;
.super Ljava/lang/Enum;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/clean/scan/ScanManager$TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/clean/scan/ScanManager$TaskType;

.field public static final enum APP_MEMORY:Lcom/wandoujia/clean/scan/ScanManager$TaskType;

.field public static final enum SYSTEM_CACHE:Lcom/wandoujia/clean/scan/ScanManager$TaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    const-string v1, "APP_MEMORY"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/clean/scan/ScanManager$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/clean/scan/ScanManager$TaskType;->APP_MEMORY:Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    .line 38
    new-instance v0, Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    const-string v1, "SYSTEM_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/clean/scan/ScanManager$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/clean/scan/ScanManager$TaskType;->SYSTEM_CACHE:Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    sget-object v1, Lcom/wandoujia/clean/scan/ScanManager$TaskType;->APP_MEMORY:Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/clean/scan/ScanManager$TaskType;->SYSTEM_CACHE:Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/clean/scan/ScanManager$TaskType;->$VALUES:[Lcom/wandoujia/clean/scan/ScanManager$TaskType;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/clean/scan/ScanManager$TaskType;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/clean/scan/ScanManager$TaskType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/wandoujia/clean/scan/ScanManager$TaskType;->$VALUES:[Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    invoke-virtual {v0}, [Lcom/wandoujia/clean/scan/ScanManager$TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/clean/scan/ScanManager$TaskType;

    return-object v0
.end method
