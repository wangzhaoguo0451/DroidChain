.class public final Leuz;
.super Ljava/lang/Object;
.source "RootPopWidget.java"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 22
    sput-object v0, Leuz;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->STORAGE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ordinal()I

    move-result v1

    const v2, 0x7f0e051a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Leuz;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INCONSISTENT_CERTIFICATES:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ordinal()I

    move-result v1

    const v2, 0x7f0e0519

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Leuz;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INSUFFICIENT_STORAGE:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ordinal()I

    move-result v1

    const v2, 0x7f0e051b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    const v0, 0x7f0e0555

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    const v0, 0x7f0e038d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0
.end method
