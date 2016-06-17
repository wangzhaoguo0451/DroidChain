.class public final enum Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;
.super Ljava/lang/Enum;
.source "ZipManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

.field public static final enum FAILED:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

.field public static final enum SUCCESS:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

.field public static final enum UNZIPPING:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    const-string v1, "UNZIPPING"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->UNZIPPING:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    .line 55
    new-instance v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->FAILED:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    .line 57
    new-instance v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->SUCCESS:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->UNZIPPING:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->FAILED:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->SUCCESS:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->$VALUES:[Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->$VALUES:[Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    return-object v0
.end method
