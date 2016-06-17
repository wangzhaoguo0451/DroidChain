.class public final enum Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;
.super Ljava/lang/Enum;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

.field public static final enum FINISH:Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

.field public static final enum RUNNING:Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

.field public static final enum START:Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;


# instance fields
.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    const-string v1, "START"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->START:Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    .line 43
    new-instance v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->RUNNING:Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    .line 44
    new-instance v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->FINISH:Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    sget-object v1, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->START:Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->RUNNING:Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->FINISH:Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->$VALUES:[Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->priority:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->priority:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->$VALUES:[Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/clean/scan/ScanManager$TaskStatus;

    return-object v0
.end method
