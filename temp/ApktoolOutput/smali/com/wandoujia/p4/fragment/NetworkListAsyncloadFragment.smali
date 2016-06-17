.class public abstract Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;
.super Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;
.source "NetworkListAsyncloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wandoujia/mvc/BaseModel;",
        ">",
        "Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;"
    }
.end annotation


# instance fields
.field public a:Lcom/wandoujia/p4/views/ContentListView;

.field public b:Lcom/wandoujia/p4/views/FetchMoreFooterView;

.field public c:Leuu;

.field public d:Leun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leun",
            "<TM;>;"
        }
    .end annotation
.end field

.field private e:Lfst;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfst",
            "<TM;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Landroid/os/Parcelable;

.field private i:Lftn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment",
            "<TM;>.ftn;"
        }
    .end annotation
.end field

.field private j:Lfsr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsr",
            "<TM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;-><init>()V

    .line 66
    new-instance v0, Lfti;

    invoke-direct {v0, p0}, Lfti;-><init>(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->j:Lfsr;

    .line 547
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->needToLoadData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->i()Lfst;

    move-result-object v0

    invoke-virtual {v0}, Lfst;->b()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e()Z

    move-result v0

    return v0
.end method

.method private static d()V
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Lbth;->b()Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lbth;->b()Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->b()V

    .line 431
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 510
    instance-of v3, v0, Lcom/wandoujia/p4/fragment/TabHostFragment;

    if-eqz v3, :cond_1

    .line 511
    check-cast v0, Lcom/wandoujia/p4/fragment/TabHostFragment;

    .line 512
    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/fragment/TabHostFragment;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 517
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 512
    goto :goto_0

    :cond_1
    move v0, v1

    .line 514
    goto :goto_0

    :cond_2
    move v0, v2

    .line 517
    goto :goto_0
.end method

.method private f()Lftn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment",
            "<TM;>.ftn;"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->i:Lftn;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lftn;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/JupiterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lftn;-><init>(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->i:Lftn;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->i:Lftn;

    return-object v0
.end method

.method public static o()Z
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic p()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/wandoujia/p4/views/ContentListView;
    .locals 1
    .parameter

    .prologue
    .line 379
    const v0, 0x7f0c00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ContentListView;

    .line 381
    return-object v0
.end method

.method public abstract a()Lfsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<TM;>;"
        }
    .end annotation
.end method

.method public a(IILfss;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 260
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d()V

    .line 264
    invoke-virtual {p3}, Lfss;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    if-nez p1, :cond_0

    .line 266
    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p3, Lfss;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    iget-object v2, p3, Lfss;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Leuu;->a(Landroid/view/ViewGroup;J)V

    .line 271
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->f()Lftn;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESHING:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lftn;->a(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;J)V

    .line 272
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->f()Lftn;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESH_IS_SLOW:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lftn;->a(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;J)V

    .line 301
    :cond_0
    :goto_0
    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b:Lcom/wandoujia/p4/views/FetchMoreFooterView;

    invoke-virtual {v0, v1}, Leuu;->b(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b:Lcom/wandoujia/p4/views/FetchMoreFooterView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->a()V

    .line 304
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d:Leun;

    iget-object v0, v0, Leun;->a:Ljava/util/List;

    iget-object v1, p3, Lfss;->a:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/wandoujia/base/utils/CollectionUtils;->replaceFromPosition(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->f:Ljava/util/List;

    .line 306
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d:Leun;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Leun;->a(Ljava/util/List;)V

    .line 316
    iput-object v4, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->f:Ljava/util/List;

    .line 318
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    invoke-virtual {v0}, Leuu;->notifyDataSetChanged()V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->h:Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->h:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ContentListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 322
    iput-object v4, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->h:Landroid/os/Parcelable;

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lfss;->a()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ContentListView;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ContentListView;->setSelection(I)V

    .line 330
    :cond_3
    return-void

    .line 277
    :cond_4
    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    if-nez p1, :cond_5

    .line 279
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c()V

    goto :goto_0

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b:Lcom/wandoujia/p4/views/FetchMoreFooterView;

    invoke-virtual {v0, v1}, Leuu;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b:Lcom/wandoujia/p4/views/FetchMoreFooterView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->b()V

    goto :goto_0

    .line 284
    :cond_6
    if-nez p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    invoke-virtual {v0}, Leuu;->a()V

    .line 286
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d:Leun;

    invoke-virtual {v0}, Leun;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d:Leun;

    invoke-virtual {v0}, Leun;->b()V

    .line 288
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    invoke-virtual {v0}, Leuu;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->f()Lftn;

    move-result-object v0

    iget-boolean v0, v0, Lftn;->b:Z

    if-eqz v0, :cond_7

    .line 291
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->f()Lftn;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESH_SUCCESS:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    invoke-virtual {v0, v1}, Lftn;->a(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;)V

    goto/16 :goto_0

    .line 293
    :cond_7
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->f()Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->b()V

    goto/16 :goto_0
.end method

.method public a(ILjava/util/concurrent/ExecutionException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d()V

    .line 336
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lftk;

    invoke-direct {v1, p0}, Lftk;-><init>(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)V

    const v2, 0x7f0e059b

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ldxa;->a(Landroid/content/Context;Lbtk;Ljava/lang/String;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 337
    :cond_0
    if-nez p1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    invoke-virtual {v0}, Leuu;->a()V

    .line 339
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->f()Lftn;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESH_FAILED:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    invoke-virtual {v0, v1}, Lftn;->a(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;)V

    .line 341
    :cond_1
    return-void
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 181
    iget v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->g:I

    if-eq v0, p1, :cond_1

    invoke-super {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->needToLoadData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 182
    :goto_0
    if-eqz v0, :cond_0

    .line 183
    iput p1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->g:I

    .line 185
    :cond_0
    return v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b()Leun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<TM;>;"
        }
    .end annotation
.end method

.method public abstract c()V
.end method

.method public g()V
    .locals 2

    .prologue
    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->g:I

    .line 447
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e:Lfst;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e:Lfst;

    iget-object v0, v0, Lfst;->b:Lfsi;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e:Lfst;

    iget-object v0, v0, Lfst;->b:Lfsi;

    invoke-virtual {v0}, Lfsi;->b()V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    new-instance v1, Lftl;

    invoke-direct {v1, p0}, Lftl;-><init>(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ContentListView;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_1
    return-void
.end method

.method public getLayoutResId()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f030011

    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->i:Lftn;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->i:Lftn;

    invoke-virtual {v0}, Lftn;->b()V

    .line 99
    :cond_0
    return-void
.end method

.method public final i()Lfst;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfst",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e:Lfst;

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->l()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->m()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lfst;

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a()Lfsi;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->j:Lfsr;

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->l()I

    move-result v3

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->m()I

    move-result v4

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->n()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lfst;-><init>(Lfsi;Lfsr;IIZ)V

    :goto_0
    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e:Lfst;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e:Lfst;

    return-object v0

    .line 345
    :cond_1
    new-instance v0, Lfst;

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a()Lfsi;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->j:Lfsr;

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->n()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lfst;-><init>(Lfsi;Lfsr;Z)V

    goto :goto_0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e:Lfst;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e:Lfst;

    iput-object v1, v0, Lfst;->c:Lfsr;

    .line 353
    iput-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->e:Lfst;

    .line 355
    :cond_0
    return-void
.end method

.method public final k()Leun;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d:Leun;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 434
    const/16 v0, 0xf

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 438
    const/16 v0, 0xf

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    const-string v0, "phoenix.intent.extra.LIST_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->h:Landroid/os/Parcelable;

    .line 85
    :cond_0
    return-void
.end method

.method public onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(Landroid/view/View;)Lcom/wandoujia/p4/views/ContentListView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    .line 109
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-static {v0}, Lg;->a(Landroid/widget/AbsListView;)V

    .line 110
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-static {v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b:Lcom/wandoujia/p4/views/FetchMoreFooterView;

    .line 111
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b()Leun;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d:Leun;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d:Leun;

    new-instance v2, Leuu;

    invoke-direct {v2, v1}, Leuu;-><init>(Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ContentListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    new-instance v1, Lftj;

    invoke-direct {v1, p0}, Lftj;-><init>(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ContentListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 177
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->onPause()V

    .line 227
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->h()V

    .line 228
    return-void
.end method

.method public onPrepareLoading()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->g:I

    .line 199
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "phoenix.intent.extra.LIST_STATE"

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/views/ContentListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public onStartLoading()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->isInflated:Z

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->i()Lfst;

    move-result-object v0

    invoke-virtual {v0}, Lfst;->a()V

    goto :goto_0
.end method
