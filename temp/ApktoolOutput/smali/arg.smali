.class public final Larg;
.super Ljava/lang/Object;
.source "DefaultBitmapPoolParams.java"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Larg;->a:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static a()Lart;
    .locals 8

    .prologue
    .line 49
    new-instance v1, Lart;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    const/high16 v3, 0x100

    if-le v0, v3, :cond_0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    :goto_0
    sget-object v3, Larg;->a:Landroid/util/SparseIntArray;

    invoke-direct {v1, v2, v0, v3}, Lart;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v1

    :cond_0
    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
