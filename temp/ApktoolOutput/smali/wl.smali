.class public final Lwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-static {}, Lace;->a()Lace;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 115
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v0

    .line 116
    const-string v1, "uncatch crash"

    .line 115
    invoke-virtual {v0, p2, v1}, Lacm;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 117
    invoke-static {p2}, Ld;->b(Ljava/lang/Object;)V

    .line 118
    return-void

    .line 113
    :cond_0
    iget-object v0, v2, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v3, v2, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lacd;->c()Lacf;

    move-result-object v0

    invoke-virtual {v0}, Lacf;->b()Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
