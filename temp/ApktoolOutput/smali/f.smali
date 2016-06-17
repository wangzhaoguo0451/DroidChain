.class public final Lf;
.super Lag;
.source "BackStackRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static n:Z


# instance fields
.field public a:Lj;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Ljava/lang/CharSequence;

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lu;

.field private p:Lj;

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lf;->n:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lu;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    invoke-direct {p0}, Lag;-><init>()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf;->q:Z

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lf;->g:I

    .line 357
    iput-object p1, p0, Lf;->o:Lu;

    .line 358
    return-void
.end method

.method private a(Z)I
    .locals 2
    .parameter

    .prologue
    .line 624
    iget-boolean v0, p0, Lf;->r:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf;->r:Z

    .line 632
    iget-boolean v0, p0, Lf;->e:Z

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lf;->o:Lu;

    invoke-virtual {v0, p0}, Lu;->a(Lf;)I

    move-result v0

    iput v0, p0, Lf;->g:I

    .line 637
    :goto_0
    iget-object v0, p0, Lf;->o:Lu;

    invoke-virtual {v0, p0, p1}, Lu;->a(Ljava/lang/Runnable;Z)V

    .line 638
    iget v0, p0, Lf;->g:I

    return v0

    .line 635
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lf;->g:I

    goto :goto_0
.end method

.method static synthetic a(Lf;Lk;ZLandroid/support/v4/app/Fragment;)Ldv;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 191
    new-instance v0, Ldv;

    invoke-direct {v0}, Ldv;-><init>()V

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lf;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ld;->a(Ljava/util/Map;Landroid/view/View;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lf;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lf;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Lf;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ldv;)Ldv;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lbt;

    if-eqz v1, :cond_1

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lbt;

    :cond_1
    invoke-direct {p0, p1, v0, v3}, Lf;->a(Lk;Ldv;Z)V

    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lf;->m:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lea;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lbt;

    if-eqz v1, :cond_4

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lbt;

    :cond_4
    invoke-static {p1, v0, v3}, Lf;->b(Lk;Ldv;Z)V

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ldv;)Ldv;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ldv",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Ldv",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1318
    invoke-virtual {p2}, Ldv;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    :goto_0
    return-object p2

    .line 1321
    :cond_0
    new-instance v1, Ldv;

    invoke-direct {v1}, Ldv;-><init>()V

    .line 1322
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1323
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1324
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1325
    if-eqz v0, :cond_1

    .line 1326
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    .line 1329
    goto :goto_0
.end method

