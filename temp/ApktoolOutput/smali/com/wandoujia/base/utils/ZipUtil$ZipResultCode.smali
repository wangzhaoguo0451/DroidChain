.class public final enum Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;
.super Ljava/lang/Enum;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

.field public static final enum ERROR_CREATE_DIR:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

.field public static final enum ERROR_ZIP_FILE:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

.field public static final enum ERROR_ZIP_FILE_NOT_FOUND:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

.field public static final enum UNZ_OK:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    const-string v1, "UNZ_OK"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->UNZ_OK:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    .line 69
    new-instance v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    const-string v1, "ERROR_ZIP_FILE_NOT_FOUND"

    const/16 v2, -0x68

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->ERROR_ZIP_FILE_NOT_FOUND:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    .line 70
    new-instance v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    const-string v1, "ERROR_ZIP_FILE"

    const/16 v2, -0x69

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->ERROR_ZIP_FILE:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    .line 71
    new-instance v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    const-string v1, "ERROR_CREATE_DIR"

    const/16 v2, -0x6a

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->ERROR_CREATE_DIR:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    sget-object v1, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->UNZ_OK:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->ERROR_ZIP_FILE_NOT_FOUND:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->ERROR_ZIP_FILE:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->ERROR_CREATE_DIR:Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->$VALUES:[Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->code:I

    .line 76
    return-void
.end method

.method public static fromCode(I)Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;
    .locals 5
    .parameter

    .prologue
    .line 79
    invoke-static {}, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->values()[Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 80
    iget v4, v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->code:I

    if-ne p0, v4, :cond_0

    .line 84
    :goto_1
    return-object v0

    .line 79
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;
    .locals 1
    .parameter

    .prologue
    .line 67
    const-class v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->$VALUES:[Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    invoke-virtual {v0}, [Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/base/utils/ZipUtil$ZipResultCode;

    return-object v0
.end method
