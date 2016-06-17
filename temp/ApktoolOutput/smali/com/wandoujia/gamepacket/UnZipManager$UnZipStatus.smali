.class public final enum Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;
.super Ljava/lang/Enum;
.source "UnZipManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

.field public static final enum FAILED:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

.field public static final enum FAILED_INSUFFICIENT_STORAGE:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

.field public static final enum SUCCESS:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

.field public static final enum UNZIPPING:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    const-string v1, "UNZIPPING"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->UNZIPPING:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    new-instance v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->FAILED:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    new-instance v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    const-string v1, "FAILED_INSUFFICIENT_STORAGE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->FAILED_INSUFFICIENT_STORAGE:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    new-instance v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->SUCCESS:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    sget-object v1, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->UNZIPPING:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->FAILED:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->FAILED_INSUFFICIENT_STORAGE:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->SUCCESS:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->$VALUES:[Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->$VALUES:[Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    return-object v0
.end method