.method private a(Lk;Landroid/support/v4/app/Fragment;Z)Ldv;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Ldv",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1092
    new-instance v0, Ldv;

    invoke-direct {v0}, Ldv;-><init>()V

    .line 1093
    iget-object v1, p0, Lf;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1095
    if-eqz p3, :cond_2

    .line 1096
    iget-object v1, p0, Lf;->m:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lea;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 1103
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 1104
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lbt;

    if-eqz v1, :cond_1

    .line 1105
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lbt;

    .line 1108
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Lf;->a(Lk;Ldv;Z)V

    .line 1117
    :goto_1
    return-object v0

    .line 1098
    :cond_2
    iget-object v1, p0, Lf;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lf;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Lf;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ldv;)Ldv;

    move-result-object v0

    goto :goto_0

    .line 1110
    :cond_3
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lbt;

    if-eqz v1, :cond_4

    .line 1111
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lbt;

    .line 1114
    :cond_4
    invoke-static {p1, v0, v3}, Lf;->b(Lk;Ldv;Z)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ldv;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ldv",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1083
    if-eqz p0, :cond_1

    .line 1084
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-static {p2, v0}, Ld;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    .line 1087
    :cond_1
    :goto_0
    return-object p0

    .line 1084
    :cond_2
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-static {v0, p2}, Ld;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lk;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;Z)",
            "Lk;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1021
    new-instance v2, Lk;

    invoke-direct {v2}, Lk;-><init>()V

    .line 1026
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lf;->o:Lu;

    iget-object v1, v1, Lu;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lk;->d:Landroid/view/View;

    move v6, v7

    move v8, v7

    .line 1030
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1031
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1032
    invoke-direct/range {v0 .. v5}, Lf;->a(ILk;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    .line 1030
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    .line 1039
    :cond_0
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1040
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1041
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lf;->a(ILk;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    .line 1039
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1048
    :cond_2
    if-nez v8, :cond_3

    .line 1049
    const/4 v2, 0x0

    .line 1052
    :cond_3
    return-object v2

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lf;->o:Lu;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Lu;

    .line 419
    if-eqz p3, :cond_1

    .line 420
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 428
    :cond_1
    if-eqz p1, :cond_3

    .line 429
    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v0, p1, :cond_2

    .line 430
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 437
    :cond_3
    new-instance v0, Lj;

    invoke-direct {v0}, Lj;-><init>()V

    .line 438
    iput p4, v0, Lj;->c:I

    .line 439
    iput-object p2, v0, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 440
    invoke-virtual {p0, v0}, Lf;->a(Lj;)V

    .line 441
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLdv;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    if-eqz p2, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lbt;

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ldv;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ldv;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lbt;

    goto :goto_0
.end method

.method private static a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 748
    if-eqz p1, :cond_0

    .line 749
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 750
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 752
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    :cond_0
    return-void
.end method

.method private static a(Ldv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldv",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1395
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ldv;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1397
    invoke-virtual {p0, v0}, Ldv;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1398
    invoke-virtual {p0, v0, p2}, Ldv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1404
    :cond_0
    :goto_1
    return-void

    .line 1396
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1402
    :cond_2
    invoke-virtual {p0, p1, p2}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic a(Lf;Ldv;Lk;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lf;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lk;->c:Lal;

    iput-object v0, v1, Lal;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

.method static synthetic a(Lf;Lk;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Lf;->a(Lk;ILjava/lang/Object;)V

    return-void
.end method

.method private a(Lk;ILjava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1372
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    .line 1373
    :goto_0
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1374
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1375
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v3, p2, :cond_0

    .line 1377
    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_1

    .line 1378
    iget-object v3, p1, Lk;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1379
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Ld;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1381
    iget-object v3, p1, Lk;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1384
    :cond_1
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {p3, v3, v2}, Ld;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1386
    iget-object v3, p1, Lk;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1391
    :cond_2
    return-void
.end method

.method private a(Lk;Ldv;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk;",
            "Ldv",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1419
    iget-object v1, p0, Lf;->m:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    .line 1420
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1421
    iget-object v0, p0, Lf;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1422
    iget-object v1, p0, Lf;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1423
    invoke-virtual {p2, v1}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1424
    if-eqz v1, :cond_0

    .line 1425
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 1426
    if-eqz p3, :cond_2

    .line 1427
    iget-object v4, p1, Lk;->a:Ldv;

    invoke-static {v4, v0, v1}, Lf;->a(Ldv;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1419
    :cond_1
    iget-object v1, p0, Lf;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 1429
    :cond_2
    iget-object v4, p1, Lk;->a:Ldv;

    invoke-static {v4, v1, v0}, Lf;->a(Ldv;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1433
    :cond_3
    return-void
.end method

.method private a(ILk;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 29
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lk;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lf;->o:Lu;

    iget-object v3, v3, Lu;->h:Lr;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lr;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1135
    if-nez v5, :cond_0

    .line 1136
    const/4 v3, 0x0

    .line 1226
    :goto_0
    return v3

    .line 1138
    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    .line 1139
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    .line 1141
    if-nez v10, :cond_2

    const/16 v18, 0x0

    .line 1142
    :goto_1
    if-eqz v10, :cond_1

    if-nez v11, :cond_4

    :cond_1
    const/4 v6, 0x0

    .line 1144
    :goto_2
    if-nez v11, :cond_6

    const/4 v3, 0x0

    move-object v8, v3

    .line 1145
    :goto_3
    if-nez v18, :cond_8

    if-nez v6, :cond_8

    if-nez v8, :cond_8

    .line 1147
    const/4 v3, 0x0

    goto :goto_0

    .line 1141
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v3

    :goto_4
    invoke-static {v3}, Ld;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 1142
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v3

    :goto_5
    invoke-static {v3}, Ld;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_5
    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    .line 1144
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v3

    :goto_6
    invoke-static {v3}, Ld;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto :goto_3

    :cond_7
    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    .line 1149
    :cond_8
    const/4 v3, 0x0

    .line 1150
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    if-eqz v6, :cond_9

    .line 1152
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lf;->a(Lk;Landroid/support/v4/app/Fragment;Z)Ldv;

    move-result-object v3

    .line 1153
    move-object/from16 v0, p2

    iget-object v4, v0, Lk;->d:Landroid/view/View;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    invoke-virtual {v3}, Ldv;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1157
    if-eqz p3, :cond_11

    iget-object v4, v11, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lbt;

    .line 1160
    :goto_7
    if-eqz v4, :cond_9

    .line 1161
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ldv;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1162
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ldv;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1163
    :cond_9
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    move-object/from16 v0, p2

    iget-object v4, v0, Lk;->d:Landroid/view/View;

    move-object/from16 v0, v23

    invoke-static {v8, v11, v0, v3, v4}, Lf;->a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ldv;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v21

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lf;->m:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    .line 1173
    move-object/from16 v0, p0

    iget-object v4, v0, Lf;->m:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1174
    if-eqz v3, :cond_b

    .line 1175
    if-eqz v21, :cond_a

    .line 1176
    move-object/from16 v0, v21

    invoke-static {v0, v3}, Ld;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1178
    :cond_a
    if-eqz v6, :cond_b

    .line 1179
    invoke-static {v6, v3}, Ld;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1185
    :cond_b
    new-instance v17, Lg;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lg;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1193
    if-eqz v6, :cond_c

    .line 1194
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v3, Lh;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v3 .. v11}, Lh;-><init>(Lf;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Lk;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v12, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1198
    :cond_c
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    new-instance v16, Ldv;

    invoke-direct/range {v16 .. v16}, Ldv;-><init>()V

    .line 1201
    if-eqz p3, :cond_12

    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v3

    move v9, v3

    .line 1203
    :goto_8
    const/4 v10, 0x1

    move-object/from16 v3, v18

    check-cast v3, Landroid/transition/Transition;

    move-object/from16 v4, v21

    check-cast v4, Landroid/transition/Transition;

    move-object v8, v6

    check-cast v8, Landroid/transition/Transition;

    if-eqz v3, :cond_1a

    if-eqz v4, :cond_1a

    :goto_9
    if-eqz v9, :cond_13

    new-instance v9, Landroid/transition/TransitionSet;

    invoke-direct {v9}, Landroid/transition/TransitionSet;-><init>()V

    if-eqz v3, :cond_d

    invoke-virtual {v9, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v9, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual {v9, v8}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_f
    move-object v4, v9

    .line 1206
    :goto_a
    if-eqz v4, :cond_10

    .line 1207
    move-object/from16 v0, p2

    iget-object v12, v0, Lk;->d:Landroid/view/View;

    move-object/from16 v0, p2

    iget-object v13, v0, Lk;->c:Lal;

    move-object/from16 v0, p2

    iget-object v14, v0, Lk;->a:Ldv;

    move-object/from16 v8, v18

    move-object v9, v6

    move-object v10, v5

    move-object/from16 v11, v17

    move-object/from16 v17, v7

    invoke-static/range {v8 .. v17}, Ld;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Lam;Landroid/view/View;Lal;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1211
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v8, Li;

    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, p2

    move/from16 v12, p1

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Li;-><init>(Lf;Landroid/view/View;Lk;ILjava/lang/Object;)V

    invoke-virtual {v3, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1215
    move-object/from16 v0, p2

    iget-object v3, v0, Lk;->d:Landroid/view/View;

    const/4 v8, 0x1

    invoke-static {v4, v3, v8}, Ld;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1217
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lf;->a(Lk;ILjava/lang/Object;)V

    move-object v3, v4

    .line 1219
    check-cast v3, Landroid/transition/Transition;

    invoke-static {v5, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1221
    move-object/from16 v0, p2

    iget-object v0, v0, Lk;->d:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lk;->b:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v19, v18

    check-cast v19, Landroid/transition/Transition;

    move-object/from16 v22, v21

    check-cast v22, Landroid/transition/Transition;

    move-object/from16 v24, v6

    check-cast v24, Landroid/transition/Transition;

    move-object/from16 v28, v4

    check-cast v28, Landroid/transition/Transition;

    if-eqz v28, :cond_10

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v17, Lak;

    move-object/from16 v18, v5

    move-object/from16 v21, v15

    move-object/from16 v25, v7

    move-object/from16 v26, v16

    invoke-direct/range {v17 .. v28}, Lak;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1226
    :cond_10
    if-eqz v4, :cond_19

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1157
    :cond_11
    iget-object v4, v10, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lbt;

    goto/16 :goto_7

    .line 1201
    :cond_12
    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v3

    move v9, v3

    goto/16 :goto_8

    .line 1203
    :cond_13
    const/4 v9, 0x0

    if-eqz v4, :cond_16

    if-eqz v3, :cond_16

    new-instance v9, Landroid/transition/TransitionSet;

    invoke-direct {v9}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v9, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v3

    :cond_14
    :goto_b
    if-eqz v8, :cond_18

    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    if-eqz v3, :cond_15

    invoke-virtual {v4, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_15
    invoke-virtual {v4, v8}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto/16 :goto_a

    :cond_16
    if-eqz v4, :cond_17

    move-object v3, v4

    goto :goto_b

    :cond_17
    if-nez v3, :cond_14

    move-object v3, v9

    goto :goto_b

    :cond_18
    move-object v4, v3

    goto/16 :goto_a

    .line 1226
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1a
    move v9, v10

    goto/16 :goto_9
.end method

.method private static b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 758
    if-eqz p1, :cond_0

    .line 759
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 760
    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 764
    :cond_0
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->h:Lr;

    invoke-interface {v0}, Lr;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    :cond_0
    return-void

    .line 780
    :cond_1
    iget-object v0, p0, Lf;->a:Lj;

    move-object v3, v0

    .line 781
    :goto_0
    if-eqz v3, :cond_0

    .line 782
    iget v0, v3, Lj;->c:I

    packed-switch v0, :pswitch_data_0

    .line 820
    :goto_1
    iget-object v0, v3, Lj;->a:Lj;

    move-object v3, v0

    goto :goto_0

    .line 784
    :pswitch_0
    iget-object v0, v3, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Lf;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 787
    :pswitch_1
    iget-object v1, v3, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 788
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 789
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 790
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 791
    if-eqz v2, :cond_2

    iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_3

    .line 792
    :cond_2
    if-ne v0, v2, :cond_4

    .line 793
    const/4 v2, 0x0

    .line 789
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 795
    :cond_4
    invoke-static {p1, v0}, Lf;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    :cond_5
    move-object v2, v1

    .line 800
    :cond_6
    invoke-static {p2, v2}, Lf;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 804
    :pswitch_2
    iget-object v0, v3, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lf;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 807
    :pswitch_3
    iget-object v0, v3, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lf;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 810
    :pswitch_4
    iget-object v0, v3, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Lf;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 813
    :pswitch_5
    iget-object v0, v3, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lf;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 816
    :pswitch_6
    iget-object v0, v3, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Lf;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static b(Lk;Ldv;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk;",
            "Ldv",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1437
    invoke-virtual {p1}, Ldv;->size()I

    move-result v3

    .line 1438
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1439
    invoke-virtual {p1, v2}, Ldv;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1440
    invoke-virtual {p1, v2}, Ldv;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 1441
    if-eqz p2, :cond_0

    .line 1442
    iget-object v4, p0, Lk;->a:Ldv;

    invoke-static {v4, v0, v1}, Lf;->a(Ldv;Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1444
    :cond_0
    iget-object v4, p0, Lk;->a:Ldv;

    invoke-static {v4, v1, v0}, Lf;->a(Ldv;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1447
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf;->a(Z)I

    move-result v0

    return v0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;)Lag;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 407
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 408
    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 413
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Lag;
    .locals 2
    .parameter

    .prologue
    .line 457
    new-instance v0, Lj;

    invoke-direct {v0}, Lj;-><init>()V

    .line 458
    const/4 v1, 0x3

    iput v1, v0, Lj;->c:I

    .line 459
    iput-object p1, v0, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 460
    invoke-virtual {p0, v0}, Lf;->a(Lj;)V

    .line 462
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 402
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 403
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lag;
    .locals 2
    .parameter

    .prologue
    .line 544
    iget-boolean v0, p0, Lf;->q:Z

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf;->e:Z

    .line 549
    iput-object p1, p0, Lf;->f:Ljava/lang/String;

    .line 550
    return-object p0
.end method

.method public final a(ZLk;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lk;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lk;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Lk;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 875
    sget-boolean v0, Lf;->n:Z

    if-eqz v0, :cond_1

    .line 883
    if-nez p2, :cond_2

    .line 884
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    :cond_0
    invoke-direct {p0, p3, p4, v10}, Lf;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lk;

    move-result-object p2

    .line 892
    :cond_1
    invoke-virtual {p0, v9}, Lf;->a(I)V

    .line 894
    if-eqz p2, :cond_3

    move v7, v3

    .line 895
    :goto_0
    if-eqz p2, :cond_4

    move v1, v3

    .line 896
    :goto_1
    iget-object v0, p0, Lf;->p:Lj;

    move-object v6, v0

    .line 897
    :goto_2
    if-eqz v6, :cond_9

    .line 898
    if-eqz p2, :cond_5

    move v5, v3

    .line 899
    :goto_3
    if-eqz p2, :cond_6

    move v0, v3

    .line 900
    :goto_4
    iget v2, v6, Lj;->c:I

    packed-switch v2, :pswitch_data_0

    .line 952
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lj;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_2
    if-nez p1, :cond_1

    .line 888
    iget-object v5, p0, Lf;->m:Ljava/util/ArrayList;

    iget-object v6, p0, Lf;->l:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move v2, v3

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v7, p2, Lk;->a:Ldv;

    invoke-static {v7, v0, v1}, Lf;->a(Ldv;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 894
    :cond_3
    iget v0, p0, Lf;->d:I

    move v7, v0

    goto :goto_0

    .line 895
    :cond_4
    iget v0, p0, Lf;->c:I

    move v1, v0

    goto :goto_1

    .line 898
    :cond_5
    iget v0, v6, Lj;->g:I

    move v5, v0

    goto :goto_3

    .line 899
    :cond_6
    iget v0, v6, Lj;->h:I

    goto :goto_4

    .line 902
    :pswitch_0
    iget-object v2, v6, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 903
    iput v0, v2, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 904
    iget-object v0, p0, Lf;->o:Lu;

    invoke-static {v1}, Lu;->d(I)I

    move-result v5

    invoke-virtual {v0, v2, v5, v7}, Lu;->a(Landroid/support/v4/app/Fragment;II)V

    .line 956
    :cond_7
    :goto_6
    iget-object v0, v6, Lj;->b:Lj;

    move-object v6, v0

    .line 957
    goto :goto_2

    .line 908
    :pswitch_1
    iget-object v2, v6, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 909
    if-eqz v2, :cond_8

    .line 910
    iput v0, v2, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 911
    iget-object v0, p0, Lf;->o:Lu;

    invoke-static {v1}, Lu;->d(I)I

    move-result v8

    invoke-virtual {v0, v2, v8, v7}, Lu;->a(Landroid/support/v4/app/Fragment;II)V

    .line 914
    :cond_8
    iget-object v0, v6, Lj;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    move v2, v3

    .line 915
    :goto_7
    iget-object v0, v6, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 916
    iget-object v0, v6, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 917
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 918
    iget-object v8, p0, Lf;->o:Lu;

    invoke-virtual {v8, v0, v3}, Lu;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 915
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 923
    :pswitch_2
    iget-object v0, v6, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 924
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 925
    iget-object v2, p0, Lf;->o:Lu;

    invoke-virtual {v2, v0, v3}, Lu;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    .line 928
    :pswitch_3
    iget-object v0, v6, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 929
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 930
    iget-object v2, p0, Lf;->o:Lu;

    invoke-static {v1}, Lu;->d(I)I

    move-result v5

    invoke-virtual {v2, v0, v5, v7}, Lu;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 934
    :pswitch_4
    iget-object v2, v6, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 935
    iput v0, v2, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 936
    iget-object v0, p0, Lf;->o:Lu;

    invoke-static {v1}, Lu;->d(I)I

    move-result v5

    invoke-virtual {v0, v2, v5, v7}, Lu;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 940
    :pswitch_5
    iget-object v0, v6, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 941
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 942
    iget-object v2, p0, Lf;->o:Lu;

    invoke-static {v1}, Lu;->d(I)I

    move-result v5

    invoke-virtual {v2, v0, v5, v7}, Lu;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 946
    :pswitch_6
    iget-object v0, v6, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 947
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 948
    iget-object v2, p0, Lf;->o:Lu;

    invoke-static {v1}, Lu;->d(I)I

    move-result v5

    invoke-virtual {v2, v0, v5, v7}, Lu;->d(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 959
    :cond_9
    if-eqz p1, :cond_a

    .line 960
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v2, p0, Lf;->o:Lu;

    iget v2, v2, Lu;->f:I

    invoke-static {v1}, Lu;->d(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v7, v10}, Lu;->a(IIIZ)V

    move-object p2, v4

    .line 965
    :cond_a
    iget v0, p0, Lf;->g:I

    if-ltz v0, :cond_c

    .line 966
    iget-object v1, p0, Lf;->o:Lu;

    iget v0, p0, Lf;->g:I

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lu;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lu;->e:Ljava/util/ArrayList;

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lu;->e:Ljava/util/ArrayList;

    :cond_b
    iget-object v2, v1, Lu;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    iput v9, p0, Lf;->g:I

    .line 969
    :cond_c
    return-object p2

    .line 966
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 591
    iget-boolean v0, p0, Lf;->e:Z

    if-nez v0, :cond_1

    .line 613
    :cond_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lf;->a:Lj;

    move-object v2, v0

    .line 597
    :goto_0
    if-eqz v2, :cond_0

    .line 598
    iget-object v0, v2, Lj;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, v2, Lj;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 600
    :cond_2
    iget-object v0, v2, Lj;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 604
    iget-object v0, v2, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 605
    iget-object v0, v2, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 606
    iget v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 607
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 611
    :cond_3
    iget-object v0, v2, Lj;->a:Lj;

    move-object v2, v0

    goto :goto_0
.end method

.method public final a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->h:Lr;

    invoke-interface {v0}, Lr;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 871
    :cond_0
    return-void

    .line 838
    :cond_1
    iget-object v0, p0, Lf;->a:Lj;

    move-object v2, v0

    .line 839
    :goto_0
    if-eqz v2, :cond_0

    .line 840
    iget v0, v2, Lj;->c:I

    packed-switch v0, :pswitch_data_0

    .line 869
    :goto_1
    iget-object v0, v2, Lj;->a:Lj;

    move-object v2, v0

    goto :goto_0

    .line 842
    :pswitch_0
    iget-object v0, v2, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lf;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 845
    :pswitch_1
    iget-object v0, v2, Lj;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, v2, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 847
    iget-object v0, v2, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Lf;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 846
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 850
    :cond_2
    iget-object v0, v2, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lf;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 853
    :pswitch_2
    iget-object v0, v2, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Lf;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 856
    :pswitch_3
    iget-object v0, v2, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Lf;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 859
    :pswitch_4
    iget-object v0, v2, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lf;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 862
    :pswitch_5
    iget-object v0, v2, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Lf;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 865
    :pswitch_6
    iget-object v0, v2, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lf;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lj;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lf;->a:Lj;

    if-nez v0, :cond_0

    .line 388
    iput-object p1, p0, Lf;->p:Lj;

    iput-object p1, p0, Lf;->a:Lj;

    .line 394
    :goto_0
    iput v1, p1, Lj;->e:I

    .line 395
    iput v1, p1, Lj;->f:I

    .line 396
    iput v1, p1, Lj;->g:I

    .line 397
    iput v1, p1, Lj;->h:I

    .line 398
    iget v0, p0, Lf;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf;->b:I

    .line 399
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lf;->p:Lj;

    iput-object v0, p1, Lj;->b:Lj;

    .line 391
    iget-object v0, p0, Lf;->p:Lj;

    iput-object p1, v0, Lj;->a:Lj;

    .line 392
    iput-object p1, p0, Lf;->p:Lj;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lf;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lf;->g:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lf;->r:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lf;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lf;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lf;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lf;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lf;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lf;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lf;->i:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lf;->j:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lf;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lf;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lf;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lf;->a:Lj;

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lf;->a:Lj;

    move v2, v1

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_c

    iget v0, v3, Lj;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lj;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Lj;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget v0, v3, Lj;->e:I

    if-nez v0, :cond_5

    iget v0, v3, Lj;->f:I

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Lj;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Lj;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget v0, v3, Lj;->g:I

    if-nez v0, :cond_7

    iget v0, v3, Lj;->h:I

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Lj;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Lj;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v3, Lj;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, v3, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_2
    iget-object v5, v3, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v5, v3, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    :cond_9
    if-nez v0, :cond_a

    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v3, v3, Lj;->a:Lj;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 261
    :cond_c
    return-void

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lf;->a(Z)I

    move-result v0

    return v0
.end method

.method public final b(ILandroid/support/v4/app/Fragment;)Lag;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lf;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 453
    return-object p0
.end method

.method public final b(Landroid/support/v4/app/Fragment;)Lag;
    .locals 2
    .parameter

    .prologue
    .line 484
    new-instance v0, Lj;

    invoke-direct {v0}, Lj;-><init>()V

    .line 485
    const/4 v1, 0x6

    iput v1, v0, Lj;->c:I

    .line 486
    iput-object p1, v0, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 487
    invoke-virtual {p0, v0}, Lf;->a(Lj;)V

    .line 489
    return-object p0
.end method

.method public final c(Landroid/support/v4/app/Fragment;)Lag;
    .locals 2
    .parameter

    .prologue
    .line 493
    new-instance v0, Lj;

    invoke-direct {v0}, Lj;-><init>()V

    .line 494
    const/4 v1, 0x7

    iput v1, v0, Lj;->c:I

    .line 495
    iput-object p1, v0, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 496
    invoke-virtual {p0, v0}, Lf;->a(Lj;)V

    .line 498
    return-object p0
.end method

.method public final run()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 642
    iget-boolean v0, p0, Lf;->e:Z

    if-eqz v0, :cond_0

    .line 645
    iget v0, p0, Lf;->g:I

    if-gez v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    invoke-virtual {p0, v13}, Lf;->a(I)V

    .line 653
    sget-boolean v0, Lf;->n:Z

    if-eqz v0, :cond_10

    .line 656
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 657
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 659
    invoke-direct {p0, v0, v1}, Lf;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 661
    invoke-direct {p0, v0, v1, v2}, Lf;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lk;

    move-result-object v0

    move-object v10, v0

    .line 664
    :goto_0
    if-eqz v10, :cond_1

    move v9, v2

    .line 665
    :goto_1
    if-eqz v10, :cond_2

    move v1, v2

    .line 666
    :goto_2
    iget-object v0, p0, Lf;->a:Lj;

    move-object v8, v0

    .line 667
    :goto_3
    if-eqz v8, :cond_d

    .line 668
    if-eqz v10, :cond_3

    move v7, v2

    .line 669
    :goto_4
    if-eqz v10, :cond_4

    move v3, v2

    .line 670
    :goto_5
    iget v0, v8, Lj;->c:I

    packed-switch v0, :pswitch_data_0

    .line 733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lj;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    iget v0, p0, Lf;->d:I

    move v9, v0

    goto :goto_1

    .line 665
    :cond_2
    iget v0, p0, Lf;->c:I

    move v1, v0

    goto :goto_2

    .line 668
    :cond_3
    iget v0, v8, Lj;->e:I

    move v7, v0

    goto :goto_4

    .line 669
    :cond_4
    iget v0, v8, Lj;->f:I

    move v3, v0

    goto :goto_5

    .line 672
    :pswitch_0
    iget-object v0, v8, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 673
    iput v7, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 674
    iget-object v3, p0, Lf;->o:Lu;

    invoke-virtual {v3, v0, v2}, Lu;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 737
    :cond_5
    :goto_6
    iget-object v0, v8, Lj;->a:Lj;

    move-object v8, v0

    .line 738
    goto :goto_3

    .line 677
    :pswitch_1
    iget-object v0, v8, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 678
    iget-object v4, p0, Lf;->o:Lu;

    iget-object v4, v4, Lu;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    move v4, v2

    move-object v5, v0

    .line 679
    :goto_7
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    .line 680
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v0, v0, Lu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 681
    if-eqz v5, :cond_6

    iget v11, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v12, v5, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v11, v12, :cond_7

    .line 684
    :cond_6
    if-ne v0, v5, :cond_8

    .line 685
    iput-object v6, v8, Lj;->d:Landroid/support/v4/app/Fragment;

    move-object v5, v6

    .line 679
    :cond_7
    :goto_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    .line 687
    :cond_8
    iget-object v11, v8, Lj;->i:Ljava/util/ArrayList;

    if-nez v11, :cond_9

    .line 688
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v8, Lj;->i:Ljava/util/ArrayList;

    .line 690
    :cond_9
    iget-object v11, v8, Lj;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iput v3, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 692
    iget-boolean v11, p0, Lf;->e:Z

    if-eqz v11, :cond_a

    .line 693
    iget v11, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 694
    :cond_a
    iget-object v11, p0, Lf;->o:Lu;

    invoke-virtual {v11, v0, v1, v9}, Lu;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_8

    :cond_b
    move-object v5, v0

    .line 702
    :cond_c
    if-eqz v5, :cond_5

    .line 703
    iput v7, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 704
    iget-object v0, p0, Lf;->o:Lu;

    invoke-virtual {v0, v5, v2}, Lu;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    .line 708
    :pswitch_2
    iget-object v0, v8, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 709
    iput v3, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 710
    iget-object v3, p0, Lf;->o:Lu;

    invoke-virtual {v3, v0, v1, v9}, Lu;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 713
    :pswitch_3
    iget-object v0, v8, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 714
    iput v3, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 715
    iget-object v3, p0, Lf;->o:Lu;

    invoke-virtual {v3, v0, v1, v9}, Lu;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 718
    :pswitch_4
    iget-object v0, v8, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 719
    iput v7, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 720
    iget-object v3, p0, Lf;->o:Lu;

    invoke-virtual {v3, v0, v1, v9}, Lu;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 723
    :pswitch_5
    iget-object v0, v8, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 724
    iput v3, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 725
    iget-object v3, p0, Lf;->o:Lu;

    invoke-virtual {v3, v0, v1, v9}, Lu;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 728
    :pswitch_6
    iget-object v0, v8, Lj;->d:Landroid/support/v4/app/Fragment;

    .line 729
    iput v7, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 730
    iget-object v3, p0, Lf;->o:Lu;

    invoke-virtual {v3, v0, v1, v9}, Lu;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 740
    :cond_d
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v2, p0, Lf;->o:Lu;

    iget v2, v2, Lu;->f:I

    invoke-virtual {v0, v2, v1, v9, v13}, Lu;->a(IIIZ)V

    .line 742
    iget-boolean v0, p0, Lf;->e:Z

    if-eqz v0, :cond_f

    .line 743
    iget-object v0, p0, Lf;->o:Lu;

    iget-object v1, v0, Lu;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lu;->c:Ljava/util/ArrayList;

    :cond_e
    iget-object v1, v0, Lu;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lu;->i()V

    .line 745
    :cond_f
    return-void

    :cond_10
    move-object v10, v6

    goto/16 :goto_0

    .line 670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v1, p0, Lf;->g:I

    if-ltz v1, :cond_0

    .line 248
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget v1, p0, Lf;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    iget-object v1, p0, Lf;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 252
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v1, p0, Lf;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
