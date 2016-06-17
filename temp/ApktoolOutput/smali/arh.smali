.class public final Larh;
.super Ljava/lang/Object;
.source "DefaultFlexByteArrayPoolParams.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Larh;->a:I

    return-void
.end method

.method private static a(I)Landroid/util/SparseIntArray;
    .locals 3
    .parameter

    .prologue
    .line 31
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 32
    const/high16 v0, 0x2

    :goto_0
    const/high16 v2, 0x40

    if-gt v0, v2, :cond_0

    .line 33
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 35
    :cond_0
    return-object v1
.end method

.method public static a()Lart;
    .locals 5

    .prologue
    const/high16 v4, 0x40

    .line 39
    new-instance v0, Lart;

    sget v1, Larh;->a:I

    mul-int/2addr v1, v4

    sget v2, Larh;->a:I

    invoke-static {v2}, Larh;->a(I)Landroid/util/SparseIntArray;

    move-result-object v2

    sget v3, Larh;->a:I

    invoke-direct {v0, v4, v1, v2, v3}, Lart;-><init>(IILandroid/util/SparseIntArray;I)V

    return-object v0
.end method
